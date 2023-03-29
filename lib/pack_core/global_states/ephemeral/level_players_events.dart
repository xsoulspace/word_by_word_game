part of 'level_players_bloc.dart';

@immutable
abstract class LevelPlayersEvent extends Equatable {
  const LevelPlayersEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class InitLevelPlayersEvent extends LevelPlayersEvent {
  const InitLevelPlayersEvent({
    required this.playersModel,
    required this.charactersModel,
  });
  final LevelPlayersModel playersModel;
  final LevelCharactersModel charactersModel;
}

@immutable
class SwitchToNextPlayerEvent extends LevelPlayersEvent {
  const SwitchToNextPlayerEvent();
}

@immutable
class ConsumeFuelEvent extends LevelPlayersEvent {
  const ConsumeFuelEvent({
    required this.fuel,
  });
  final FuelStorageModel fuel;
}

@immutable
class ChangeCharacterPositionEvent extends LevelPlayersEvent {
  const ChangeCharacterPositionEvent({
    required this.position,
  });
  final Vector2 position;
}

@immutable
class RefuelStorageEvent extends LevelPlayersEvent {
  const RefuelStorageEvent({
    required this.score,
  });

  final ScoreModel score;
}

@immutable
class UpdatePlayerHighscoreEvent extends LevelPlayersEvent {
  const UpdatePlayerHighscoreEvent({
    required this.score,
    required this.playerId,
    this.word,
  });
  final PlayerProfileModelId playerId;
  final ScoreModel score;
  final String? word;
}
