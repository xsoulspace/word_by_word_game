part of '../../state.dart';

@freezed
class DrawerCubitState with _$DrawerCubitState {
  const factory DrawerCubitState({
    /// Real origin for all elements
    required final Vector2 origin,
    final PresetTileResource? tileToDraw,
    @Default(false) final bool isDeleteSelection,
    @Default(false) final bool isDeleteSelectionCompletely,
    @Default(CanvasDataModel.empty) final CanvasDataModel canvasData,

    /// use to get or update layer [canvasData]
    ///
    /// shortcut - [drawLayer]
    @Default(LayerModelId.empty) final LayerModelId drawLayerId,

    /// Never changable in runtime tileset, like grass, water and data
    /// to instantiate objects
    @Default(TilesetPresetResources.empty)
    final TilesetPresetResources tileResources,
    @Default([]) final List<TilesetConfigModel> tilesetsConfigs,
  }) = _DrawerCubitState;
  const DrawerCubitState._();
  static final empty = DrawerCubitState(origin: Vector2.zero());

  /// First cell position to calculate the grid and positions
  /// currently fitted into screen size.
  @useResult
  Vector2 getOffsetOrigin() => Vector2(
        origin.x - ((origin.x ~/ kTileDimension) * kTileDimension),
        origin.y - ((origin.y ~/ kTileDimension) * kTileDimension),
      );
  LayerModel get drawLayer {
    final layers = canvasData.layers;
    if (layers.isEmpty || (drawLayerId.isEmpty)) {
      return LayerModel.empty;
    }
    return layers.firstWhere((final e) => e.id == drawLayerId);
  }
}

class OriginVectorUtils {
  OriginVectorUtils.use(this.origin);
  final Vector2 origin;

  /// to get [offsetOrigin] in the game use
  /// [canvasRenderer.getOffsetOrigin] or in components
  /// [getOffsetOrigin]
  (CellPointModel gameCellPoint, Vector2? canvasPosition) getGameCellPoint({
    required final CellPointModel canvasCell,
    required final Vector2 offsetOrigin,
  }) {
    final cellPoint =
        getCellByDistance(canvasCell.toVector2()) * kTileDimension;
    final canvasPosition = cellPoint.toVector2() + offsetOrigin;

    final gameCellPoint = getCurrentCellByTap(canvasPosition).toCellPoint();
    return (gameCellPoint, canvasPosition);
  }

  math.Point<int> getCellByDistance(final Vector2 distanceToOrigin) {
    int y = distanceToOrigin.y ~/ kTileDimension;
    if (distanceToOrigin.y < 0) {
      y--;
    }
    int x = distanceToOrigin.x ~/ kTileDimension;
    if (distanceToOrigin.x < 0) {
      x--;
    }
    return math.Point(x, y);
  }

  /// Current is the same as offset
  math.Point<int> getCurrentCellByGameObject(
    final RenderObjectModel object,
  ) {
    final distanceToOrigin = object.distanceToOrigin.toVector2() - origin;
    return getCellByDistance(distanceToOrigin);
  }

  /// Current is the same as offset
  math.Point<int> getCurrentCellByCanvasObject({
    required final Offset objectDistanceToOrigin,
  }) {
    final distanceToOrigin = objectDistanceToOrigin.toVector2() - origin;
    return getCellByDistance(distanceToOrigin);
  }

  math.Point<int> getAbsoluteCellByCanvasObject({
    required final Offset objectDistanceToOrigin,
  }) {
    final distanceToOrigin = objectDistanceToOrigin.toVector2();
    return getCellByDistance(distanceToOrigin);
  }

  math.Point<int> getCurrentCellByTap(final Vector2 canvasPosition) {
    final distanceToOrigin = getCurrentPositionByTap(canvasPosition);
    return getCellByDistance(distanceToOrigin);
  }

  Vector2 getCurrentPositionByTap(final Vector2 canvasPosition) =>
      canvasPosition - origin;
}
