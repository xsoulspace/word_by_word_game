// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

/// This DateTime has no specific number to year / month convertion
/// as it will be depends from the planet now on
@immutable
@freezed
abstract class WorldDateTimeModel with _$WorldDateTimeModel {
  @JsonSerializable(explicitToJson: true)
  const factory WorldDateTimeModel({@Default(0) final int second}) =
      _WorldDateTime;
  const WorldDateTimeModel._();
  factory WorldDateTimeModel.fromJson(final Map<String, dynamic> json) =>
      _$WorldDateTimeModelFromJson(json);
  static const zero = WorldDateTimeModel();
}
