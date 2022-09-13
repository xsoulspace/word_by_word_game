part of 'level_bloc.dart';

abstract class LevelEvent extends Equatable {
  const LevelEvent();
  @override
  List<Object?> get props => [];
}

class WorldTimeTickEvent extends LevelEvent {
  const WorldTimeTickEvent(this.worldTimeManager);
  final WorldTimeMechanics worldTimeManager;
}

class LoadLevelEvent extends LevelEvent {
  const LoadLevelEvent();
}

class ChangeCurrentWordEvent extends LevelEvent {
  const ChangeCurrentWordEvent({
    required this.word,
  });
  final CurrentWordModel word;
  @override
  List<Object?> get props => [word];
}

class AcceptNewWordEvent extends LevelEvent {
  const AcceptNewWordEvent();
}
