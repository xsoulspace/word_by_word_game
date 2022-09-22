import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';

part 'wbw_game.freezed.dart';
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
    router = const GameRouter().init();
    final providersComponent = diDto.getBlocsProviderComponent(
      children: [
        world,
        router,
      ],
    );

    await world.addAll([character, ObstactleComponent()]);

    // Enable initial overlays
    overlays.addAll([
      GameOverlaysRoutes.levelsHud.name,
    ]);
    worldCamera = await _initCamera();
    await providersComponent.add(worldCamera);
    await add(providersComponent);
    return super.onLoad();
  }

  Future<CameraComponent> _initCamera() async {
    final bounds = Rectangle.fromLTRB(0, 0, 1500, 1200);
    final camera = CameraComponent(
      world: world,
      viewport: MaxViewport(),
    );
    // TODO(arenukvern): uncomment when tiled will be ready
    // ..setBounds(bounds);
    camera.viewfinder
      ..visibleGameSize = Vector2(0, 0)
      ..position = character.position
      ..anchor = Anchor.center;
    // TODO(arenukvern): update (remove & add) the character when
    /// the level is changed
    camera.follow(character);
    return camera;
  }

  @override
  Color backgroundColor() => diDto.theme.colorScheme.surface;
}

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class FlyingObjectsParams with _$FlyingObjectsParams {
  const factory FlyingObjectsParams({
    @Default(FuelStorageModel(value: 150)) final FuelStorageModel fuel,

    /// it can be changed and can be dependent from the character.
    @Default(50.5) final double fuelNormalPower,

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
    @Default(0.5) final double requiredLiftForce,
  }) = _FlyingObjectsParams;
  const FlyingObjectsParams._();

  factory FlyingObjectsParams.fromCharacterModel(
    final PlayerCharacterModel character,
  ) {
    return FlyingObjectsParams(
      fuel: character.fuel,
      fuelNormalPower: character.fuelNormalPower,
      requiredLiftForce: character.requiredLiftForce,
    );
  }

  /// immutable
  /// Is the power if the character trying to move above the highest line
  /// (allowed altitude)
  double get fuelHighPower => 0;

  /// immutable
  double get baseGravityForce => 0.05;

  /// can be changed but it is external force, and should not be changed
  /// by the player. nature force
  double get windForce => .03;

  /// -1 or +1 - can be changed, nature force
  int get windSign => -1;
}

class ForceResult {
  ForceResult({
    this.fuel = 0.0,
    this.force = 0.0,
  });
  final double force;
  final double fuel;
}

class BasicFlyingObjectMechanics {
  BasicFlyingObjectMechanics({
    required this.params,
  });
  final FlyingObjectsParams params;
  double getGravityForce(final double y) {
    final force = params.baseGravityForce * (y / 10);
    if (force > 0.2) {
      return 0.2;
    }
    return force;
  }

  ForceResult getLiftForce(final double y) {
    double fuel = params.fuel.value;
    if (fuel < 0) {
      return ForceResult();
    }
    double fuelPower = params.fuelNormalPower;
    if (y < 10) {
      fuelPower = params.fuelHighPower;
    }

    final double requiredLift = getGravityForce(y) + params.requiredLiftForce;
    double fuelConsumption = requiredLift / params.fuelNormalPower;
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

    final liftForce = fuelConsumption * fuelPower;

    return ForceResult(
      fuel: fuel,
      force: liftForce,
    );
  }

  ForceResult getYVelocity(final double y) {
    final liftForceResult = getLiftForce(y);
    final velocity = liftForceResult.force - getGravityForce(y);

    return ForceResult(
      force: velocity,
      fuel: liftForceResult.fuel,
    );
  }

  double get xVelocity {
    return params.windSign * params.windForce;
  }
}

class CharacterComponent extends PositionComponent
    with CollisionCallbacks, HasGameRef<WbwGame> {
  CharacterComponent()
      : super(
          position: Vector2(50, 50),
          size: Vector2(20, 20),
        );
  @override
  Future<void>? onLoad() async {
    await add(
      FlameBlocListener<LevelBloc, LevelBlocState>(
        onNewState: _handleLevelState,
      ),
    );
    return super.onLoad();
  }

  void _handleLevelState(final LevelBlocState levelState) {
    if (levelState is! LiveLevelBlocState) return;
    // TODO(arenukvern): update params
  }

  final paint = Paint()..color = Colors.white;
  FlyingObjectsParams params = const FlyingObjectsParams();

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
    textPaint.render(canvas, '${params.fuel.value}', Vector2(10, 10));

    super.render(canvas);
  }

  @override
  void update(final double dt) {
    final mechanics = BasicFlyingObjectMechanics(
      params: params,
    );
    final yResult = mechanics.getYVelocity(y);
    y -= yResult.force;
    params = params.copyWith(
      fuel: FuelStorageModel(value: yResult.fuel),
    );
    // TODO(arenukvern): add updated fuel to the bloc
    // gameRef.diDto.levelBloc.add();
    x -= mechanics.xVelocity;
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
