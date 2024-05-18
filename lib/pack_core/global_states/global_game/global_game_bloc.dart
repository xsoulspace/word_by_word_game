import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug_cubit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboards.dart';
import 'package:word_by_word_game/subgames/quick_game/tutorial/tutorial_listener.dart';

part 'global_game_bloc.freezed.dart';
part 'global_game_events.dart';
part 'global_game_states.dart';

class GlobalGameBlocDiDto {
  GlobalGameBlocDiDto.use(final BuildContext context)
      : mechanics = context.read(),
        levelBloc = context.read(),
        levelPlayersBloc = context.read(),
        tutorialBloc = context.read(),
        services = context.read(),
        statesStatusesCubit = context.read(),
        canvasCubit = context.read(),
        technologiesCubit = context.read(),
        weatherCubit = context.read(),
        wbwDictionary = context.read(),
        uiKeyboardController = context.read(),
        onlineStatusService = context.read(),
        levelFeaturesNotifier = context.read(),
        debugCubit = context.read();
  final DebugCubit debugCubit;
  final OnlineStatusService onlineStatusService;
  final WbwDictionary wbwDictionary;
  final WeatherCubit weatherCubit;
  final UiKeyboardController uiKeyboardController;
  final TechnologiesCubit technologiesCubit;
  final LevelFeaturesNotifier levelFeaturesNotifier;
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
      : dto = GlobalGameBlocDiDto.use(context),
        super(const GlobalGameBlocState()) {
    _tutorialEventsListener = GameTutorialEventListener(read: context.read);
    dto.mechanics.worldTime.addListener(onWorldTick);
    _statesStatusesCubitSubscription =
        dto.statesStatusesCubit.stream.listen(_onStatusChanged);
  }
  final _log = Logger();
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
    _log.close();
    return super.close();
  }

  Future<CanvasDataModelId> onInitGlobalGame(
    final GameSaveModel gameModel,
  ) async {
    final liveGame = GlobalGameBlocState.fromModel(gameModel);
    emit(liveGame);
    final allCanvasData =
        await dto.services.levelsRepository.getDefaultTemplateLevels();
    emit(liveGame.copyWith(allCanvasData: allCanvasData));

    LevelModel? level;
    if (liveGame.currentLevelId.isNotEmpty &&
        gameModel.savedLevels.isNotEmpty) {
      level = gameModel.savedLevels[liveGame.currentLevelId];
    }
    final isNewStart = level == null;

    /// add level data to display something for start screen
    level ??= _createEmptyLevel();

    /// resume latest game
    await onInitGlobalGameLevel(
      InitGlobalGameLevelEvent(
        levelModel: level,
        isNewStart: isNewStart,
        playerStartPoint: isNewStart
            ? PlayerStartPointType.fromSpawnPoint
            : level.playerStartPoint,
        windDirection: level.wind.windDirection,
      ),
    );

    await dto.mechanics.worldTime.onLoad();
    dto.tutorialBloc.onLoadTutorialsProgress(
      LoadTutorialsProgressEvent(progress: gameModel.tutorialProgress),
    );
    if (_tutorialEventsListener != null) {
      dto.tutorialBloc.notifier.addListener(_tutorialEventsListener!);
    }

    return level.id;
  }

  LevelModel _createEmptyLevel() => createLevel(
        wordsLanguage: Languages.en,
        canvasDataId: state.allCanvasData.values
            .firstWhere((final e) => e.tilesetType == TilesetType.whiteBlack)
            .id,
        characterId: state.playersCharacters.first.id,
        playersIds: [],
        featuresSettings: LevelFeaturesSettingsModel.allEnabled,
      );

  LevelModel createLevel({
    required final CanvasDataModelId canvasDataId,
    required final List<PlayerProfileModelId> playersIds,
    required final Gid characterId,
    required final LevelFeaturesSettingsModel featuresSettings,
    required final Languages wordsLanguage,
  }) {
    final liveState = state;
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
    final levelCharecters = liveState.playersCharacters.firstWhere(
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

    GlobalGameBlocState updatedState = state;
    // _log
    //   ..d('level isNewStart ${event.isNewStart}')
    //   ..d('level id ${level.id}');
    if (event.isNewStart) {
      dto.weatherCubit.regenerateWeather();
    } else {
      dto.weatherCubit.loadWeather(
        weathers: level.weathers,
        wind: level.wind,
      );
    }
    // load canvasCubit with graphics, but no more then it
    CanvasDataModel? newCanvasData = getCanvasDataById(id: level.id);

    /// level should be reloaded according to the canvas data
    if (newCanvasData == null) {
      newCanvasData = state.allCanvasData.values.first;
      level = level.copyWith(canvasDataId: newCanvasData.id);
    }
    if (event.isNewStart) {
      if (level.featuresSettings.isAdvancedGame) {
        level = level.copyWith.characters.playerCharacter(
          balloonParams: BalloonLiftParamsModel.initial,
        );
      } else {
        level = level.copyWith.characters.playerCharacter(
          balloonParams: BalloonLiftParamsModel.initial.copyWith(
            powerUsage: dto.mechanics.engine.maxPowerUsage,
          ),
        );
      }
      level = level.copyWith.characters.playerCharacter(
        balloonPowers: BalloonLiftPowersModel.initial,
      );
      level = level.copyWith.players(
        players: level.players.players
            .map(
              (final e) => e.copyWith(
                /// this amount of score player will use
                /// to fix word or get a suggestion
                highscore: PlayerHighscoreModel.levelPreset,
              ),
            )
            .toList(),
      );

      /// resetting other properties
      level = level.copyWith(
        currentWord: const CurrentWordModel(),
        latestWord: '',
        words: {},
        technologyTreeProgress: TechnologyTreeProgressModel.empty,
      );
    }
    dto.levelFeaturesNotifier.reloadState(level.featuresSettings);
    updatedState = updatedState.copyWith(
      currentLevelModel: level,
      currentLevelId: level.id,
    );
    emit(updatedState);

    /// preloading resources which should be the same for all levels
    await dto.canvasCubit.prepareTilesetForLevel(level: level);

    // _log.d('newCanvasData.playerObject: ${newCanvasData.playerObject}');
    if (event.isNewStart) {
      // noop
    } else {
      final character = level.characters.playerCharacter;
      switch (level.playerStartPoint) {
        case PlayerStartPointType.fromSpawnPoint:
          newCanvasData = newCanvasData.copyWith.playerObject(
            distanceToOrigin: character.distanceToOrigin,
          );

        case PlayerStartPointType.fromSavePoint:
          throw UnimplementedError();
        case PlayerStartPointType.fromSamePlace:
      }
    }
    await dto.canvasCubit.loadCanvasData(canvasData: newCanvasData);

    dto
      ..technologiesCubit.reloadState(
        technologies: newCanvasData.technologies
            .toMap(toKey: (final i) => i.id, toValue: (final v) => v),
        state: TechnologiesCubitState(
          progress: level.technologyTreeProgress,
        ),
      )
      ..uiKeyboardController
          .onChangeLanguage(level.wordsLanguage.toKeyboardLanguage())
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
      case LevelStateStatus.levelReady:
        final globalLevelLoadCompleter = _globalLevelLoadCompleter;
        if (globalLevelLoadCompleter != null &&
            !globalLevelLoadCompleter.isCompleted) {
          globalLevelLoadCompleter.complete();
        }
      case LevelStateStatus.paused ||
            LevelStateStatus.playing ||
            LevelStateStatus.loading:
        break;
    }

    switch (statesStatuses.levelStateStatus) {
      case LevelStateStatus.levelReady ||
            LevelStateStatus.paused ||
            LevelStateStatus.loading:
        dto.mechanics.worldTime.pause();
      case LevelStateStatus.playing:
        dto.mechanics.worldTime.resume();
    }
  }

  Future<void> onRemoveLevelSave(final CanvasDataModelId canvasDataId) async {
    var newState = state;
    if (state.currentLevelId == canvasDataId) {
      newState = state.copyWith(
        currentLevelModel: null,
      );
    }
    newState = state.copyWith(
      savedLevels: {...state.savedLevels}..remove(canvasDataId),
    );
    emit(newState);
    await _saveGame();
  }

  /// Before calling this method, [onInitGlobalGameLevel] must be called
  Future<void> onStartPlayingLevel(
    final StartPlayingLevelEvent event,
  ) async {
    dto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    await _globalLevelLoadCompleter!.future;
    Future<void> runCache() async {
      final shouldUseServer = dto.wbwDictionary.repository.isAllowedToUseRemote;
      if (!shouldUseServer) await dto.wbwDictionary.loadAndCache();
    }

    if (DeviceRuntimeType.isWeb) {
      if (dto.levelBloc.featuresSettings.isAdvancedGame) {
        await runCache();
      }
    } else {
      await runCache();
    }
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

  Future<void> onLevelEnd({
    required final EndLevelEvent event,
    required final bool isPaused,
  }) async {
    /// saving level results
    final initGameEvent = await _handleLevelEnd(event);

    /// restarting current level
    await onInitGlobalGameLevel(initGameEvent);
    if (!isPaused) {
      unawaited(
        onStartPlayingLevel(
          const StartPlayingLevelEvent(shouldRestartTutorial: false),
        ),
      );
    }
  }

  Future<InitGlobalGameLevelEvent> _handleLevelEnd(
    final EndLevelEvent event,
  ) async {
    final level = _getCurrentLevelModel();
    final players = level.players;
    final updatedPlayers = [...state.playersCollection];
    for (final player in players.players) {
      PlayerProfileModel updatedPlayer =
          dto.mechanics.score.countPlayerLevelHighscore(
        player: player,
        levelId: level.id,
        isLevelPassed: event.isPassed,
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
    );
    emit(updatedState);
    await _saveGame(liveState: updatedState);
    // TODO(arenukvern): add save points
    // ignore: unused_local_variable
    const isPlayerHasSavePoints = false;
    final initEvent = InitGlobalGameLevelEvent(
      levelModel: level,
      isNewStart: false,
      windDirection: () {
        if (level.featuresSettings.isWindDirectionChangeEnabled) {
          return level.wind.windDirection;
        } else {
          return WindDirection.right;
        }
      }(),
      playerStartPoint: () {
        // TODO(arenukvern): add save points
        // ignore: dead_code
        if (isPlayerHasSavePoints &&
            // ignore: dead_code
            level.featuresSettings.isWindDirectionChangeEnabled) {
          return PlayerStartPointType.fromSavePoint;
        }

        return PlayerStartPointType.fromSpawnPoint;
      }(),
    );
    return initEvent;
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
      currentLevelModel: _getCurrentLevelModel(),
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
      wordsLanguage: levelState.wordsLanguage,
      wind: weatherState.wind,
      currentWord: levelState.currentWord,
      latestWord: levelState.latestWord,
      words: levelState.words,
      playerStartPoint: PlayerStartPointType.fromSamePlace,
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
