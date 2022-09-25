import 'package:collection/collection.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:tiled/tiled.dart';

class PolygonCreator {
  PolygonCreator({
    required this.tileData,
    required this.tiledObjects,
    this.tileDimension = 16,
  });

  /// Root list is a column, and the inner lists are rows.
  final List<List<Gid>> tileData;
  final Map<Gid, TiledObject> tiledObjects;
  final int tileDimension;
  List<Vector2> createPolygon() {
    /// column -> row -> tile points
    final rawPoints = <List<TilePoints?>>[];
    final columns = tileData;

    /// get all points relative to the map
    for (int columnIndex = 0; columnIndex < columns.length; columnIndex++) {
      final row = columns[columnIndex];

      final rowPoints = <TilePoints?>[];
      for (int tileIndex = 0; tileIndex < row.length; tileIndex++) {
        final gid = row[tileIndex];
        final tiledObject = tiledObjects[gid];
        if (tiledObject == null) {
          rowPoints.add(null);
          continue;
        }
        if (tiledObject.isRectangle) {
          final x = tiledObject.x;
          final y = tiledObject.y;
          final height = tiledObject.height + y;
          final width = tiledObject.width + x;

          /// relative points to the tile
          final Vector2 topLeft = Vector2(x, y);
          final Vector2 bottomLeft = Vector2(x, height);
          final Vector2 bottomRight = Vector2(width, height);
          final Vector2 topRight = Vector2(width, y);

          final mapX = (columnIndex * tileDimension).toDouble();
          final mapY = (tileIndex * tileDimension).toDouble();

          /// relative points to the tile map
          final mapVector = Vector2(mapX, mapY);

          final tilePoints = TilePoints(
            bottomLeft: bottomLeft..add(mapVector),
            bottomRight: bottomRight..add(mapVector),
            topLeft: topLeft..add(mapVector),
            topRight: topRight..add(mapVector),
          );
          rowPoints.add(tilePoints);
        } else {
          // TODO(arenukvern): description
          throw UnimplementedError();
        }
      }
      rawPoints.add(rowPoints);
    }

    /// order map points to draw a polygon in counter-clockwise fashion
    /// (top right, top left, bottom left, bottom right)
    final vertices = <Vector2>[];

    while (rawPoints.isNotEmpty) {
      /// extract all left side points
      /// remove all left side points
      /// extract all bottom side points
      for (final row in rawPoints) {
        final firstTilePoints =
            row.firstWhereOrNull((final points) => points != null);
        if (firstTilePoints == null) continue;
        final leftSidePoints = firstTilePoints.leftSide;
        vertices.addAll(leftSidePoints);
      }
      final bottomRow = rawPoints.reversed
          .toList()
          .firstWhereOrNull((final row) => row.whereNotNull().isNotEmpty)!;

      for (final tilePoints in bottomRow) {
        ////
        if (tilePoints == null) continue;
        vertices.addAll([tilePoints.bottomLeft, tilePoints.bottomRight]);
      }
    }

    return vertices;
  }
}

class TilePoints {
  TilePoints({
    required this.bottomLeft,
    required this.topLeft,
    required this.bottomRight,
    required this.topRight,
  });
  final Vector2 topLeft;
  final Vector2 bottomLeft;
  final Vector2 bottomRight;
  final Vector2 topRight;
  List<Vector2> get leftSide => [topLeft, bottomLeft];
}
