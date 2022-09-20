import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'global_game_bloc.freezed.dart';
part 'global_game_bloc.g.dart';
part 'global_game_events.dart';
part 'global_game_states.dart';

class GlobalGameBlocDiDto {
  GlobalGameBlocDiDto.use(final Locator read)
      : mechanics = read(),
        levelBloc = read(),
        levelPlayersBloc = read(),
        resourcesBloc = read(),
        services = read();
  final MechanicsCollection mechanics;
  final LevelBloc levelBloc;
  final LevelPlayersBloc levelPlayersBloc;
  final ResourcesBloc resourcesBloc;
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
    on<LevelPartLoadedEvent>(_onLevelPartLoaded);
    on<SaveGameEvent>(_onSaveGame);
    on<SaveCurrentLevelEvent>(_onSaveCurrentLevel);
    diDto.mechanics.worldTime.addListener(_addWorldTimeTick);
  }

  final GlobalGameBlocDiDto diDto;
  void _addWorldTimeTick(final WorldTimeMechanics time) {
    add(WorldTimeTickEvent(time));
  }

  @override
  Future<void> close() {
    diDto.mechanics.worldTime.removeListener(_addWorldTimeTick);
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
      add(InitGlobalGameLevelEvent(levelModel: levelModel));
    }
    unawaited(diDto.mechanics.worldTime.onLoad());
  }

  void _onInitGlobalGameLevel(
    final InitGlobalGameLevelEvent event,
    final Emitter<GlobalGameBlocState> emit,
  ) {
    emit(_getResetedLevelLoad());
    final levelModel = event.levelModel;
    diDto
      ..levelBloc.add(InitLevelEvent(levelModel: levelModel))
      ..levelPlayersBloc.add(
        InitLevelPlayersEvent(
          playersModel: levelModel.players,
          charactersModel: levelModel.characters,
        ),
      )
      ..resourcesBloc.add(const InitResourcesEvent());
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
    final isLoaded = LevelPartStates.containsAll(loadedStates);
    if (isLoaded) {
      diDto.mechanics.worldTime.resume();
      updateState = updateState.copyWith(
        currentLevelId: diDto.levelBloc.getLiveState().id,
      );
    }
    emit(updateState);
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

  void _shareNewDateTime(final LiveGlobalGameBlocState newState) {
    diDto.levelBloc.add(
      ConsumeTickEvent(timeDeltaInSeconds: newState.dateTimeDelta),
    );
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
    return GameModel(
      id: liveState.id,
      currentLevelId: liveState.currentLevelId,
      templateLevels: liveState.templateLevels,
      dateTime: liveState.dateTime,
      lastDateTime: liveState.lastDateTime,
      levels: liveState.levels,
      playersCharacters: liveState.playersCharacters,
      playersCollection: liveState.playersCollection,
    );
  }

  LevelModel _getCurrentLevelModel() {
    final liveLevelState = diDto.levelBloc.getLiveState();
    final livePlayersState = diDto.levelPlayersBloc.getLiveState();

    return LevelModel(
      id: liveLevelState.id,
      currentWord: liveLevelState.currentWord,
      fuelStorage: liveLevelState.fuelStorage,
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

  LiveGlobalGameBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveGlobalGameBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }

  TemplateLevelModel getTemplateLevelById({required final LevelModelId id}) {
    final liveState = getLiveState();
    // TODO(arenukvern): handle null error
    return liveState.templateLevels.firstWhere((final level) => level.id == id);
  }
}
