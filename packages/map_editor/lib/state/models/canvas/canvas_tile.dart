part of '../models.dart';

@freezed
class CanvasTileModel with _$CanvasTileModel {
  /// Use [fromEditorSettingsDataToAdd] instead
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
        break;
      case TileStyle.water:
        hasWater = false;
        break;
      case TileStyle.coin:
        coin = '';
        break;
      case TileStyle.enemy:
        enemy = '';
        break;
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
