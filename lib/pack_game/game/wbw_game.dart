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
  WbwGame.use({required final Locator read, required final ThemeData theme})
      : diDto = WbwGameDiDto.use(read: read, theme: theme);
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
    final bounds = Rectangle.fromLTRB(0, 0, 1500, 1200);
    worldCamera = CameraComponent(
      world: world,
      viewport: MaxViewport(),
    );
    // ..setBounds(bounds);
    worldCamera.viewfinder
      ..visibleGameSize = Vector2(0, 0)
      ..position = character.position
      ..anchor = Anchor.center;
    await add(worldCamera);
    worldCamera.follow(character);
  }

  @override
  Color backgroundColor() => diDto.theme.colorScheme.surface;
}

class CharacterComponent extends PositionComponent with CollisionCallbacks {
  CharacterComponent()
      : super(
          position: Vector2(50, 50),
          size: Vector2(20, 20),
        );
  double fuel = 300.0;
  double get fuelNormalPower => 50.5;
  double fuelHighPower = 0;

  double get baseGravityForce => 0.05;
  double get gravityForce {
    final force = baseGravityForce * (y / 10);
    if (force > 0.2) {
      return 0.2;
    }
    return force;
  }

  double get windForce => .03;

  /// -1 or +1
  final int windSign = -1;

  /// 0.005 with +- sign.
  /// + is go down.
  /// - is go up.
  /// 0 is just use horizontal direction.
  ///
  /// The current logic is to force a player to always
  /// have enough fuel to be on the line.
  ///
  /// But the other idea, is to also somehow give the player
  /// controls for the [requiredLiftForce] i.e. ability to
  /// keep line, go up and go down
  double get requiredLiftForce => 0.5;

  double get liftForce {
    if (fuel < 0) {
      fuel = 0;
      return 0;
    }
    double fuelPower = fuelNormalPower;
    if (y < 10) {
      fuelPower = fuelHighPower;
    }

    final double lift = gravityForce + requiredLiftForce;
    double fuelConsumption = lift / fuelNormalPower;
    if (fuelConsumption < fuel) {
      fuel -= fuelConsumption;
    } else {
      if (fuel == 0) {
        fuelConsumption = 0;
      } else {
        fuelConsumption -= fuel;
      }
      if (fuelConsumption < 0) {
        fuelConsumption = fuel;
      } else {
        fuel -= fuelConsumption;
      }
    }

    return fuelConsumption * fuelPower;
  }

  double get yVelocity {
    return liftForce - gravityForce;
  }

  double get xVelocity {
    return windSign * windForce;
  }

  final paint = Paint()..color = Colors.white;

  @override
  void render(final Canvas canvas) {
    final textPaint = TextPaint(
      style: const TextStyle(
        fontSize: 24.0,
      ),
    );

    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      paint,
    );
    textPaint.render(canvas, '$fuel', Vector2(10, 10));

    super.render(canvas);
  }

  @override
  void update(final double dt) {
    y -= yVelocity;
    x -= xVelocity;
    // fuel = 90;
    // y = 1;
    // x = 0;
    super.update(dt);
  }
}

class ObstactleComponent extends PositionComponent with CollisionCallbacks {
  ObstactleComponent()
      : super(
          position: Vector2(50, 50),
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
