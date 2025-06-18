// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@freezed
abstract class LevelRouteArgs with _$LevelRouteArgs {
  @JsonSerializable(explicitToJson: true)
  const factory LevelRouteArgs({@Default('') final String levelId}) =
      _LevelRouteArgs;

  const LevelRouteArgs._();

  factory LevelRouteArgs.fromJson(final Map<String, dynamic> json) =>
      _$LevelRouteArgsFromJson(json);
}
