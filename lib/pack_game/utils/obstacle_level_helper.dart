import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:tiled/tiled.dart';

class ObstacleLevelHelper {
  ObstacleLevelHelper({
    required this.tileData,
    required this.tiledObjects,
    required this.tiles,
    this.tileDimension = 16,
  });

  /// Root list is a rows, and the inner lists are columns.
  final List<List<Gid>> tileData;
  final Map<Gid, TiledObject> tiledObjects;
  final Map<Gid, Tile> tiles;
  final int tileDimension;
  void onLoad() {}
  bool checkCollision(final Vector2 position) {
    final x = _roundToTileDimension(position.x);
    final y = _roundToTileDimension(position.y);
    final gid = tileData[y][x];
    return gid.tile != 0;
  }

  TiledObject? getCollisionTiledObject(final Vector2 position) {
    final x = _roundToTileDimension(position.x);
    final y = _roundToTileDimension(position.y);
    final gid = tileData[y][x];
    return tiledObjects[gid.tile];
  }

  Tile? getCollisionTile(final Vector2 position) {
    final x = _roundToTileDimension(position.x);
    final y = _roundToTileDimension(position.y);
    final gid = tileData[y][x];
    return tiles[gid.tile];
  }

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
