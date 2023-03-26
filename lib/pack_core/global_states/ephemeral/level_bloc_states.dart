// ignore_for_file: invalid_annotation_target

part of 'level_bloc.dart';

@immutable
abstract class LevelBlocState {
  const LevelBlocState();
}

@immutable
class EmptyLevelBlocState extends LevelBlocState {
  const EmptyLevelBlocState();
}

enum WordWarning {
  none,
  isWritten,
  isNotCorrect,
}

@immutable
@freezed
class LiveLevelBlocState extends LevelBlocState with _$LiveLevelBlocState {
  @Implements<LevelBlocState>()
  const factory LiveLevelBlocState({
    required final LevelModelId id,
    @Default(LocalizedMap.empty) final LocalizedMap name,
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordString, PlayerProfileModelId> words,
    @Default('') final String latestWord,
    @Default(GamePhaseType.entryWord) final GamePhaseType phaseType,
    @Default(EnergyMultiplierType.m1)
        final EnergyMultiplierType actionMultiplier,

    /// ********************************************
    /// *      NON PERSISTENT
    /// ********************************************
    @Default(WordWarning.none) final WordWarning wordWarning,
  }) = _LiveLevelBlocState;
  const LiveLevelBlocState._();

  factory LiveLevelBlocState.fromModel(final LevelModel levelModel) =>
      LiveLevelBlocState(
        name: levelModel.name,
        phaseType: levelModel.phaseType,
        actionMultiplier: levelModel.actionMultiplier,
        currentWord: levelModel.currentWord,
        latestWord: levelModel.latestWord,
        words: levelModel.words,
        id: levelModel.id,
      );
}
