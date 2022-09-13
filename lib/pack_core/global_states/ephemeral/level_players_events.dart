part of 'level_players_bloc.dart';

@immutable
abstract class LevelPlayersEvent extends Equatable {
  const LevelPlayersEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class LoadLevelPlayersEvent extends LevelPlayersEvent {
  const LoadLevelPlayersEvent({
    required this.liveState,
  });
  final LiveLevelPlayersBlocState liveState;
}

@immutable
class SwitchToNextPlayerEvent extends LevelPlayersEvent {
  const SwitchToNextPlayerEvent();
}
