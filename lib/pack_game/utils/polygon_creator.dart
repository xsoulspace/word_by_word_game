import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:tiled/tiled.dart';

/// should not be used
class PolygonCreator {
  PolygonCreator({
    required this.tileData,
    required this.tiledObjects,
    this.tileDimension = 16,
  });

  /// Root list is a rows, and the inner lists are columns.
  final List<List<Gid>> tileData;
  final Map<Gid, TiledObject> tiledObjects;
  final int tileDimension;

  List<Vector2>? createPolygon() {
    /// column -> row -> tile points
    final mapRows = <List<TilePoints?>?>[];
    final originalRows = [...tileData];

    /// get all points relative to the map
    for (int rowIndex = 0; rowIndex < originalRows.length; rowIndex++) {
      final row = originalRows[rowIndex];

      final rowPoints = <TilePoints?>[];
      for (int columnIndex = 0; columnIndex < row.length; columnIndex++) {
        final gid = row[columnIndex];
        final isTransparent = gid.tile == 0;
        final tiledObject = tiledObjects[gid];
        if (tiledObject == null || isTransparent) {
          rowPoints.add(null);
          continue;
        }
        if (tiledObject.isRectangle) {
          final x = tiledObject.x;
          final y = tiledObject.y;
          final height = tiledObject.height + y;
          final width = tiledObject.width + x;

          /// relative points to the tile
          final topLeft = Vector2(x, y);
          final bottomLeft = Vector2(x, height);
          final bottomRight = Vector2(width, height);
          final topRight = Vector2(width, y);

          final mapX = (columnIndex * tileDimension).toDouble();
          final mapY = (rowIndex * tileDimension).toDouble();

          /// relative points to the tile map
          final mapVector = Vector2(mapX, mapY);

          final tilePoints = TilePoints(
            gid: gid,
            rows: [
              [topLeft, topRight].map((final e) => e..add(mapVector)).toList(),
              [bottomLeft, bottomRight]
                  .map((final e) => e..add(mapVector))
                  .toList(),
            ],
          );
          rowPoints.add(tilePoints);
        } else {
          // TODO(arenukvern): description
          throw UnimplementedError();
        }
      }
      mapRows.add(rowPoints);
    }

    final checkedRows = [...mapRows];

    /// find point
    GidPoint? getStartPoint() {
      bool rowsNotEmpty = true;
      while (rowsNotEmpty) {
        for (int rowIndex = 0; rowIndex < checkedRows.length; rowIndex++) {
          final row = checkedRows[rowIndex];
          if (row == null) {
            continue;
          }

          /// start from last to first

          for (int columnIndex = row.length - 1;
              columnIndex >= 0;
              columnIndex--) {
            final tilePoints = row[columnIndex];
            if (tilePoints == null) {
              row.removeLast();
            } else {
              return GidPoint(
                tilePoints: tilePoints,
                columnIndex: columnIndex,
                rowIndex: rowIndex,
              );
            }
          }
        }
        rowsNotEmpty = false;
      }
      return null;
    }

    final firstPoint = getStartPoint()!;

    void getIntersections(final GidPoint point) {
      /// find neighbours points around the start point
      final top = mapRows[point.rowIndex - 1]?[point.columnIndex];
      final topLeft = mapRows[point.rowIndex - 1]?[point.columnIndex - 1];
      final topRight = mapRows[point.rowIndex - 1]?[point.columnIndex + 1];

      final bottom = mapRows[point.rowIndex + 1]?[point.columnIndex];
      final bottomLeft = mapRows[point.rowIndex + 1]?[point.columnIndex - 1];
      final bottomRight = mapRows[point.rowIndex + 1]?[point.columnIndex + 1];
    }

    getIntersections(firstPoint);
    return null;
  }
}

class TilePoints {
  TilePoints({
    required this.rows,
    required this.gid,
  });
  final Gid gid;
  final List<List<Vector2>> rows;
  List<Vector2> get leftSide {
    final column = <Vector2>[];
    for (final row in rows) {
      column.add(row.first);
    }
    return column;
  }
}

class GidPoint {
  GidPoint({
    required this.columnIndex,
    required this.rowIndex,
    required this.tilePoints,
  });
  final int columnIndex;
  final int rowIndex;
  final TilePoints tilePoints;
}
