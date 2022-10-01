// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef PlayerCharacterModelId = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class PlayerCharacterModel with _$PlayerCharacterModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerCharacterModel({
    required final PlayerCharacterModelId id,
    required final String name,
    required final String description,
    required final int color,
    required final CharacterAssetModel asset,
    @Default(FuelStorageModel(value: 150)) final FuelStorageModel fuel,
    @Default(50.5) final double fuelNormalPower,
    @Default(0.5) final double requiredLiftForce,
  }) = _PlayerCharacterModel;
  const PlayerCharacterModel._();
  factory PlayerCharacterModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerCharacterModelFromJson(json);
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class CharacterAssetModel with _$CharacterAssetModel {
  @JsonSerializable(explicitToJson: true)
  const factory CharacterAssetModel({
    required final int srcPositionX,
    required final int srcPositionY,
    required final int srcSizeX,
    required final int srcSizeY,
  }) = _CharacterAssetModel;
  const CharacterAssetModel._();
  factory CharacterAssetModel.fromJson(final Map<String, dynamic> json) =>
      _$CharacterAssetModelFromJson(json);
}
