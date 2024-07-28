import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart' as material;
import 'package:map_editor/state/blocs/editor/editor.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:map_editor/ui/renderer/renderer.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

mixin HasCanvasResourcesLoaderRef on Component, HasGameRef<CanvasRendererGame> {
  Image getImage(final String path) => game.images.fromCache(path);
}

class GameCanvasObject extends Component
    with
        TapCallbacks,
        HasGameRef<CanvasRendererGame>,
        HasCanvasRendererRef,
        HasCanvasResourcesLoaderRef {
  GameCanvasObject.fromRenderObject({
    required final material.ValueChanged<RenderObjectModel> onPositionChanged,
    required this.data,
  })  : screenVector2 = data.position.toOffset(),
        gameVector2 =
            GameVector2.fromMapVector2(data.distanceToOrigin.toVector2()),
        onChanged = onPositionChanged {
    _updateDistanceToOrigin();
  }

  final material.ValueChanged<RenderObjectModel>? onChanged;
  Gid get gid => data.id;
  TileId get tileId => data.tileId;
  final RenderObjectModel data;

  Offset screenVector2;
  GameVector2 gameVector2;

  /// top-left position
  math.Point<int> get topLeftTileMapCell => gameVector2.toMapTileCell();

  void _updateDistanceToOrigin() => gameVector2 = GameVector2.fromScreenVector2(
        screenVector2: screenVector2.toVector2(),
        origins: origins,
      );

  @override
  FutureOr<void> onLoad() {
    _updateDistanceToOrigin();
    return super.onLoad();
  }

  Rect? _hitboxScreenRect;
  // double get bottomRightPosition => _hitboxRect?.height;
  Rect? get shiftedScreenHitbox => _hitboxScreenRect?.shift(screenVector2);
  List<CellPointModel> get hitboxMapCells {
    final hitbox = shiftedScreenHitbox;
    if (hitbox == null) return [];

    final topLeft = topLeftTileMapCell.toCellPoint();
    final topRight =
        GameVector2.fromMapVector2(Vector2(hitbox.width, 0)) + gameVector2;
    final bottomLeft =
        GameVector2.fromMapVector2(Vector2(0, hitbox.height)) + gameVector2;
    final bottomRight =
        GameVector2.fromMapVector2(Vector2(hitbox.width, hitbox.height)) +
            gameVector2;

    return [
      topLeft,
      topRight.toMapTileCell().toCellPoint(),
      bottomRight.toMapTileCell().toCellPoint(),
      bottomLeft.toMapTileCell().toCellPoint(),
    ];
  }

  @override
  void render(final Canvas canvas) {
    if (tileId.isEmpty) return super.render(canvas);
    final resourceTile = allTiles[tileId]!;
    // TODO(antmalofeev): replace with listener
    final renderObject = canvasCubit.objects[gid]!;

    final animationEntry =
        resourceTile.behaviourPaths[renderObject.animationBehaviour]!;

    final tilePath = animationEntry.currentFramePath;
    final tileImage = getImage(tilePath);
    _hitboxScreenRect ??= Rect.fromLTWH(
      0,
      0,
      tileImage.width.toDouble(),
      tileImage.height.toDouble(),
    );

    /// to highlight hitbox, uncomment lines below
    // if (debugMode) {
    // final hitbox = shiftedHitbox;
    // if (hitbox != null) {
    //   canvas.drawRect(
    //     hitbox,
    //     Palette.red90.paint(),
    //   );
    // }
    // }
    canvas.drawImage(
      tileImage,
      screenVector2,
      Palette.white.paint(),
    );
    super.render(canvas);
  }

  void _savePosition() {
    onChanged?.call(
      data.copyWith(
        position: screenVector2.toSerializedVector2(),
        distanceToOrigin: gameVector2.toSerializedMapVector2(),
      ),
    );
  }

  void onOriginUpdate() {
    _updatePosition();
    _savePosition();
  }

  void setScreenPosition(final Offset newPosition) {
    screenVector2 = newPosition;
    _updateDistanceToOrigin();
    _savePosition();
  }

  void _updatePosition() =>
      screenVector2 = gameVector2.toScreenVector2(origins).toOffset();

  @override
  bool containsLocalPoint(final Vector2 point) =>
      _hitboxScreenRect?.containsPoint(point) ?? false;
}
