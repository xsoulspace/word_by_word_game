import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
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
    final playerPosition =
        player?.shiftedHitbox?.bottomLeft.translate(0, -kTileDimensionDouble);

    if (playerPosition == null) return;
    final drawableObjects = <_PlacingSurfaceComponent>[];
    final originUtils = OriginVectorUtils.use(origin);

    void checkAndVerify({
      required final CellPointModel canvasCell,
      required final int index,
    }) {
      final gameCellPoint =
          originUtils.getCurrentCellByTap(canvasCell.toVector2());
      final collisionConsequences =
          game.dto.canvasCubit.checkIsCollidingWithTiles(
        hitboxCells: [gameCellPoint.toCellPoint()],
      );

      if (collisionConsequences.isEmpty) {
        drawableObjects.add(
          _PlacingSurfaceComponent(
            position: canvasCell.toVector2(),
            parent: this,
            index: index,
          ),
        );
      }
    }

    /// we need to check left and right
    for (var i = 0; i <= 10; i++) {
      final x = (i < 5 ? -i : i - 5).toDouble();
      final xTile = x * kTileDimension;
      final shiftedCell = playerPosition.translate(xTile, 0);
      checkAndVerify(
        canvasCell: shiftedCell.toCellPoint(),
        index: i,
      );
    }

    return addAll(drawableObjects);
  }

  int? _selectedIndex;
  // ignore: use_setters_to_change_properties
  void _onSelect(final int index) {
    _selectedIndex = index;
    // TODO(arenukvern): change status
  }

  void _deleteObjects() {
    removeAll(children);
    _selectedIndex = null;
  }
}

class _PlacingSurfaceComponent extends PositionComponent
    with HoverCallbacks, TapCallbacks {
  _PlacingSurfaceComponent({
    required this.parent,
    required this.index,
    super.position,
  }) : super() {
    _setHovered(false);
    size = Vector2(kTileDimensionDouble, kTileDimensionDouble);
  }
  final int index;
  @override
  final BuildingSurfaceDrawer parent;

  @override
  void onHoverEnter() {
    _setHovered(true);
    super.onHoverEnter();
  }

  @override
  void onHoverExit() {
    _setHovered(false);
    super.onHoverExit();
  }

  bool _isHovered = false;
  void _setHovered(final bool hovered) {
    _isHovered = hovered;
    if (hovered) {
      _borderPaint
        ..color = Palette.blue.color
        ..strokeWidth = 4;
    } else {
      _borderPaint
        ..color = Palette.blue.color.withOpacity(0.3)
        ..strokeWidth = 0.5;
    }
  }

  final _objectPaint = material.Paint()
    ..color = Palette.blue.color
    ..style = material.PaintingStyle.fill;
  final _borderPaint = material.Paint()..style = material.PaintingStyle.stroke;
  bool get _isSelected => index == parent._selectedIndex;
  late final _rect = Offset.zero & size.toSize();
  @override
  void render(final Canvas canvas) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        _rect,
        const Radius.circular(4),
      ),
      _borderPaint,
    );
    // TODO(arenukvern): draw a building from type
    if (_isSelected) canvas.drawRect(_rect, _objectPaint);

    super.render(canvas);
  }

  @override
  void onTapUp(final TapUpEvent event) {
    parent._onSelect(index);
    super.onTapUp(event);
  }
}
