import 'dart:async';
import 'dart:ui' as ui;

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shaders/flutter_shaders.dart';
import 'package:word_by_word_game/subgames/experiments/shaders.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class FogWeatherLayer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  FogWeatherLayer({
    this.color = Colors.grey,
  });

  final Color color;
  ui.FragmentShader? _shader;
  final _paint = Paint();
  double _time = 0;

  void _updateShader() {
    _time += 0.016;
    _shader?.setFloatUniforms(
      (final setter) => setter
        ..setFloat(_time)
        ..setSize(game.size.toSize())
        ..setOffset(player?.screenVector2 ?? Offset.zero)
        ..setFloat(0.4),
    );
  }

  @override
  void update(final double dt) {
    _updateShader();
    super.update(dt);
  }

  @override
  FutureOr<void> onLoad() async {
    final program = await ui.FragmentProgram.fromAsset(
      'assets/shaders/fog_shader.frag',
    );
    final image = await loadShaderTexture();
    _shader = program.fragmentShader()..setImageSampler(0, image);
    _paint.shader = _shader;
    return super.onLoad();
  }

  @override
  void render(final Canvas canvas) {
    canvas.drawRect(Rect.fromLTWH(0, 0, game.size.x, game.size.y), _paint);
  }
}
