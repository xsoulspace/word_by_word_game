part of 'level_bloc.dart';

enum EnergyApplicationType {
  refueling,
  researchingTechnology,
  crystalMove,
  noop,
}

@freezed
class LevelBlocEvent with _$LevelBlocEvent {
  const factory LevelBlocEvent.init({
    required final LevelModel levelModel,
  }) = LevelBlocEventInit;
  const factory LevelBlocEvent.consumeTick({
    /// How many seconds was from the last tick
    required final int timeDeltaInSeconds,
  }) = LevelBlocEventConsumeTick;
  const factory LevelBlocEvent.hideWarning() = LevelBlocEventHideWarning;
  const factory LevelBlocEvent.changeCurrentWord({
    required final CurrentWordModel word,
  }) = LevelBlocEventChangeCurrentWord;
  const factory LevelBlocEvent.selectActionMultiplier({
    required final EnergyMultiplierType multiplier,
  }) = LevelBlocEventSelectActionMultiplier;
  const factory LevelBlocEvent.addNewWordToDictionary() =
      LevelBlocEventAddNewWordToDictionary;
}
