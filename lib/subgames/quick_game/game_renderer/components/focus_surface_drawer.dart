import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart' as material;
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/components.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

/// Component to render Focused effects
class FocusSurfaceDrawer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  GuiFocusableObjectsNotifier get _focusableObjectsNotifier =>
      game.dto.guiFocusableObjectsNotifier;
  @override
  FutureOr<void> onLoad() {
    _focusableObjectsNotifier.addListener(_handleGuiChanges);
    return super.onLoad();
  }

  @override
  void onRemove() {
    _focusableObjectsNotifier.removeListener(_handleGuiChanges);
    super.onRemove();
  }

  Component? _focusObject;
  Gid _focusedGid = Gid.empty;

  void _handleGuiChanges() {
    final newState = _focusableObjectsNotifier.value;
    final newFocusedGid = newState.focusedObjectId;
    if (newFocusedGid == _focusedGid) return;

    _focusedGid = newFocusedGid;
    if (newFocusedGid.isEmpty) {
      _removeFocus();
    } else {
      _removeFocus();
      unawaited(_addFocus());
    }
  }

  void _removeFocus() {
    _focusObject?.removeFromParent();
    _focusObject = null;
  }

  /// Logic:
  ///
  /// Get gid object position
  /// Draw lines
  ///
  /// Exception - we dont need to draw player positio, since
  /// it has independent class-object
  Future<void> _addFocus() async {
    final gid = _focusableObjectsNotifier.value.focusedObjectId;
    final object = canvasCubit.objects[gid];
    if (object == null) return;
    final gameVector2 =
        GameVector2.fromMapVector2(object.distanceToOrigin.toVector2());
    final obj = FocusedObjectComponent(
      position: gameVector2.toScreenVector2(origins),
    );
    add(obj);
    _focusObject = obj;
  }
}

class FocusedObjectComponent extends PositionComponent
    with
        HoverCallbacks,
        HasGameRef<CanvasRendererGame>,
        HasCanvasResourcesLoaderRef {
  FocusedObjectComponent({
    super.position,
  }) : super() {
    size = Vector2(kTileDimensionDouble, kTileDimensionDouble);
  }
  static final kBorderPaint = material.Paint()
    ..style = material.PaintingStyle.stroke
    ..color = Palette.blue.color
    ..strokeWidth = 4.5;
  static const kBorderRadius = Radius.circular(4);

  late final _rect = Offset.zero & size.toSize();

  @override
  void render(final Canvas canvas) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(_rect, kBorderRadius),
      kBorderPaint,
    );

    super.render(canvas);
  }
}
