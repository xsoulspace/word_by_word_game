import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart' as material;
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

/// Component to build something
class BuildingSurfaceDrawer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  material.Paint get _paint => Palette.grey.withAlpha(60).paint();

  void _renderLines(final material.Canvas canvas) {
    final offsetOrigin = getOffsetOrigin();
    for (var col = 0; col < tileColumns; col++) {
      final double x = offsetOrigin.x + (col * kTileDimension).toDouble();
      canvas.drawLine(Offset(x, 0), Offset(x, windowHeight), _paint);
    }

    for (var row = 0; row < tileRows; row++) {
      final double y = offsetOrigin.y + (row * kTileDimension).toDouble();
      canvas.drawLine(Offset(0, y), Offset(windowWidth, y), _paint);
    }
  }

  @override
  void render(final material.Canvas canvas) {
    super.render(canvas);
    if (game.dto.buildingCubit.isPlacing) _renderLines(canvas);
    _renderLines(canvas);
  }
}
