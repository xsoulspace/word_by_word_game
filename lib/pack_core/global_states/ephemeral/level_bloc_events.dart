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
class HideWarningEvent extends LevelBlocEvent {
  const HideWarningEvent();
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
  const AcceptNewWordEvent({this.word});
  final CurrentWordModel? word;
}

@immutable
class LevelPlayerEndTurnActionEvent extends LevelBlocEvent {
  const LevelPlayerEndTurnActionEvent();
}

@immutable
class LevelPlayerSelectActionMultiplierEvent extends LevelBlocEvent {
  const LevelPlayerSelectActionMultiplierEvent({
    required this.multiplier,
  });
  final EnergyMultiplierType multiplier;
}

@immutable
class AddNewWordToDictionaryEvent extends LevelBlocEvent {
  const AddNewWordToDictionaryEvent();
}

@immutable
class DecreaseMiddlePartEvent extends LevelBlocEvent {
  const DecreaseMiddlePartEvent({
    required this.index,
  });

  final int index;
}
