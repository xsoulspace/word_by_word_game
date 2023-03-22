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
  @JsonSerializable(
    explicitToJson: true,
  )
  @Implements<LevelBlocState>()
  const factory LiveLevelBlocState({
    required final LevelModelId id,
    @Default(LocalizedMap.empty) final LocalizedMap name,
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordString, PlayerProfileModelId> words,
    @Default('') final String latestWord,
    @Default(LevelPlayerPhaseType.entryWord)
        final LevelPlayerPhaseType phaseType,
    @Default(LevelActionMultiplierType.m1)
        final LevelActionMultiplierType actionMultiplier,
    final LevelPlayerActionType? actionType,

    /// ********************************************
    /// *      NON PERSISTENT
    /// ********************************************
    @Default(WordWarning.none) final WordWarning wordWarning,
  }) = _LiveLevelBlocState;
  const LiveLevelBlocState._();
  factory LiveLevelBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LiveLevelBlocStateFromJson(json);

  factory LiveLevelBlocState.fromModel(final LevelModel levelModel) =>
      LiveLevelBlocState(
        name: levelModel.name,
        phaseType: levelModel.phaseType,
        actionType: levelModel.actionType,
        actionMultiplier: levelModel.actionMultiplier,
        currentWord: levelModel.currentWord,
        latestWord: levelModel.latestWord,
        words: levelModel.words,
        id: levelModel.id,
      );
}
