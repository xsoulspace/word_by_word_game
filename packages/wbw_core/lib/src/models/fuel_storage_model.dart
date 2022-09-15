part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class FuelStorageModel with _$FuelStorageModel {
  const factory FuelStorageModel({
    @Default(100) final double value,
  }) = _FuelStorageModel;

  const FuelStorageModel._();

  factory FuelStorageModel.fromJson(final Map<String, dynamic> json) =>
      _$FuelStorageModelFromJson(json);
}
