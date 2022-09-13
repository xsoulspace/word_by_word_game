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

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LiveLevelBlocState extends LevelBlocState with _$LiveLevelBlocState {
  @JsonSerializable(
    explicitToJson: true,
  )
  @Implements<LevelBlocState>()
  const factory LiveLevelBlocState({
    required final LevelModelId id,
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordType, PlayerProfileModelId> words,
    @Default('') final String latestWord,
  }) = _LiveLevelBlocState;
  const LiveLevelBlocState._();
  factory LiveLevelBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LiveLevelBlocStateFromJson(json);

  factory LiveLevelBlocState.fromModel(final LevelModel levelModel) {
    return LiveLevelBlocState(
      currentWord: levelModel.currentWord,
      latestWord: levelModel.latestWord,
      words: levelModel.words,
      id: levelModel.id,
    );
  }
}
