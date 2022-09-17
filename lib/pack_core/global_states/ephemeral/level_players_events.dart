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
