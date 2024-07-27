import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame/input.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart' as material;
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/gui_building_notifier.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/components.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

/// Component to build something
class BuildingSurfaceDrawer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  GuiBuildingNotifier get _buildingCubit => game.dto.buildingCubit;
  @override
  FutureOr<void> onLoad() {
    _buildingCubit.addListener(_handleGuiChanges);
    return super.onLoad();
  }

  @override
  void onRemove() {
    _buildingCubit.removeListener(_handleGuiChanges);
    super.onRemove();
  }

  GuiBuildingStatusEnum _lastState = GuiBuildingStatusEnum.idle;
  void _handleGuiChanges() {
    final newState = _buildingCubit.value;
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
    final originUtils = OriginVectorUtils.use(origin);

    final playerPosition = player?.leftCellPosition;

    if (playerPosition == null) return;

    final drawableObjects = <_PlacingSurfaceComponent>[];

    void checkAndVerify({
      required final CellPointModel canvasCell,
      required final int index,
    }) {
      final (gameCellPoint, canvasPosition) = originUtils.getGameCellPoint(
        canvasCell: canvasCell,
        offsetOrigin: getOffsetOrigin(),
      );
      final correctedGameCellPoint = gameCellPoint + const CellPointModel(1, 0);
      if (canvasPosition == null) return;
      final collisionConsequences = canvasCubit.checkIsCollidingWithTiles(
        hitboxCells: [correctedGameCellPoint],
      );

      // TODO(arenukvern): description

      final distanceToOrigin = originUtils.getCurrentPositionByTap(
        canvasPosition,
      );

      if (collisionConsequences.isEmpty) {
        drawableObjects.add(
          _PlacingSurfaceComponent(
            onBuild: _buildingCubit.confirmPlacing,
            onCancel: () => _selectedIndex = null,
            position: canvasPosition,
            parent: this,
            index: index,
            type: _buildingCubit.value.type,
            onSelect: () => _onSelect(
              index: index,
              // distanceToOrigin: canvasPosition.toSerializedVector2(),
              distanceToOrigin: distanceToOrigin.toSerializedVector2(),
              cellPoint: correctedGameCellPoint,
            ),
          ),
        );
      }
    }

    /// we need to check left and right
    for (final (i: i, :xTile) in kFocusableTilesList) {
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
  void _onSelect({
    required final int index,
    required final SerializedVector2 distanceToOrigin,
    required final CellPointModel cellPoint,
  }) {
    _selectedIndex = index;
    game.dto.buildingCubit.usePlace(
      cellPoint: cellPoint,
      distanceToOrigin: distanceToOrigin,
    );
  }

  void _deleteObjects() {
    removeAll(children);
    _selectedIndex = null;
  }
}

class _PlacingSurfaceComponent extends PositionComponent
    with
        HoverCallbacks,
        TapCallbacks,
        HasGameRef<CanvasRendererGame>,
        HasCanvasResourcesLoaderRef {
  _PlacingSurfaceComponent({
    required this.parent,
    required this.index,
    required this.onSelect,
    required this.onCancel,
    required this.onBuild,
    required this.type,
    super.position,
  }) : super() {
    size = Vector2(kTileDimensionDouble, kTileDimensionDouble);
  }
  final int index;
  final VoidCallback onCancel;
  final VoidCallback onBuild;
  bool _isSelected = false;
  final GuiBuildingTypeEnum type;
  @override
  final BuildingSurfaceDrawer parent;
  final VoidCallback onSelect;

  final _objectPaint = material.Paint()
    ..color = Palette.blue.color
    ..style = material.PaintingStyle.fill;

  final _borderPaint = material.Paint()
    ..style = material.PaintingStyle.stroke
    ..color = Palette.blue.color.withOpacity(0.3)
    ..strokeWidth = 0.5;
  late final _selectedBorderPaint = material.Paint()
    ..style = material.PaintingStyle.stroke
    ..color = Palette.blue.color
    ..strokeWidth = 4;
  late final _rect = Offset.zero & size.toSize();
  PresetTileResource get _tile =>
      game.dto.canvasCubit.state.tileResources.objects[type.tileId]!;

  @override
  void update(final double dt) {
    final newIsSelected = index == parent._selectedIndex;
    if (newIsSelected != _isSelected) {
      _isSelected = newIsSelected;
      if (_isSelected) {
        unawaited(addAll(_buttons ??= _createButtons()));
      } else {
        final buttons = _buttons;
        if (buttons != null) {
          _buttons = null;
          removeAll(buttons);
        }
      }
    }
    super.update(dt);
  }

  Vector2 get _buttonSize => Vector2(80, 40);
  double get _buttonPosition => kTileDimensionDouble + (_buttonSize.y / 2) + 12;
  List<GuiFlatButton>? _buttons;
  List<GuiFlatButton> _createButtons() => [
        GuiFlatButton(
          'Cancel',
          size: _buttonSize,
          color: material.Colors.red,
          position: Vector2(0, _buttonPosition),
          onReleased: onCancel,
        ),
        GuiFlatButton(
          'Build',
          size: _buttonSize,
          position: Vector2(_buttonSize.x + 8, _buttonPosition),
          color: material.Colors.green,
          onReleased: onBuild,
        ),
      ];

  @override
  void render(final Canvas canvas) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        _rect,
        const Radius.circular(4),
      ),
      isHovered ? _selectedBorderPaint : _borderPaint,
    );
    if (isHovered || _isSelected) {
      canvas.drawImage(
        getImage(
          _tile.behaviourPaths[TileBehaviourType.idle]!.currentFramePath,
        ),
        _rect.topLeft,
        _objectPaint,
      );
    }

    super.render(canvas);
  }

  @override
  void onTapUp(final TapUpEvent event) {
    onSelect();
    super.onTapUp(event);
  }
}

class GuiFlatButton extends ButtonComponent {
  GuiFlatButton(
    final String text, {
    required final Color color,
    super.size,
    super.onReleased,
    super.position,
  }) : super(
          button: GuiButtonBackground(material.Colors.blue[300]!),
          buttonDown: GuiButtonBackground(color),
          children: [
            TextComponent(
              text: text,
              textRenderer: TextPaint(
                style: TextStyle(
                  fontSize: 0.5 * size!.y,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
              position: size / 2.0,
              anchor: Anchor.center,
            ),
          ],
          anchor: Anchor.center,
        );
}

class GuiButtonBackground extends PositionComponent
    with HasAncestor<GuiFlatButton> {
  GuiButtonBackground(final Color color) {
    _paint.color = color;
  }
  final _paint = Paint()..style = PaintingStyle.stroke;

  late double cornerRadius;

  @override
  void onMount() {
    super.onMount();
    size = ancestor.size;
    cornerRadius = 0.3 * size.y;
    _paint.strokeWidth = 0.05 * size.y;
  }

  late final _background = RRect.fromRectAndRadius(
    size.toRect(),
    Radius.circular(cornerRadius),
  );

  @override
  void render(final Canvas canvas) {
    canvas.drawRRect(_background, _paint);
  }
}
