// ignore_for_file: invalid_annotation_target

part of 'preset_models.dart';

@immutable
@Freezed(fromJson: false, toJson: false, equal: false)
class TileId with _$TileId, EquatableMixin {
  const factory TileId({
    required final String value,
  }) = _TileId;
  const TileId._();
  factory TileId.fromJson(final String value) => TileId(value: value);
  factory TileId.fromIndex(final int index) => TileId(value: '$index');
  static const empty = TileId(value: '');
  bool get isEmpty => value.isEmpty;
  bool get isNotEmpty => value.isNotEmpty;
  String toJson() => value;
  Gid toGid() => Gid(value: value);
  static String toJsonString(final TileId id) => id.value;
  @override
  List<Object?> get props => [value];
}

enum TileType {
  autotile,
  object,
}

enum DataCategoryType {
  terrain,
  marker,
  water,
  palms,
  players,
  other,
}

@freezed
class PresetTileModel with _$PresetTileModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PresetTileModel({
    required final TileId id,
    required final TileType type,
    required final DataCategoryType category,
    required final PresetTileGraphicsModel graphics,
    @Default(PresetTilePropertiesModel.empty)
    final PresetTilePropertiesModel properties,
  }) = _PresetTileModel;
  factory PresetTileModel.fromJson(final Map<String, dynamic> json) =>
      _$PresetTileModelFromJson(json);
  const PresetTileModel._();
}

@freezed
class PresetTilePropertiesModel with _$PresetTilePropertiesModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PresetTilePropertiesModel({
    @Default('') final String title,
    @Default('') final String thumbnailPath,
    @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap,
    )
    @Default(LocalizedMap.empty)
    final LocalizedMap description,
  }) = _PresetTilePropertiesModel;
  factory PresetTilePropertiesModel.fromJson(final Map<String, dynamic> json) =>
      _$PresetTilePropertiesModelFromJson(json);
  const PresetTilePropertiesModel._();
  static const empty = PresetTilePropertiesModel();
}

enum TileGraphicsType {
  directional,
  character,
}

enum TileBehaviourType {
  idle,
  @JsonValue('idle_left')
  idleLeft,
  @JsonValue('idle_right')
  idleRight,
  @JsonValue('fly_left')
  flyLeft,
  @JsonValue('fly_right')
  flyRight
}

@freezed
class PresetTileGraphicsModel with _$PresetTileGraphicsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PresetTileGraphicsModel({
    required final TileGraphicsType type,
    @Default('') final String path,
    @Default(false) final bool animated,
    @Default([]) final List<TileBehaviourType> behaviours,
  }) = _PresetTileGraphicsModel;
  factory PresetTileGraphicsModel.fromJson(final Map<String, dynamic> json) =>
      _$PresetTileGraphicsModelFromJson(json);
  const PresetTileGraphicsModel._();
  static const emptyCharacter = PresetTileGraphicsModel(
    type: TileGraphicsType.character,
  );
}
