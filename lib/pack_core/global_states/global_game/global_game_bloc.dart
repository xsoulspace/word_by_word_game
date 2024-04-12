import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug_cubit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/tutorial/tutorial_listener.dart';

part 'global_game_bloc.freezed.dart';
part 'global_game_events.dart';
part 'global_game_states.dart';

class GlobalGameBlocDiDto {
  GlobalGameBlocDiDto.use({required this.context})
      : mechanics = context.read(),
        levelBloc = context.read(),
        levelPlayersBloc = context.read(),
        tutorialBloc = context.read(),
        services = context.read(),
        statesStatusesCubit = context.read(),
        canvasCubit = context.read(),
        technologiesCubit = context.read(),
        weatherCubit = context.read(),
        debugCubit = context.read();
  final DebugCubit debugCubit;
  final WeatherCubit weatherCubit;
  final TechnologiesCubit technologiesCubit;
  final BuildContext context;
  final CanvasCubit canvasCubit;
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
  final TutorialBloc tutorialBloc;
  final ServicesCollection services;
}

class GlobalGameBloc extends Cubit<GlobalGameBlocState> {
  GlobalGameBloc(final BuildContext context)
      : dto = GlobalGameBlocDiDto.use(context: context),
        super(const GlobalGameBlocState()) {
    _tutorialEventsListener = GameTutorialEventListener(read: dto.context.read);
    dto.mechanics.worldTime.addListener(onWorldTick);
    _statesStatusesCubitSubscription =
        dto.statesStatusesCubit.stream.listen(_onStatusChanged);
  }
  final GlobalGameBlocDiDto dto;
  GameTutorialEventListener? _tutorialEventsListener;
  StreamSubscription<StatesStatusesCubitState>?
      _statesStatusesCubitSubscription;

  @override
  Future<void> close() {
    _statesStatusesCubitSubscription?.cancel();
    dto.mechanics.worldTime.removeListener(onWorldTick);
    if (_tutorialEventsListener != null) {
      dto.tutorialBloc.notifier.removeListener(_tutorialEventsListener!);
    }

    return super.close();
  }

  Future<void> onInitGlobalGame(
    final GameSaveModel gameModel,
  ) async {
    final liveGame = GlobalGameBlocState.fromModel(gameModel);
    emit(liveGame);
    final allLevels =
        await dto.services.levelsRepository.getDefaultTemplateLevels();
    emit(liveGame.copyWith(allCanvasData: allLevels));

    LevelModel? level;
    if (liveGame.currentLevelId.isNotEmpty &&
        gameModel.savedLevels.isNotEmpty) {
      level = gameModel.savedLevels[liveGame.currentLevelId];
    }
    final isNewStart = level == null;

    /// add level data to display something for start screen
    level ??= createLevel(
      wordsLanguage: Languages.en,
      canvasDataId: allLevels.values
          .firstWhere((final e) => e.tilesetType == TilesetType.whiteBlack)
          .id,
      characterId: liveGame.playersCharacters.first.id,
      playersIds: [],
      featuresSettings: LevelFeaturesSettingsModel.allEnabled,
    );

    /// resume latest game
    await onInitGlobalGameLevel(
      InitGlobalGameLevelEvent(levelModel: level, isNewStart: isNewStart),
    );

    await dto.mechanics.worldTime.onLoad();
    dto.tutorialBloc.onLoadTutorialsProgress(
      LoadTutorialsProgressEvent(progress: gameModel.tutorialProgress),
    );
    if (_tutorialEventsListener != null) {
      dto.tutorialBloc.notifier.addListener(_tutorialEventsListener!);
    }
  }

  LevelModel createLevel({
    required final CanvasDataModelId canvasDataId,
    required final List<PlayerProfileModelId> playersIds,
    required final Gid characterId,
    required final LevelFeaturesSettingsModel featuresSettings,
    required final Languages wordsLanguage,
  }) {
    final liveState = state;
    final charactersCollection = liveState.playersCharacters;
    final playersCollection = liveState.playersCollection;
    final levelPlayers = playersIds
        .map(
          (final id) => playersCollection.firstWhereOrNull(
            (final player) => player.id == id,
          ),
        )
        .nonNulls
        .toList();

    /// adding empty player just show in start screen
    if (levelPlayers.isEmpty) {
      levelPlayers.add(PlayerProfileModel.empty);
    }
    final levelCharecters = charactersCollection.firstWhere(
      (final character) => character.id == characterId,
    );

    return LevelModel(
      characters: LevelCharactersModel(
        playerCharacter: levelCharecters,
      ),
      wordsLanguage: wordsLanguage,
      featuresSettings: featuresSettings,
      players: LevelPlayersModel(
        currentPlayerId: levelPlayers.first.id,
        players: levelPlayers
            .map(
              (final e) => e.copyWith(
                /// this amount of score player will use
                /// to fix word or get a suggestion
                highscore: PlayerHighscoreModel.levelPreset,
              ),
            )
            .toList(),
      ),
      canvasDataId: canvasDataId,
    );
  }

  Future<void> onRestartLevel(final EndLevelEvent event) async {
    /// saving current level
    final levelModel = state.currentLevelModel;

    /// saving level results
    await onLevelEnd(event);

    /// restarting current level
    if (levelModel == null) {
      // TODO(arenuvkern): description
      throw UnimplementedError('onRestartLevel $levelModel');
    } else {
      await onInitGlobalGameLevel(
        InitGlobalGameLevelEvent(levelModel: levelModel),
      );
      unawaited(
        onStartPlayingLevel(
          const StartPlayingLevelEvent(
            shouldRestartTutorial: false,
          ),
        ),
      );
    }
  }

  /// This completer exists because we need to wait until the game will be
  /// loaded completely.
  /// The inital game level load function is [onInitGlobalGameLevel]
  ///
  /// The [_onStatusChanged] function is completes this completer.
  ///
  /// The [onStartPlayingLevel] is waiting for the completer future
  Completer? _globalLevelLoadCompleter;

  Future<void> onInitGlobalGameLevel(
    final InitGlobalGameLevelEvent event,
  ) async {
    dto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    _globalLevelLoadCompleter = Completer();
    LevelModel level = event.levelModel;

    dto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    GlobalGameBlocState updatedState = state;

    if (event.isNewStart) {
      dto.weatherCubit.regenerateWeather();
      updatedState = updatedState.copyWith(
        currentLevelModel: level,
        currentLevelId: level.id,
      );
      emit(updatedState);
    } else {
      dto.weatherCubit.loadWeather(
        weathers: level.weathers,
        wind: level.wind,
      );
    }

    /// preloading resources which should be the same for all levels
    await dto.canvasCubit.prepareTilesetForLevel(level: level);

    // load canvasCubit with graphics, but no more then it
    CanvasDataModel? newCanvasData = state.allCanvasData[level.id];

    /// level should be reloaded according to the canvas data
    if (newCanvasData == null) {
      newCanvasData = state.allCanvasData.values.first;
      level = level.copyWith(
        canvasDataId: newCanvasData.id,
      );
    }
    if (!event.isNewStart) {
      final character = level.characters.playerCharacter;
      newCanvasData = newCanvasData.copyWith(
        playerObject: newCanvasData.playerObject.copyWith(
          distanceToOrigin: character.distanceToOrigin,
        ),
      );
    }
    await dto.canvasCubit.loadCanvasData(canvasData: newCanvasData);

    dto.technologiesCubit.reloadState(
      technologies: newCanvasData.technologies
          .toMap(toKey: (final i) => i.id, toValue: (final v) => v),
      state: TechnologiesCubitState(
        progress: level.technologyTreeProgress,
      ),
    );

    dto
      ..levelBloc.onInitLevel(LevelBlocEventInit(levelModel: level))
      ..levelPlayersBloc.onInitLevelPlayers(
        InitLevelPlayersEvent(
          playersModel: level.players,
          charactersModel: level.characters,
        ),
      );
  }

  Future<void> _onStatusChanged(
    final StatesStatusesCubitState statesStatuses,
  ) async {
    switch (statesStatuses.levelStateStatus) {
      case LevelStateStatus.paused || LevelStateStatus.playing:
        final globalLevelLoadCompleter = _globalLevelLoadCompleter;
        if (globalLevelLoadCompleter != null &&
            !globalLevelLoadCompleter.isCompleted) {
          globalLevelLoadCompleter.complete();
          emit(
            state.copyWith(currentLevelId: dto.levelBloc.state.id),
          );
        }
      case LevelStateStatus.loading:
        break;
    }

    switch (statesStatuses.levelStateStatus) {
      case LevelStateStatus.paused || LevelStateStatus.loading:
        dto.mechanics.worldTime.pause();
      case LevelStateStatus.playing:
        dto.mechanics.worldTime.resume();
    }
  }

  /// Before calling this method, [onInitGlobalGameLevel] must be called
  Future<void> onStartPlayingLevel(
    final StartPlayingLevelEvent event,
  ) async {
    await _globalLevelLoadCompleter!.future;
    dto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.playing,
    );

    /// added to be sure that all effects will be launched after
    /// LevelStateStatus.playing is changed.
    WidgetsBinding.instance.addPostFrameCallback((final timeStamp) {
      final tutorialEvent = StartTutorialEvent(
        tutorialName: TutorialCollectionsName.levelIntroduction,
        shouldContinueIfPlayed: false,
        shouldStartFromBeginning: event.shouldRestartTutorial,
      );
      dto.tutorialBloc.onStartTutorial(tutorialEvent);
    });
  }

  void onWorldTick(
    final WorldTimeMechanics worldTimeManager,
  ) {
    final newDateTime = worldTimeManager.dateTime;
    final lastDateTime = state.dateTime;
    final dateTimeDelta = newDateTime.second - lastDateTime.second;
    final newState = state.copyWith(
      lastDateTime: lastDateTime,
      dateTime: newDateTime,
      dateTimeDelta: dateTimeDelta,
    );
    emit(newState);
    _shareNewDateTime(newState);
  }

  Future<void> onLevelEnd(
    final EndLevelEvent event,
  ) async {
    final currentLevelModel = _getCurrentLevelModel();
    final players = currentLevelModel.players;
    final updatedPlayers = [...state.playersCollection];
    for (final player in players.players) {
      PlayerProfileModel updatedPlayer =
          dto.mechanics.score.countPlayerLevelHighscore(
        player: player,
        levelId: currentLevelModel.id,
        isLevelFinished: event.isWon,
        maxDistance: event.maxDistance,
      );
      final index = updatedPlayers.indexWhere(
        (final e) => e.id == updatedPlayer.id,
      );
      if (index < 0) {
        updatedPlayers.add(updatedPlayer);
      } else {
        final globalProfile = updatedPlayers[index];
        updatedPlayer = dto.mechanics.score.mergePlayerProfiles(
          globalProfile: globalProfile,
          levelProfile: updatedPlayer,
        );
        updatedPlayers[index] = updatedPlayer;
      }
    }
    final updatedState = state.copyWith(
      playersCollection: updatedPlayers,
      currentLevelId: CanvasDataModelId.empty,
      currentLevelModel: null,
    );
    emit(updatedState);
    await _saveGame(liveState: updatedState);
  }

  void _shareNewDateTime(final GlobalGameBlocState newState) {
    dto.levelBloc.onConsumeTickEvent(
      LevelBlocEventConsumeTick(timeDeltaInSeconds: newState.dateTimeDelta),
    );
    for (final consumable in <WorldTickConsumable>[
      dto.weatherCubit,
      dto.technologiesCubit,
    ]) {
      consumable.onConsumeTickEvent();
    }
  }

  Future<void> onDeletePlayerProfile(
    final DeletePlayerProfileEvent event,
  ) async {
    final profile = event.profile;
    final updateState = state.copyWith(
      playersCollection: [...state.playersCollection]
        ..removeWhere((final player) => player.id == profile.id),
    );
    emit(updateState);
    await _saveGame();
  }

  Future<void> onCreatePlayerProfile(
    final CreatePlayerProfileEvent event,
  ) async {
    final profile = event.profile;
    final updateState = state.copyWith(
      playersCollection: [...state.playersCollection, profile],
    );
    emit(updateState);
    await _saveGame();
  }

  /// before to save game, make sure to add [SaveCurrentLevelEvent]
  Future<void> onSaveGame(
    final SaveGameEvent event,
  ) async =>
      _saveGame();

  Future<void> _saveGame({
    final GlobalGameBlocState? liveState,
  }) async {
    final resolvedLiveState = liveState ?? state;
    final gameModel = _getGameModel(liveState: resolvedLiveState);
    await dto.services.gameRepository.saveGame(game: gameModel);
  }

  Future<void> onSaveCurrentLevel(
    final SaveCurrentLevelEvent event,
  ) async {
    final currentLevelId = state.currentLevelId;
    final savedLevels = {...state.savedLevels}..[currentLevelId] =
        _getCurrentLevelModel();
    final updatedState = state.copyWith(
      savedLevels: savedLevels,
    );
    emit(updatedState);
    await _saveGame(liveState: updatedState);
  }

  GameSaveModel _getGameModel({required final GlobalGameBlocState liveState}) {
    final tutorialProgress = dto.tutorialBloc.getLiveProgress();

    return GameSaveModel(
      id: liveState.id,
      savedLevels: liveState.savedLevels,
      currentLevel: liveState.currentLevelModel,
      currentLevelId: liveState.currentLevelId,
      tutorialProgress: tutorialProgress,
      playersCharacters: liveState.playersCharacters,
      playersCollection: liveState.playersCollection,
    );
  }

  LevelModel _getCurrentLevelModel() {
    final levelState = dto.levelBloc.state;
    final playersState = dto.levelPlayersBloc.state;
    final weatherState = dto.weatherCubit.state;
    final technologiesState = dto.technologiesCubit.state;
    final canvasCubitState = dto.canvasCubit.state;
    return LevelModel(
      weathers: weatherState.weathers,
      wind: weatherState.wind,
      currentWord: levelState.currentWord,
      latestWord: levelState.latestWord,
      words: levelState.words,
      characters: LevelCharactersModel(
        playerCharacter: playersState.playerCharacter,
      ),
      canvasDataId: levelState.id,
      players: LevelPlayersModel(
        currentPlayerId: playersState.currentPlayerId,
        players: playersState.players,
      ),
      dateTime: state.dateTime,
      lastDateTime: state.lastDateTime,
      featuresSettings: levelState.featuresSettings,
      technologyTreeProgress: technologiesState.progress,
      tilesetType: canvasCubitState.canvasData.tilesetType,
    );
  }

  CanvasDataModel? getCanvasDataById({
    required final CanvasDataModelId id,
  }) {
    if (id.isEmpty) return null;
    return state.allCanvasData[id];
  }
}

abstract interface class WorldTickConsumable {
  WorldTickConsumable._();
  void onConsumeTickEvent();
}
