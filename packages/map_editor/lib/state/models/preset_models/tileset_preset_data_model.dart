// ignore_for_file: invalid_annotation_target

part of 'preset_models.dart';

/// default values for autotiles
const Map<SpriteTileName, List<SpriteCode>> _nameCodes = {
  SpriteTileName.topLeft: ['BCDEF', 'CDEF', 'CDE', 'BCDE'],
  SpriteTileName.topCenter: ['CDEFG', 'CEG', 'BCDEFG', 'CDEFGH'],
  SpriteTileName.topRight: ['DEFGH', 'DEFG', 'EFG', 'EFGH'],
  SpriteTileName.middleLeft: ['ABCDE', 'ACE'],
  SpriteTileName.middleRight: ['AEFGH', 'AEG'],
  SpriteTileName.x: ['ABCDEFGH', 'ACEG'],
  SpriteTileName.bottomLeft: ['ABCDH', 'ABC', 'ABCH', 'ABCD'],
  SpriteTileName.bottomCenter: ['ABCGH', 'ACG'],
  SpriteTileName.bottomRight: ['ABFGH', 'AFGH', 'ABGH', 'AGH'],
};

@freezed
class TilesetPresetDataModel with _$TilesetPresetDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TilesetPresetDataModel({
    @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> tiles,
    @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> objects,
    @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> npcs,
    @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> players,
    @JsonKey(
      fromJson: TilesetPresetDataModel._tilesFromJson,
      toJson: TilesetPresetDataModel._tilesToJson,
    )
    @Default({})
    final Map<TileId, PresetTileModel> other,
    @Default(_nameCodes)
    final Map<SpriteTileName, List<SpriteCode>> autotileRules,
    @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap,
    )
    @Default(LocalizedMap.empty)
    final LocalizedMap name,
    @Default(TilesetType.colourful) final TilesetType type,
    @Default(TilesetThemeModel.empty) final TilesetThemeModel theme,
  }) = _TilesetPresetDataModel;

  factory TilesetPresetDataModel.fromJson(final Map<String, dynamic> json) =>
      _$TilesetPresetDataModelFromJson(json);

  static const empty = TilesetPresetDataModel();

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

enum TilesetType {
  @JsonValue('colourful')
  colourful,
  @JsonValue('white_black')
  whiteBlack,
  @JsonValue('evening')
  evening,
}

@Freezed(fromJson: false, toJson: false)
class TilesetConfigModel with _$TilesetConfigModel {
  const factory TilesetConfigModel({
    /// should be a _preset_data.json
    @Default('') final String path,
  }) = _TilesetConfigModel;
  const TilesetConfigModel._();
  String get cleanPath => paths.withoutExtension(
        path.replaceAll('assets/images/', '').replaceAll('_preset_data', ''),
      );
  TilesetType get type => switch (cleanPath.split('/').last) {
        'colourful' => TilesetType.colourful,
        'white_black' => TilesetType.whiteBlack,
        'evening' => TilesetType.evening,
        _ => throw UnimplementedError()
      };
  String get encodedAtlasPath => '$cleanPath.fa';
  String get decodedAtlasPath => '$cleanPath.json';
  String get folderPath => cleanPath;
  String get presetPath => path;
}

@freezed
class TilesetThemeModel with _$TilesetThemeModel {
  const factory TilesetThemeModel({
    required final String backgroundSkyColorHex,
  }) = _TilesetThemeModel;
  const TilesetThemeModel._();
  factory TilesetThemeModel.fromJson(final Map<String, dynamic> json) =>
      _$TilesetThemeModelFromJson(json);
  static const empty = TilesetThemeModel(backgroundSkyColorHex: 'FFFFFF');
  Color get backgroundSkyColor => backgroundSkyColorHex.toColor();
}

@Freezed(toJson: false, fromJson: false)
class TilesetPresetResources with _$TilesetPresetResources {
  const factory TilesetPresetResources({
    @Default(LocalizedMap.empty) final LocalizedMap name,
    @Default(TilesetThemeModel.empty) final TilesetThemeModel theme,
    @Default(TilesetType.colourful) final TilesetType type,
    @Default({}) final Map<SpriteTileName, List<SpriteCode>> autotileRules,
    @Default({}) final Map<TileId, PresetTileResource> tiles,
    @Default({}) final Map<TileId, PresetTileResource> objects,
    @Default({}) final Map<TileId, PresetTileResource> npcs,
    @Default({}) final Map<TileId, PresetTileResource> players,
    @Default({}) final Map<TileId, PresetTileResource> other,
  }) = _TilesetPresetResources;

  factory TilesetPresetResources.fromModel({
    required final TilesetPresetDataModel data,
    required final ResourcesLoader resourcesLoader,
    required final TilesetConfigModel tilesetConfig,
  }) =>
      TilesetPresetResources(
        name: data.name,
        type: data.type,
        theme: data.theme,
        autotileRules: data.autotileRules,
        tiles: data.tiles.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tilesetConfig: tilesetConfig,
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        objects: data.objects.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tilesetConfig: tilesetConfig,
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        npcs: data.npcs.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tilesetConfig: tilesetConfig,
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        other: data.other.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tilesetConfig: tilesetConfig,
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
        players: data.players.map(
          (final key, final tile) => MapEntry(
            key,
            PresetTileResource.fromTile(
              tilesetConfig: tilesetConfig,
              tile: tile,
              resourcesLoader: resourcesLoader,
            ),
          ),
        ),
      );

  static const empty = TilesetPresetResources();
}
