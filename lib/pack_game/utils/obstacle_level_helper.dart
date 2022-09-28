import 'package:collection/collection.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:tiled/tiled.dart';

class ObstacleLevelHelper {
  ObstacleLevelHelper({
    required this.tileData,
    required this.tiledObjects,
    this.tileDimension = 16,
  });

  factory ObstacleLevelHelper.fromMapComponent({
    required final TiledComponent<FlameGame> tiledMapComponent,
    required final int tileDimension,
  }) {
    final tileObstaclesLayer =
        tiledMapComponent.tileMap.getLayer<TileLayer>('tile_obstacles');
    final tileData = tileObstaclesLayer?.tileData;

    final baseTileset = tiledMapComponent.tileMap.map.tilesets[0];
    final tiledObjectsEntries = baseTileset.tiles.map((final e) {
      final objectGroup = e.objectGroup;
      if (objectGroup is! ObjectGroup) return null;
      final obj = objectGroup.objects[0];
      if (obj.name == 'obstacle') return MapEntry(obj.id, obj);
      return null;
    }).whereNotNull();

    return ObstacleLevelHelper(
      tileData: tileData ?? [],
      tiledObjects: Map.fromEntries(tiledObjectsEntries),
      tileDimension: tileDimension,
    );
  }

  /// Root list is a rows, and the inner lists are columns.
  final List<List<Gid>> tileData;

  /// int is GID number
  final Map<int, TiledObject> tiledObjects;
  final int tileDimension;
  void onLoad() {}

  bool checkCollision(final Vector2 position) {
    /// horizontal index
    final columnIndex = _roundToTileDimension(position.x);

    /// vertical index
    final rowIndex = _roundToTileDimension(position.y);
    if (rowIndex > tileData.length - 1) return false;
    final row = tileData[rowIndex];
    if (columnIndex > row.length - 1) return false;
    final gid = row[columnIndex];
    return gid.tile != 0;
  }

  TiledObject? getCollisionTiledObject(final Vector2 position) {
    /// horizontal index
    final columnIndex = _roundToTileDimension(position.x);

    /// vertical index
    final rowIndex = _roundToTileDimension(position.y);
    final gid = tileData[rowIndex][columnIndex];
    return tiledObjects[gid.tile];
  }

  // Tile? getCollisionTile(final Vector2 position) {
  //   final x = _roundToTileDimension(position.x);
  //   final y = _roundToTileDimension(position.y);
  //   final gid = tileData[y][x];
  //   return tiles[gid];
  // }

  int _roundToTileDimension(final double n) {
    return _roundToMultiple(n.toInt(), tileDimension) ~/ tileDimension;
  }

  /// Rounds [n] to the nearest multiple of [multiple].
  /// https://stackoverflow.com/questions/64548983/round-a-number-to-nearest-100-in-flutter
  /// https://stackoverflow.com/questions/71776534/how-to-round-integer-number-using-precision-in-flutter
  int _roundToMultiple(final int n, final int multiple) {
    final int a = n % multiple;
    if (a > 0) {
      return (n ~/ multiple) * multiple + multiple;
    }
    return n;
  }
}
