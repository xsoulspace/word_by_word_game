part of 'level_bloc.dart';

@immutable
abstract class LevelBlocEvent extends Equatable {
  const LevelBlocEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class WorldTimeTickEvent extends LevelBlocEvent {
  const WorldTimeTickEvent(this.worldTimeManager);
  final WorldTimeMechanics worldTimeManager;
}

@immutable
class InitLevelEvent extends LevelBlocEvent {
  const InitLevelEvent({
    required this.levelModel,
  });
  final LevelModel levelModel;
}

@immutable
class ChangeCurrentWordEvent extends LevelBlocEvent {
  const ChangeCurrentWordEvent({
    required this.word,
  });
  final CurrentWordModel word;
  @override
  List<Object?> get props => [word];
}

@immutable
class AcceptNewWordEvent extends LevelBlocEvent {
  const AcceptNewWordEvent();
}
