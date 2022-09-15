part of 'level_bloc.dart';

@immutable
abstract class LevelBlocEvent extends Equatable {
  const LevelBlocEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class InitLevelEvent extends LevelBlocEvent {
  const InitLevelEvent({
    required this.levelModel,
  });
  final LevelModel levelModel;
}

class ConsumeTickEvent extends LevelBlocEvent {
  const ConsumeTickEvent({
    required this.timeDeltaInSeconds,
  });

  /// How many seconds was from the last tick
  final int timeDeltaInSeconds;
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
