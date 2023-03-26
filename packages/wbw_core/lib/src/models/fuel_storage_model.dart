// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@freezed
class FuelStorageModel with _$FuelStorageModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory FuelStorageModel({
    @Default(FuelStorageModel.defaultValue) final double value,
  }) = _FuelStorageModel;

  const FuelStorageModel._();

  factory FuelStorageModel.fromJson(final Map<String, dynamic> json) =>
      _$FuelStorageModelFromJson(json);
  static const defaultValue = 400.0;
}
