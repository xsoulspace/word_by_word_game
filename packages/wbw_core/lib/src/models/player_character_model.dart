// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef PlayerCharacterModelId = String;

@immutable
@freezed
class PlayerCharacterModel with _$PlayerCharacterModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerCharacterModel({
    @Default('') final PlayerCharacterModelId id,
    @Default('') final String description,
    @Default(0) final int color,
    @Default(CharacterAssetModel.empty) final CharacterAssetModel asset,
    @Default(LocalizedMap.empty) final LocalizedMap localizedName,
    @Default('') final String characterIcon,
    @Default(SerializedVector2.zero) final SerializedVector2 position,
    @Default(FuelStorageModel()) final FuelStorageModel fuel,
    @Default(50.5) final double fuelNormalPower,
    @Default(0.5) final double requiredLiftForce,
  }) = _PlayerCharacterModel;
  const PlayerCharacterModel._();
  factory PlayerCharacterModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerCharacterModelFromJson(json);
  static const empty = PlayerCharacterModel();
}

@immutable
@freezed
class CharacterAssetModel with _$CharacterAssetModel {
  @JsonSerializable(explicitToJson: true)
  const factory CharacterAssetModel({
    @Default(SerializedVector2.zero) final SerializedVector2 srcPosition,
    @Default(0) final int srcSizeX,
    @Default(0) final int srcSizeY,
  }) = _CharacterAssetModel;
  const CharacterAssetModel._();
  factory CharacterAssetModel.fromJson(final Map<String, dynamic> json) =>
      _$CharacterAssetModelFromJson(json);
  static const empty = CharacterAssetModel();
}

@immutable
@freezed
class SerializedVector2 with _$SerializedVector2 {
  @JsonSerializable(explicitToJson: true)
  const factory SerializedVector2({
    @Default(0) final double x,
    @Default(0) final double y,
  }) = _SerializedVector2;
  const SerializedVector2._();
  factory SerializedVector2.fromJson(final Map<String, dynamic> json) =>
      _$SerializedVector2FromJson(json);
  static const zero = SerializedVector2();
  bool get isZero => x == 0 && y == 0;
  Vector2 toVector2() => Vector2(x, y);
  Offset toOffset() => Offset(x, y);
}

extension OffsetExtension on Offset {
  SerializedVector2 toSerializedVector2() => SerializedVector2(x: dx, y: dy);
}

extension Vector2Extension on Vector2 {
  SerializedVector2 toSerializedVector2() => SerializedVector2(x: x, y: y);
}
