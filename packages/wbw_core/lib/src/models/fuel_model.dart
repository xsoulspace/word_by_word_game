// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@freezed
class FuelModel with _$FuelModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory FuelModel({
    required final double value,
  }) = _FuelModel;

  const FuelModel._();

  factory FuelModel.fromJson(final Map<String, dynamic> json) =>
      _$FuelModelFromJson(json);
}
