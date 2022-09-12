// ignore_for_file: invalid_annotation_target

part of 'level_bloc.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LevelBlocState with _$LevelBlocState {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory LevelBlocState({
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordType, PlayerProfileModelId> words,
    @Default('') final String latestWord,
  }) = _LevelBlocState;
  const LevelBlocState._();
  factory LevelBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LevelBlocStateFromJson(json);
  static const empty = LevelBlocState();
}
