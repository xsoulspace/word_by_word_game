import 'dart:async';
import 'dart:ui' as ui;

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shaders/flutter_shaders.dart';
import 'package:word_by_word_game/subgames/experiments/shaders.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

class SnowWeatherLayer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  SnowWeatherLayer({
    this.color = Colors.grey,
  });

  final Color color;
  double get density => 0.02;
  double get speed => 0.0005;
  Offset get windDirection => const Offset(1, 0);
  ui.FragmentShader? _shader;
  final _paint = Paint();
  double _time = 0;

  void _updateShader(final double dt) {
    _time += dt; // Scale time by speed
    _shader?.setFloatUniforms(
      (final setter) => setter
        ..setFloat(_time)
        ..setSize(game.size.toSize()),
    );
  }

  @override
  void update(final double dt) {
    _updateShader(dt);
    super.update(dt);
  }

  @override
  FutureOr<void> onLoad() async {
    final program = await ui.FragmentProgram.fromAsset(
      'assets/shaders/snow_shader.frag',
    );
    final image = await loadShaderTexture();
    _shader = program.fragmentShader();
    _updateShader(0);
    _paint.shader = _shader;
    return super.onLoad();
  }

  @override
  void render(final Canvas canvas) {
    // canvas.drawRect(Rect.fromLTWH(0, 0, game.size.x, game.size.y), _paint);
  }
}

class FogWeatherLayer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  FogWeatherLayer({
    this.color = Colors.grey,
  });

  final Color color;
  double get density => 0.02;
  double get speed => 0.0005;
  Offset get windDirection => const Offset(1, 0);
  ui.FragmentShader? _shader;
  final _paint = Paint();
  final double _time = 0;

  void _updateShader(final double dt) {
    // _time += dt; // Scale time by speed
    _shader?.setFloatUniforms(
      (final setter) => setter
        ..setFloat(_time)
        ..setSize(game.size.toSize())
        ..setOffset(
          (player?.screenVector2 ?? Offset.zero) +
              Offset(
                (player?.shiftedScreenHitbox?.width ?? 1.0) / 2,
                (player?.shiftedScreenHitbox?.height ?? 1.0) / 2,
              ),
        ),
    );
  }

  @override
  void update(final double dt) {
    _updateShader(dt);
    super.update(dt);
  }

  @override
  FutureOr<void> onLoad() async {
    final program = await ui.FragmentProgram.fromAsset(
      'assets/shaders/fog_shader.frag',
    );
    final image = await loadShaderTexture();
    _shader = program.fragmentShader();
    _updateShader(0);
    _paint.shader = _shader;
    return super.onLoad();
  }

  @override
  void render(final Canvas canvas) {
    canvas.drawRect(Rect.fromLTWH(0, 0, game.size.x, game.size.y), _paint);
  }
}
