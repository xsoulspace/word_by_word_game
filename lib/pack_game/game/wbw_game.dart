import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';

part 'wbw_game_di.dart';

class WbwGame extends FlameGame with HasCollisionDetection {
  WbwGame.use({required final Locator read})
      : diDto = WbwGameDiDto.use(read: read);
  final WbwGameDiDto diDto;
  late final RouterComponent router;

  late final CameraComponent worldCamera;
  late final World world;
  final character = CharacterComponent();
  @override
  Future<void> onLoad() async {
    debugMode = true;
    children.register<CameraComponent>();
    world = World();
    await add(world);

    await world.addAll([character, ObstactleComponent()]);

    router = const GameRouter().init();
    await addAll([router]);
    // Enable initial overlays
    overlays.addAll([
      GameOverlaysRoutes.levelsHud.name,
    ]);
    await _initCamera();
    return super.onLoad();
  }

  Future<void> _initCamera() async {
    worldCamera = CameraComponent(
      world: world,
      viewport: MaxViewport(),
    )..setBounds(Rectangle.fromLTRB(0, 0, 1500, 1200));
    worldCamera.viewfinder
      ..visibleGameSize = Vector2(0, canvasSize.y)
      ..position = character.position
      ..anchor = Anchor.center;
    await add(worldCamera);
    worldCamera.follow(character);
  }
}

class CharacterComponent extends PositionComponent with CollisionCallbacks {
  CharacterComponent()
      : super(
          position: Vector2(15, 15),
          size: Vector2(20, 20),
        );

  final paint = Paint()..color = Colors.white;
  @override
  void render(final Canvas canvas) {
    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      paint,
    );
    super.render(canvas);
  }

  @override
  void update(final double dt) {
    // const yVelocity = 0.00;
    // const xVelocity = 0.00;
    // y -= yVelocity;
    // x += xVelocity;
    y = 0;
    x = 0;
    super.update(dt);
  }
}

class ObstactleComponent extends PositionComponent with CollisionCallbacks {
  ObstactleComponent()
      : super(
          position: Vector2(15, 15),
          size: Vector2(20, 20),
        );

  @override
  void render(final Canvas canvas) {
    final paint = Paint()..color = Colors.red;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      paint,
    );
    super.render(canvas);
  }
}


/// 1. Force character go down and go right
/// 2. Make the camera follow the character