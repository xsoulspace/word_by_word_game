part of 'global_game_bloc.dart';

@immutable
abstract class GameEvent extends Equatable {
  const GameEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class InitGlobalGameEvent extends GameEvent {
  const InitGlobalGameEvent({
    required this.gameModel,
  });
  final GameModel gameModel;
}

class WorldTimeTickEvent extends GameEvent {
  const WorldTimeTickEvent(this.worldTimeManager);
  final WorldTimeMechanics worldTimeManager;
}

@immutable
class InitGlobalGameLevelEvent extends GameEvent {
  const InitGlobalGameLevelEvent({
    required this.levelModel,
    this.isNewStart = true,
  });
  final LevelModel levelModel;
  final bool isNewStart;
}

@immutable
class DeletePlayerProfileEvent extends GameEvent {
  const DeletePlayerProfileEvent({
    required this.profile,
  });
  final PlayerProfileModel profile;
}

@immutable
class CreatePlayerProfileEvent extends GameEvent {
  const CreatePlayerProfileEvent({
    required this.profile,
  });
  final PlayerProfileModel profile;
}

@immutable
class LevelPartLoadedEvent extends GameEvent {
  const LevelPartLoadedEvent({
    required this.loadedState,
  });
  final LevelPartStates loadedState;
}

enum LevelPartStates {
  level,
  players,
  resources;

  const LevelPartStates();
  static bool containsAll(final Set<LevelPartStates> states) {
    final diff = values.toSet().difference(states);
    final isEqual = diff.isEmpty;
    return isEqual;
  }
}

@immutable
class SaveGameEvent extends GameEvent {
  const SaveGameEvent();
}

@immutable
class SaveCurrentLevelEvent extends GameEvent {
  const SaveCurrentLevelEvent();
}

@immutable
class CharacterCollisionEvent extends GameEvent {
  const CharacterCollisionEvent();
}

@immutable
class EndLevelEvent extends GameEvent {
  const EndLevelEvent({
    required this.isWon,
    required this.maxDistance,
  });
  final bool isWon;
  final double maxDistance;
}

@immutable
class RestartLevelEvent extends GameEvent {
  const RestartLevelEvent();
}
