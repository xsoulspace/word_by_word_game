part of '../../state.dart';

@freezed
class DrawerCubitState with _$DrawerCubitState {
  const factory DrawerCubitState({
    /// Real origin for all elements
    required final Vector2 origin,
    @Default(kMinSelectionIndex) final int selectionIndex,
    @Default(false) final bool isDeleteSelection,
    @Default(false) final bool isDeleteSelectionCompletely,
    @Default({}) final Map<CellPointModel, CanvasTileModel> canvasData,
    @Default({}) final TileDataModelMap tileData,

    /// can be negative and positive
    /// !maybe need to remove this
    @Default(0) final double gravityYPosition,

    /// can be negative and positive
    @Default(0) final double skyYPosition,
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
}

class OriginVectorUtils {
  OriginVectorUtils.use(this.origin);
  final Vector2 origin;
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

  math.Point<int> getCurrentCellByObject(final EditorCanvasObject object) {
    final distanceToOrigin = object.distanceToOrigin.toVector2() - origin;
    return getCellByDistance(distanceToOrigin);
  }

  math.Point<int> getCurrentCellByTap(final TapUpEvent eventPosition) {
    final distanceToOrigin = eventPosition.canvasPosition - origin;
    return getCellByDistance(distanceToOrigin);
  }
}
