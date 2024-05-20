import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart' as material;
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/gui_building_notifier.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

/// Component to build something
class BuildingSurfaceDrawer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  static material.Paint get _paint => Palette.grey.withAlpha(60).paint();
  @override
  FutureOr<void> onLoad() {
    game.dto.buildingCubit.addListener(_handleGuiChanges);

    return super.onLoad();
  }

  @override
  void onRemove() {
    game.dto.buildingCubit.removeListener(_handleGuiChanges);
    super.onRemove();
  }

  GuiBuildingStatusEnum _lastState = GuiBuildingStatusEnum.idle;
  void _handleGuiChanges() {
    final newState = game.dto.buildingCubit.value;
    if (_lastState == newState.status) return;
    _lastState = newState.status;
    if (newState.status == GuiBuildingStatusEnum.placing) {
      unawaited(_checkAndAddObjects());
    } else {
      _deleteObjects();
    }
  }

  /// Logic:
  ///
  /// Get player position
  /// Get possible building tiles
  /// Check which tiles available to be shown
  /// Draw lines
  Future<void> _checkAndAddObjects() async {
    final playerPosition = player?.position;
    if (playerPosition == null) return;
    final drawableObjects = <_PlacingSurfaceComponent>[];
    final originUtils = OriginVectorUtils.use(origin);

    void checkAndVerify({required final CellPointModel canvasCell}) {
      final gameCellPoint =
          originUtils.getCurrentCellByTap(canvasCell.toVector2());
      final collisionConsequences =
          game.dto.canvasCubit.checkIsCollidingWithTiles(
        hitboxCells: [gameCellPoint.toCellPoint()],
      );

      if (collisionConsequences.isEmpty) {
        drawableObjects.add(
          _PlacingSurfaceComponent(position: canvasCell.toVector2()),
        );
      }
    }

    /// we need to check left and right
    for (var i = 0; i <= 10; i++) {
      final x = (i < 5 ? -i : i - 5).toDouble();
      final xTile = x * kTileDimension;
      final shiftedCell = playerPosition.translate(xTile, 0);
      checkAndVerify(canvasCell: shiftedCell.toCellPoint());
    }

    return addAll(drawableObjects);
  }

  void _deleteObjects() => removeAll(children);
}

class _PlacingSurfaceComponent extends PositionComponent {
  _PlacingSurfaceComponent({
    super.position,
  }) : super() {
    size = Vector2(kTileDimensionDouble, kTileDimensionDouble);
  }
  static final paint = material.Paint()
    ..color = Palette.blue.color
    ..strokeWidth = 2
    ..style = material.PaintingStyle.stroke;

  @override
  void render(final Canvas canvas) {
    canvas.drawRect(Rect.fromPoints(Offset.zero, size.toOffset()), paint);

    super.render(canvas);
  }
}
