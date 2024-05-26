import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart' as material;
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
  })  : position = data.position.toOffset(),
        distanceToOrigin = data.distanceToOrigin.toOffset(),
        distanceToTileLeftTopCorner =
            data.distanceToTileLeftTopCorner.toOffset(),
        onChanged = onPositionChanged;

  final material.ValueChanged<RenderObjectModel>? onChanged;
  Gid get gid => data.id;
  TileId get tileId => data.tileId;
  final RenderObjectModel data;

  Offset position;
  Offset distanceToOrigin;
  Offset distanceToTileLeftTopCorner;

  /// relative cell, depends from the origin position and
  /// screen changes
  math.Point<int> _cell = const math.Point<int>(0, 0);

  /// should never be changed outside
  math.Point<int> get cell => _cell;

  /// absolute coordinate for screen
  math.Point<int> _absoluteCell = const math.Point<int>(0, 0);

  /// should never be changed outside
  math.Point<int> get absoluteCell => _absoluteCell;

  void _updateDistanceToOrigin() {
    distanceToOrigin = position - origin.toOffset();
    final cellTopLeftPosition = Offset(
      (cell.x * kTileDimension).toDouble(),
      (cell.y * kTileDimension).toDouble(),
    );
    distanceToTileLeftTopCorner = distanceToOrigin - cellTopLeftPosition;
    final originUtils = OriginVectorUtils.use(origin);
    _absoluteCell = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin,
    );
    _cell = originUtils.getCurrentCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin,
    );
  }

  @override
  FutureOr<void> onLoad() {
    _updateDistanceToOrigin();
    return super.onLoad();
  }

  Rect? _hitboxRect;
  // double get bottomRightPosition => _hitboxRect?.height;
  Rect? get shiftedHitbox => _hitboxRect?.shift(position);
  List<CellPointModel> get hitboxCells {
    final hitbox = shiftedHitbox;
    if (hitbox == null) {
      return [];
    }
    final originUtils = OriginVectorUtils.use(origin);
    final topLeft = absoluteCell.toCellPoint();
    final topRight = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin + Offset(hitbox.width, 0),
    );
    final bottomRight = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin:
          distanceToOrigin + Offset(hitbox.width, hitbox.height),
    );
    final bottomLeft = originUtils.getAbsoluteCellByCanvasObject(
      objectDistanceToOrigin: distanceToOrigin + Offset(0, hitbox.height),
    );
    return [
      topLeft,
      topRight.toCellPoint(),
      bottomRight.toCellPoint(),
      bottomLeft.toCellPoint(),
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
    _hitboxRect ??= Rect.fromLTWH(
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
      position,
      Palette.white.paint(),
    );
    super.render(canvas);
  }

  void _savePosition() {
    onChanged?.call(
      data.copyWith(
        position: position.toSerializedVector2(),
        distanceToOrigin: distanceToOrigin.toSerializedVector2(),
        distanceToTileLeftTopCorner:
            distanceToTileLeftTopCorner.toSerializedVector2(),
      ),
    );
  }

  void onOriginUpdate() {
    _updatePosition();
    _savePosition();
  }

  void setPosition(final Offset newPosition) {
    position = newPosition;
    _updateDistanceToOrigin();
    _savePosition();
  }

  void _updatePosition() {
    position = origin.toOffset() + distanceToOrigin;
  }

  @override
  bool containsLocalPoint(final Vector2 point) =>
      _hitboxRect?.containsPoint(point) ?? false;
}
