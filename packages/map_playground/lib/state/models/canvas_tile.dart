part of 'models.dart';

@freezed
class CanvasTileModel with _$CanvasTileModel {
  const factory CanvasTileModel.secure({
    required final TileId tileId,

    /// Terrain
    @Default(false) final bool hasTerrain,
    @Default([]) final List<String> terrainNeighbours,

    /// Water
    @Default(false) final bool hasWater,
    @Default(false) final bool isWaterTop,

    /// Coin
    @Default('') final TileId coin,

    /// Enemy
    @Default('') final TileId enemy,
    @Default([]) final List objects,
  }) = _SecureCanvasTileModel;
  const CanvasTileModel._();
  factory CanvasTileModel.fromEditorSettingsDataToAdd({
    required final TileId tileId,
    required final TileDataModel data,
    final CanvasTileModel? oldData,
  }) {
    bool hasTerrain = oldData?.hasTerrain ?? false;
    bool hasWater = oldData?.hasWater ?? false;
    TileId coin = oldData?.coin ?? '';
    TileId enemy = oldData?.enemy ?? '';

    switch (data.style) {
      case TileStyle.terrain:
        hasTerrain = true;
      case TileStyle.water:
        hasWater = true;
      case TileStyle.coin:
        coin = tileId;
      case TileStyle.enemy:
        enemy = tileId;
      // ignore: no_default_cases
      default:
        break;
    }

    return CanvasTileModel.secure(
      tileId: tileId,
      coin: coin,
      enemy: enemy,
      hasTerrain: hasTerrain,
      hasWater: hasWater,
      isWaterTop: oldData?.isWaterTop ?? false,
      objects: oldData?.objects ?? [],
      terrainNeighbours: oldData?.terrainNeighbours ?? [],
    );
  }
  CanvasTileModel removeSelection({
    required final TileId tileId,
    required final TileDataModel data,
  }) {
    bool hasTerrain = this.hasTerrain;
    bool hasWater = this.hasWater;
    TileId coin = this.coin;
    TileId enemy = this.enemy;

    switch (data.style) {
      case TileStyle.terrain:
        hasTerrain = false;
      case TileStyle.water:
        hasWater = false;
      case TileStyle.coin:
        coin = '';
      case TileStyle.enemy:
        enemy = '';
      // ignore: no_default_cases
      default:
        break;
    }

    return CanvasTileModel.secure(
      tileId: '',
      coin: coin,
      enemy: enemy,
      hasTerrain: hasTerrain,
      hasWater: hasWater,
      isWaterTop: isWaterTop,
      objects: objects,
      terrainNeighbours: terrainNeighbours,
    );
  }

  static const empty = CanvasTileModel.secure(tileId: '');
  bool get isEmpty =>
      tileId.isEmpty &&
      coin.isEmpty &&
      enemy.isEmpty &&
      !hasTerrain &&
      !hasWater &&
      !isWaterTop;
}