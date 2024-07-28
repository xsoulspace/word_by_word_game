import 'dart:math' as math;

import 'package:flame/extensions.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/ui/renderer/renderer.dart';
import 'package:wbw_core/wbw_core.dart';

typedef TilePointType = math.Point<int>;

class GameOrigins {
  GameOrigins(this.mapOrigin, this.viewportOrigin);
  final Vector2 mapOrigin;
  final Vector2 viewportOrigin;
  @override
  String toString() =>
      'GameOrigins(mapOrigin: $mapOrigin, viewportOrigin: $viewportOrigin)';
}

// TODO(arenukvern): add zoomed vectors
class GameVector2 {
  const GameVector2.fromMapVector2(this.mapVector2);
  GameVector2.fromMapSerializedVector2(final SerializedVector2 vector)
      : mapVector2 = Vector2(vector.x, vector.y);

  factory GameVector2.fromScreenVector2({
    required final Vector2 screenVector,
    required final GameOrigins origins,
  }) {
    final mapVector2 = screenVector - origins.mapOrigin;
    return GameVector2.fromMapVector2(mapVector2);
  }

  /// old name - offset origin
  factory GameVector2.fromViewportVector2(final Vector2 screenVector) {
    throw UnimplementedError();
  }

  factory GameVector2.fromMapTileCell(final TilePointType tileCell) {
    final mapVector2 = Vector2(
      tileCell.x * kTileDimension.toDouble(),
      tileCell.y * kTileDimension.toDouble(),
    );
    return GameVector2.fromMapVector2(mapVector2);
  }
  final Vector2 mapVector2;
  Vector2 toScreenVector2(final GameOrigins origins) =>
      mapVector2 + origins.mapOrigin;

  Vector2 toViewportVector2() {
    throw UnimplementedError();
  }

  TilePointType toViewportTileCell() {
    throw UnimplementedError();
    // return ;
  }

  TilePointType toMapTileCell() {
    int y = mapVector2.y ~/ kTileDimension;
    if (mapVector2.y < 0) {
      y--;
    }
    int x = mapVector2.x ~/ kTileDimension;
    if (mapVector2.x < 0) {
      x--;
    }
    return math.Point(x, y);
  }

  SerializedVector2 toSerializedVector2() => SerializedVector2(
        x: mapVector2.x,
        y: mapVector2.y,
      );
  String getPrintableString(final GameOrigins origins) =>
      '\n\nGameVector2(mapVector2: $mapVector2). '
      '\norigins: $origins. '
      '\ntoScreenVector2: ${toScreenVector2(origins)}, '
      // 'toViewportVector2: ${toViewportVector2()}, '
      '\ntoMapTileCell: ${toMapTileCell()}'
      '\n';

  GameVector2 operator +(final GameVector2 other) =>
      GameVector2.fromMapVector2(mapVector2 + other.mapVector2);
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

  TilePointType getCellByDistance(final Vector2 distanceToOrigin) =>
      GameVector2.fromMapVector2(distanceToOrigin).toMapTileCell();

  /// Current is the same as offset
  TilePointType getCurrentCellByGameObject(
    final RenderObjectModel object,
  ) {
    final distanceToOrigin = object.distanceToOrigin.toVector2() - origin;
    return getCellByDistance(distanceToOrigin);
  }

  /// Current is the same as offset
  TilePointType getCurrentCellByCanvasObject({
    required final Offset objectDistanceToOrigin,
  }) {
    final distanceToOrigin = objectDistanceToOrigin.toVector2() - origin;
    return getCellByDistance(distanceToOrigin);
  }

  TilePointType getCurrentCellByTap(final Vector2 canvasPosition) {
    final distanceToOrigin = getCurrentPositionByTap(canvasPosition);
    return getCellByDistance(distanceToOrigin);
  }

  Vector2 getCurrentPositionByTap(final Vector2 canvasPosition) =>
      canvasPosition - origin;
}
