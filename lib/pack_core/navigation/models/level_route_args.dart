// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LevelRouteArgs with _$LevelRouteArgs {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory LevelRouteArgs({
    @Default('') final String levelId,
  }) = _LevelRouteArgs;

  const LevelRouteArgs._();

  factory LevelRouteArgs.fromJson(final Map<String, dynamic> json) =>
      _$LevelRouteArgsFromJson(json);
}
