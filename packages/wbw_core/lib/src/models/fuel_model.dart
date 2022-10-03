part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
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
