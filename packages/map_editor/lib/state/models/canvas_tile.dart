part of 'models.dart';

@freezed
class CanvasTile with _$CanvasTile {
  const factory CanvasTile._({
    required final TileId tileId,

    /// Terrain
    @Default(false) final bool hasTerrain,
    @Default([]) final List<String> terrainNeighbours,

    /// Water
    @Default(false) final bool hasWater,
    @Default(false) final bool isTopWater,

    /// Coin
    @Default('') final TileId coin,

    /// Enemy
    @Default('') final TileId enemy,
    @Default([]) final List objects,
  }) = _SecureCanvasTile;
  factory CanvasTile.fromEditorSettingsData({
    required final TileId tileId,
    required final TileDataModel data,
  }) {
    bool hasTerrain = false;
    bool hasWater = false;
    TileId coin = '';
    TileId enemy = '';

    switch (data.style) {
      case TileStyle.terrain:
        hasTerrain = true;
        break;
      case TileStyle.water:
        hasWater = true;
        break;
      case TileStyle.coin:
        coin = tileId;
        break;
      case TileStyle.enemy:
        enemy = tileId;
        break;
      // ignore: no_default_cases
      default:
        break;
    }

    return CanvasTile._(
      tileId: tileId,
      coin: coin,
      enemy: enemy,
      hasTerrain: hasTerrain,
      hasWater: hasWater,
      isTopWater: false,
      objects: [],
      terrainNeighbours: [],
    );
  }
}
