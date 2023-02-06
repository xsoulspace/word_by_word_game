import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/tutorial/tutorial_listener.dart';

part 'global_game_bloc.freezed.dart';
part 'global_game_bloc.g.dart';
part 'global_game_events.dart';
part 'global_game_states.dart';

class GlobalGameBlocDiDto {
  GlobalGameBlocDiDto.use(this.read)
      : mechanics = read(),
        levelBloc = read(),
        levelPlayersBloc = read(),
        resourcesBloc = read(),
        tutorialBloc = read(),
        services = read();
  final Locator read;
  final MechanicsCollection mechanics;
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
  final ResourcesBloc resourcesBloc;
  final TutorialBloc tutorialBloc;
  final ServicesCollection services;
}

class GlobalGameBloc extends Bloc<GameEvent, GlobalGameBlocState> {
  GlobalGameBloc({
    required this.diDto,
  }) : super(const EmptyGlobalGameBlocState()) {
    on<InitGlobalGameEvent>(_onInitGlobalGame);
    on<InitGlobalGameLevelEvent>(_onInitGlobalGameLevel);
    on<WorldTimeTickEvent>(_onWorldTick);
    on<CreatePlayerProfileEvent>(_onCreatePlayerProfile);
    on<DeletePlayerProfileEvent>(_onDeletePlayerProfile);
    on<LevelPartLoadedEvent>(_onLevelPartLoaded);
    on<SaveGameEvent>(_onSaveGame);
    on<SaveCurrentLevelEvent>(_onSaveCurrentLevel);
    on<CharacterCollisionEvent>(_onCharacterCollision);
    on<RestartLevelEvent>(_restartLevel);
    on<EndLevelEvent>(_onLevelEnd);
    on<StartPlayingLevelEvent>(_onStartPlayingLevel);
    _tutorialEventsListener = GameTutorialEventListener(read: diDto.read);
    diDto.mechanics.worldTime.addListener(_addWorldTimeTick);
  }
  GameTutorialEventListener? _tutorialEventsListener;
  final GlobalGameBlocDiDto diDto;
  void _addWorldTimeTick(final WorldTimeMechanics time) {
    add(WorldTimeTickEvent(time));
  }

  @override
  Future<void> close() {
    diDto.mechanics.worldTime.removeListener(_addWorldTimeTick);
    if (_tutorialEventsListener != null) {
      diDto.tutorialBloc.notifier.removeListener(_tutorialEventsListener!);
    }

    return super.close();
  }

  Future<void> _onInitGlobalGame(
    final InitGlobalGameEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) async {
    final gameModel = event.gameModel;
    final liveGame = LiveGlobalGameBlocState.fromModel(gameModel);
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
      add(InitGlobalGameLevelEvent(levelModel: levelModel, isNewStart: false));
    }
    unawaited(diDto.mechanics.worldTime.onLoad());
    diDto.tutorialBloc.add(
      LoadTutorialsProgressEvent(progress: gameModel.tutorialProgress),
    );
    if (_tutorialEventsListener != null) {
      diDto.tutorialBloc.notifier.addListener(_tutorialEventsListener!);
    }
  }

  void _restartLevel(
    final RestartLevelEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final liveState = getLiveState();
    final levelModel = liveState.currentLevelModel;
    if (levelModel == null) {
      // TODO(arenuvkern): description
      throw UnimplementedError();
    } else {
      add(InitGlobalGameLevelEvent(levelModel: levelModel));
      add(const StartPlayingLevelEvent());
    }
  }

  /// This completer exists because we need to wait until the game will be
  /// loaded completely.
  /// The inital game level load function is [_onInitGlobalGameLevel]
  ///
  /// The [_onLevelPartLoaded] function is completes this completer.
  ///
  /// The [_onStartPlayingLevel] is waiting for the completer future
  Completer? _globalLevelLoadCompleter;

  void _onInitGlobalGameLevel(
    final InitGlobalGameLevelEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    _globalLevelLoadCompleter = Completer();
    final levelModel = event.levelModel;
    LiveGlobalGameBlocState updatedState = _getResetedLevelLoad();
    if (event.isNewStart) {
      updatedState = updatedState.copyWith(
        currentLevelModel: levelModel,
      );
      emit(updatedState);
    }
    diDto
      ..levelBloc.add(InitLevelEvent(levelModel: levelModel))
      ..levelPlayersBloc.add(
        InitLevelPlayersEvent(
          playersModel: levelModel.players,
          charactersModel: levelModel.characters,
        ),
      )
      ..resourcesBloc.add(
        InitResourcesEvent(
          resources: levelModel.resources,
        ),
      );
  }

  LiveGlobalGameBlocState _getResetedLevelLoad() {
    diDto.mechanics.worldTime.pause();
    final liveState = getLiveState();
    return liveState.copyWith(loadedLevelParts: {});
  }

  void _onLevelPartLoaded(
    final LevelPartLoadedEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final liveState = getLiveState();
    final loadedStates = {...liveState.loadedLevelParts, event.loadedState};
    LiveGlobalGameBlocState updateState = liveState.copyWith(
      loadedLevelParts: loadedStates,
    );

    if (updateState.isLevelCompletelyLoaded) {
      _globalLevelLoadCompleter!.complete();
      updateState = updateState.copyWith(
        currentLevelId: diDto.levelBloc.getLiveState().id,
      );
    }
    emit(updateState);
  }

  Future<void> _onStartPlayingLevel(
    final StartPlayingLevelEvent event,
    final Emitter<GlobalGameBlocState> emit,
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

  void _onWorldTick(
    final WorldTimeTickEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final effectiveState = getLiveState();

    final newDateTime = event.worldTimeManager.dateTime;
    final lastDateTime = effectiveState.dateTime;
    final dateTimeDelta = newDateTime.second - lastDateTime.second;
    final newState = effectiveState.copyWith(
      lastDateTime: lastDateTime,
      dateTime: newDateTime,
      dateTimeDelta: dateTimeDelta,
    );
    emit(newState);
    _shareNewDateTime(newState);
  }

  void _onLevelEnd(
    final EndLevelEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final currentLevelModel = _getCurrentLevelModel();
    final players = currentLevelModel.players;
    final liveState = getLiveState();
    final updatedPlayers = [...liveState.playersCollection];
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
    final updatedState = liveState.copyWith(
      playersCollection: updatedPlayers,
    );
    emit(updatedState);
    _saveGame(liveState: updatedState);
  }

  void _onCharacterCollision(
    final CharacterCollisionEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    diDto.mechanics.worldTime.pause();
  }

  void _shareNewDateTime(final LiveGlobalGameBlocState newState) {
    diDto.levelBloc.add(
      ConsumeTickEvent(timeDeltaInSeconds: newState.dateTimeDelta),
    );
  }

  void _onDeletePlayerProfile(
    final DeletePlayerProfileEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final profile = event.profile;
    final liveState = getLiveState();
    final updateState = liveState.copyWith(
      playersCollection: [...liveState.playersCollection]
        ..removeWhere((final player) => player.id == profile.id),
    );
    emit(updateState);
    _saveGame();
  }

  void _onCreatePlayerProfile(
    final CreatePlayerProfileEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    final profile = event.profile;
    final liveState = getLiveState();
    final updateState = liveState.copyWith(
      playersCollection: [...liveState.playersCollection, profile],
    );
    emit(updateState);
    _saveGame();
  }

  /// before to save game, make sure to add [SaveCurrentLevelEvent]
  Future<void> _onSaveGame(
    final SaveGameEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) async =>
      _saveGame();

  Future<void> _saveGame({
    final LiveGlobalGameBlocState? liveState,
  }) async {
    final resolvedLiveState = liveState ?? getLiveState();
    final gameModel = _getGameModel(liveState: resolvedLiveState);
    await diDto.services.gamePersistence.saveGame(game: gameModel);
  }

  Future<void> _onSaveCurrentLevel(
    final SaveCurrentLevelEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) async {
    final liveState = getLiveState();
    final currentLevelId = liveState.currentLevelId;
    final levels = {...liveState.levels}..[currentLevelId] =
        _getCurrentLevelModel();
    final updatedState = liveState.copyWith(
      levels: levels,
    );
    emit(updatedState);
    await _saveGame(liveState: updatedState);
  }

  GameModel _getGameModel({required final LiveGlobalGameBlocState liveState}) {
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
    final liveLevelState = diDto.levelBloc.getLiveState();
    final liveResourcesState = diDto.resourcesBloc.getLiveState();
    final livePlayersState = diDto.levelPlayersBloc.getLiveState();

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
      resources: ResourcesModel(
        tileMapName: liveResourcesState.tileMapName,
        tileMapIcon: liveResourcesState.tileMapName,
      ),
    );
  }

  LiveGlobalGameBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveGlobalGameBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }

  TemplateLevelModel? getTemplateLevelById({required final LevelModelId id}) {
    if (id.isEmpty) return null;

    final liveState = getLiveState();
    // TODO(arenukvern): handle null error
    return liveState.templateLevels.firstWhere((final level) => level.id == id);
  }
}
