import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/saveable_models/saveable_models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
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
        statesStatusesCubit = context.read();
  final BuildContext context;
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
        diDto.statesStatusesCubit.stream.listen(onLevelPartLoaded);
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
    final GameModel gameModel,
  ) async {
    final liveGame = GlobalGameBlocState.fromModel(gameModel);
    emit(liveGame);
    if (liveGame.currentLevelId.isNotEmpty && gameModel.levels.isNotEmpty) {
      final levelModel = gameModel.levels[liveGame.currentLevelId];
      if (levelModel == null) {
        throw ArgumentError.value(
          levelModel,
          'current level ${liveGame.currentLevelId} is not '
          'presented in the game model.',
        );
      }
      onInitGlobalGameLevel(
        InitGlobalGameLevelEvent(levelModel: levelModel, isNewStart: false),
      );
    }
    await diDto.mechanics.worldTime.onLoad();
    diDto.tutorialBloc.add(
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
      throw UnimplementedError();
    } else {
      onInitGlobalGameLevel(InitGlobalGameLevelEvent(levelModel: levelModel));
      unawaited(onStartPlayingLevel(const StartPlayingLevelEvent()));
    }
  }

  /// This completer exists because we need to wait until the game will be
  /// loaded completely.
  /// The inital game level load function is [onInitGlobalGameLevel]
  ///
  /// The [onLevelPartLoaded] function is completes this completer.
  ///
  /// The [onStartPlayingLevel] is waiting for the completer future
  Completer? _globalLevelLoadCompleter;

  void onInitGlobalGameLevel(
    final InitGlobalGameLevelEvent event,
  ) {
    _globalLevelLoadCompleter = Completer();
    final levelModel = event.levelModel;
    GlobalGameBlocState updatedState = _getResetedLevelLoad();
    if (event.isNewStart) {
      updatedState = updatedState.copyWith(
        currentLevelModel: levelModel,
      );
      emit(updatedState);
    }
    diDto
      ..levelBloc.onInitLevel(LevelBlocEventInit(levelModel: levelModel))
      ..levelPlayersBloc.onInitLevelPlayers(
        InitLevelPlayersEvent(
          playersModel: levelModel.players,
          charactersModel: levelModel.characters,
        ),
      );
  }

  GlobalGameBlocState _getResetedLevelLoad() {
    diDto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    return state;
  }

  void onLevelPartLoaded(
    final StatesStatusesCubitState statesStatuses,
  ) {
    switch (statesStatuses.levelStateStatus) {
      case LevelStateStatus.paused || LevelStateStatus.playing:
        _globalLevelLoadCompleter!.complete();
        emit(
          state.copyWith(currentLevelId: diDto.levelBloc.state.id),
        );
      case LevelStateStatus.loading:
        break;
    }
  }

  Future<void> onStartPlayingLevel(
    final StartPlayingLevelEvent event,
  ) async {
    await _globalLevelLoadCompleter!.future;
    diDto.mechanics.worldTime.resume();
    final tutorialEvent = StartTutorialEvent(
      tutorialName: TutorialCollectionsName.levelIntroduction,
      shouldContinueIfPlayed: false,
      shouldStartFromBeginning: event.shouldRestartTutorial,
    );
    diDto.tutorialBloc.add(tutorialEvent);
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

  void onCharacterCollision(
    final CharacterCollisionEvent event,
  ) {
    diDto.mechanics.worldTime.pause();
  }

  void _shareNewDateTime(final GlobalGameBlocState newState) {
    diDto.levelBloc.onConsumeTickEvent(
      LevelBlocEventConsumeTick(timeDeltaInSeconds: newState.dateTimeDelta),
    );
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
    final levels = {...state.levels}..[currentLevelId] =
        _getCurrentLevelModel();
    final updatedState = state.copyWith(
      levels: levels,
    );
    emit(updatedState);
    await _saveGame(liveState: updatedState);
  }

  GameModel _getGameModel({required final GlobalGameBlocState liveState}) {
    final tutorialProgress = diDto.tutorialBloc.getLiveProgress();

    return GameModel(
      id: liveState.id,
      currentLevel: liveState.currentLevelModel,
      currentLevelId: liveState.currentLevelId,
      templateLevels: liveState.templateLevels,
      dateTime: liveState.dateTime,
      tutorialProgress: tutorialProgress,
      lastDateTime: liveState.lastDateTime,
      levels: liveState.levels,
      playersCharacters: liveState.playersCharacters,
      playersCollection: liveState.playersCollection,
    );
  }

  LevelModel _getCurrentLevelModel() {
    final liveLevelState = diDto.levelBloc.state;
    final livePlayersState = diDto.levelPlayersBloc.state;

    return LevelModel(
      name: liveLevelState.name,
      id: liveLevelState.id,
      currentWord: liveLevelState.currentWord,
      latestWord: liveLevelState.latestWord,
      words: liveLevelState.words,
      characters: LevelCharactersModel(
        playerCharacter: livePlayersState.playerCharacter,
      ),
      players: LevelPlayersModel(
        currentPlayerId: livePlayersState.currentPlayerId,
        players: livePlayersState.players,
      ),
    );
  }

  TemplateLevelModel? getTemplateLevelById({
    required final CanvasDataModelId id,
  }) {
    if (id.isEmpty) return null;

    // TODO(arenukvern): handle null error
    return state.templateLevels
        .firstWhere((final level) => level.canvasData.id == id);
  }
}
