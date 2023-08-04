// ignore_for_file: invalid_annotation_target

part of 'preset_models.dart';

@freezed
class TilesPresetDataModel with _$TilesPresetDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TilesPresetDataModel({
    @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> tiles,
    @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> objects,
    @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> npcs,
    @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> players,
    @JsonKey(
      fromJson: TilesPresetDataModel._tilesFromJson,
      toJson: TilesPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> other,
  }) = _TilesPresetDataModel;

  factory TilesPresetDataModel.fromJson(final Map<String, dynamic> json) =>
      _$TilesPresetDataModelFromJson(json);

  static const empty = TilesPresetDataModel();

  static Map<TileId, PresetTileModel> _tilesFromJson(
    final Map<String, dynamic> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          TileId.fromJson(key),
          PresetTileModel.fromJson(value),
        ),
      );
  static Map<String, dynamic> _tilesToJson(
    final Map<TileId, PresetTileModel> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          key.value,
          value.toJson(),
        ),
      );
}

@Freezed(toJson: false, fromJson: false)
class TilesPresetResources with _$TilesPresetResources {
  const factory TilesPresetResources({
    @Default({}) final Map<TileId, PresetTileResource> tiles,
    @Default({}) final Map<TileId, PresetTileResource> objects,
    @Default({}) final Map<TileId, PresetTileResource> npcs,
    @Default({}) final Map<TileId, PresetTileResource> players,
    @Default({}) final Map<TileId, PresetTileResource> other,
  }) = _TilesPresetResources;

  factory TilesPresetResources.fromModel({
    required final TilesPresetDataModel data,
    required final ResourcesLoader resourcesLoader,
  }) =>
      TilesPresetResources(
        tiles: data.tiles.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        objects: data.objects.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        npcs: data.npcs.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        other: data.other.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        players: data.players.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
      );

  static const empty = TilesPresetResources();
}
