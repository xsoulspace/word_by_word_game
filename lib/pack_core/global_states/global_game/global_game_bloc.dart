import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/saveable_models/saveable_models.dart';
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
        weatherCubit = context.read(),
        debugCubit = context.read();
  final DebugCubit debugCubit;
  final WeatherCubit weatherCubit;
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
  GlobalGameBloc({
    required this.diDto,
  }) : super(const GlobalGameBlocState()) {
    _tutorialEventsListener =
        GameTutorialEventListener(read: diDto.context.read);
    diDto.mechanics.worldTime.addListener(_addWorldTimeTick);
    _statesStatusesCubitSubscription =
        diDto.statesStatusesCubit.stream.listen(_onStatusChanged);
  }
  GameTutorialEventListener? _tutorialEventsListener;
  final GlobalGameBlocDiDto diDto;
  StreamSubscription<StatesStatusesCubitState>?
      _statesStatusesCubitSubscription;
  void _addWorldTimeTick(final WorldTimeMechanics time) {
    onWorldTick(time);
  }

  @override
  Future<void> close() {
    _statesStatusesCubitSubscription?.cancel();
    diDto.mechanics.worldTime.removeListener(_addWorldTimeTick);
    if (_tutorialEventsListener != null) {
      diDto.tutorialBloc.notifier.removeListener(_tutorialEventsListener!);
    }

    return super.close();
  }

  Future<void> onInitGlobalGame(
    final GameSaveModel gameModel,
  ) async {
    final liveGame = GlobalGameBlocState.fromModel(gameModel);
    emit(liveGame);
    final allLevels = await diDto.services.levelsRepository.getLevels();
    emit(liveGame.copyWith(allCanvasData: allLevels));

    LevelModel? levelModel;
    if (liveGame.currentLevelId.isNotEmpty &&
        gameModel.savedLevels.isNotEmpty) {
      levelModel = gameModel.savedLevels[liveGame.currentLevelId];
    }
    if (levelModel != null) {
      /// resume latest game
      onInitGlobalGameLevel(
        InitGlobalGameLevelEvent(levelModel: levelModel, isNewStart: false),
      );
    }

    await diDto.mechanics.worldTime.onLoad();
    diDto.tutorialBloc.onLoadTutorialsProgress(
      LoadTutorialsProgressEvent(progress: gameModel.tutorialProgress),
    );
    if (_tutorialEventsListener != null) {
      diDto.tutorialBloc.notifier.addListener(_tutorialEventsListener!);
    }
  }

  void onRestartLevel(
    final RestartLevelEvent event,
  ) {
    final levelModel = state.currentLevelModel;
    if (levelModel == null) {
      // TODO(arenuvkern): description
      throw UnimplementedError('onRestartLevel $levelModel');
    } else {
      onInitGlobalGameLevel(InitGlobalGameLevelEvent(levelModel: levelModel));
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

  void onInitGlobalGameLevel(
    final InitGlobalGameLevelEvent event,
  ) {
    diDto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    _globalLevelLoadCompleter = Completer();
    LevelModel level = event.levelModel;

    GlobalGameBlocState updatedState = _getResetedLevelLoad();
    if (event.isNewStart) {
      diDto.weatherCubit.regenerateWeather();
      updatedState = updatedState.copyWith(
        currentLevelModel: level,
      );
      emit(updatedState);
    } else {
      diDto.weatherCubit.loadWeather(
        weathers: level.weathers,
        wind: level.wind,
      );
    }

    CanvasDataModel? canvasData;
    canvasData = state.allCanvasData[level.id];

    /// level should be reloaded according to the canvas data
    if (canvasData == null) {
      canvasData = state.allCanvasData.values.first;
      level = level.copyWith(
        canvasDataId: canvasData.id,
      );
    }

    diDto
      ..canvasCubit.loadCanvasData(canvasData: canvasData)
      ..levelBloc.onInitLevel(LevelBlocEventInit(levelModel: level))
      ..levelPlayersBloc.onInitLevelPlayers(
        InitLevelPlayersEvent(
          playersModel: level.players,
          charactersModel: level.characters,
        ),
      );
  }

  GlobalGameBlocState _getResetedLevelLoad() {
    diDto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    return state;
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
            state.copyWith(currentLevelId: diDto.levelBloc.state.id),
          );
        }
      case LevelStateStatus.loading:
        break;
    }

    switch (statesStatuses.levelStateStatus) {
      case LevelStateStatus.paused || LevelStateStatus.loading:
        diDto.mechanics.worldTime.pause();
      case LevelStateStatus.playing:
        diDto.mechanics.worldTime.resume();
    }
  }

  /// Before calling this method, [onInitGlobalGameLevel] must be called
  Future<void> onStartPlayingLevel(
    final StartPlayingLevelEvent event,
  ) async {
    await _globalLevelLoadCompleter!.future;
    diDto.statesStatusesCubit.onChangeLevelStateStatus(
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
      diDto.tutorialBloc.onStartTutorial(tutorialEvent);
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
          diDto.mechanics.score.countPlayerLevelHighscore(
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
        updatedPlayer = diDto.mechanics.score.mergePlayerProfiles(
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
  }

  void _shareNewDateTime(final GlobalGameBlocState newState) {
    diDto.levelBloc.onConsumeTickEvent(
      LevelBlocEventConsumeTick(timeDeltaInSeconds: newState.dateTimeDelta),
    );
    diDto.weatherCubit.onConsumeTickEvent();
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
    await diDto.services.gameRepository.saveGame(game: gameModel);
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
    final tutorialProgress = diDto.tutorialBloc.getLiveProgress();

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
    final levelState = diDto.levelBloc.state;
    final playersState = diDto.levelPlayersBloc.state;
    final weatherState = diDto.weatherCubit.state;
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
    );
  }

  CanvasDataModel? getCanvasDataById({
    required final CanvasDataModelId id,
  }) {
    if (id.isEmpty) return null;
    return state.allCanvasData[id];
  }
}
