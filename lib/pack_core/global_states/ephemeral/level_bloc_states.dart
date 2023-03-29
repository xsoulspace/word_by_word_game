// ignore_for_file: invalid_annotation_target

part of 'level_bloc.dart';

@immutable
@freezed
class LevelBlocState with _$LevelBlocState {
  const factory LevelBlocState.empty() = EmptyLevelBlocState;
  const factory LevelBlocState.live({
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
  }) = LiveLevelBlocState;
  // ignore: prefer_constructors_over_static_methods
  static LiveLevelBlocState liveFromModel(final LevelModel levelModel) =>
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

enum WordWarning {
  none,
  isWritten,
  isNotCorrect,
}
