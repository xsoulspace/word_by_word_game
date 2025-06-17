import 'dart:math' as math;

import 'package:flame/extensions.dart';
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
    required final Vector2 screenVector2,
    required final GameOrigins origins,
  }) {
    final mapVector2 = screenVector2 - origins.mapOrigin;
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

  TilePointType toMapTileCell({final bool isCorrectNegatives = true}) {
    int y = mapVector2.y ~/ kTileDimension;
    if (mapVector2.y < 0 && isCorrectNegatives) y--;

    int x = mapVector2.x ~/ kTileDimension;
    if (mapVector2.x < 0 && isCorrectNegatives) x--;

    return math.Point(x, y);
  }

  SerializedVector2 toSerializedMapVector2() =>
      SerializedVector2(x: mapVector2.x, y: mapVector2.y);
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
