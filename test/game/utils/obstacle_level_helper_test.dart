import 'package:flame/extensions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tiled/tiled.dart';
import 'package:word_by_word_game/subgames/quick_game/utils/utils.dart';

void main() {
  group('ObstacleLevelHelper', () {
    const groundTileId = 1;
    const upperGroundTileId = 2;
    const transparentTileId = 0;

    const groundGid = Gid(
      groundTileId,
      Flips(false, false, false, false),
    );
    const transparentGid = Gid(
      transparentTileId,
      Flips(false, false, false, false),
    );

    final groundRow = [
      groundGid,
      groundGid,
      groundGid,
      transparentGid,
      transparentGid
    ];
    const upperGid = Gid(
      upperGroundTileId,
      Flips(false, false, false, false),
    );
    final upperRow = [
      upperGid,
      transparentGid,
      upperGid,
      transparentGid,
      transparentGid
    ];
    const tileDimension = 16.0;

    final obstacleLevelHelper = ObstacleLevelHelper(
      sideTileWidth: 1,
      tileData: [upperRow, groundRow],
      tiledObjects: {
        groundGid.tile: TiledObject(
          id: groundTileId,
          width: tileDimension,

          /// 16 + 4
          height: 4,
        ),
        upperGid.tile: TiledObject(
          id: upperGroundTileId,
          x: 4,
          y: 2,
          width: 8,
          height: 14,
        ),
      },
    )..onLoad();
    test('checkCollision', () {
      expect(obstacleLevelHelper.checkCollision(Vector2(40, 12)), isFalse);
      expect(obstacleLevelHelper.checkCollision(Vector2(14, 12)), isTrue);
    });
    test('checkSideCollision', () {
      expect(
        obstacleLevelHelper.checkSideCollision(Vector2(12, 12)),
        equals(const SideCollisionEvent(hasLeftSideCollision: true)),
      );
      expect(
        obstacleLevelHelper.checkSideCollision(Vector2((16 * 5) - 6, 12)),
        equals(const SideCollisionEvent(hasRightSideCollision: true)),
      );
    });
  });
}
