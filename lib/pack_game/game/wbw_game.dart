import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/navigation/navigation.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'wbw_game_di.dart';

int get kTileDimension => 16;
int get kTilesMaxHeight => 20;
int get kTilesHeight => 12;

class WbwGame extends FlameGame with HasCollisionDetection {
  WbwGame.use({required final Locator read, required final ThemeData theme})
      : diDto = WbwGameDiDto.use(read: read, theme: theme);
  final WbwGameDiDto diDto;
  late final RouterComponent router;

  late CameraComponent worldCamera;
  late final World world;
  late CharacterComponent character;
  LevelLayoutComponent? currentLevelLayout;
  late FlameMultiBlocProvider providersComponent;
  @override
  Future<void> onLoad() async {
    debugMode = true;
    children.register<CameraComponent>();
    world = World();
    router = const GameRouter().init();

    providersComponent = diDto.getBlocsProviderComponent(
      children: [
        world,
        router,
      ],
    );

    final levelLayout = LevelLayoutComponent(
      tileMapName: 'pixel_black_white_landscape',
      onLoadBuilder: (final map) async {
        const groundHeight = 30.0;

        character = CharacterComponent(
          levelHeight: map.tileMap.map.height.toDouble() + groundHeight,
        );

        await world.add(character);

        // TODO(arenukvern): update (remove & add) the character when
        // / the level is changed
        worldCamera.follow(character);
      },
    );
    currentLevelLayout = levelLayout;
    await world.addAll([levelLayout]);

    worldCamera = await _initCamera();
    await providersComponent.add(worldCamera);
    await add(providersComponent);
    // Enable initial overlays
    overlays.addAll([
      GameOverlaysRoutes.levelsHud.name,
    ]);
    return super.onLoad();
  }

  Future<CameraComponent> _initCamera() async {
    final bounds = Rectangle.fromLTRB(0, 0, 1500, 1200);
    final camera = CameraComponent(
      world: world,
    ); //..setBounds(bounds);

    camera.viewfinder
      ..visibleGameSize = Vector2(
        30 * kTileDimension.toDouble() / 2,
        kTilesHeight * kTileDimension.toDouble(),
      )
      ..anchor = Anchor.center;
    return camera;
  }

  @override
  Color backgroundColor() => diDto.theme.colorScheme.surface;
}

class CharacterComponent extends PositionComponent
    with CollisionCallbacks, HasGameRef<WbwGame> {
  CharacterComponent({
    required this.levelHeight,
  }) : super(
          size: Vector2(16, 16),
        );
  final paint = Paint()..color = Colors.blue;
  final double levelHeight;
  late FlyingObjectsParams params;

  @override
  Future<void>? onLoad() async {
    await add(
      FlameBlocListener<LevelBloc, LevelBlocState>(
        onNewState: _handleLevelState,
      ),
    );
    params = const FlyingObjectsParams();
    position = Vector2(params.minXBoundry, (kTilesMaxHeight - 2) * 16);
    return super.onLoad();
  }

  void _handleLevelState(final LevelBlocState levelState) {
    if (levelState is! LiveLevelBlocState) return;
    // TODO(arenukvern): update params
  }

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
    if (y < params.minYBoundry && yResult.fuel > 0) {
      // noop
    } else {
      y -= yResult.force;
    }
    params = params.copyWith(
      // fuel: const FuelStorageModel( value: 90),
      fuel: FuelStorageModel(value: yResult.fuel),
      fuelNormalPower: 2.0,
    );
    // TODO(arenukvern): add updated fuel to the bloc
    // gameRef.diDto.levelBloc.add();
    x -= mechanics.xVelocity;
    // fuel = 90;
    // y = 0;
    // x = 0;
    super.update(dt);
  }
}

class LevelLayoutComponent extends PositionComponent {
  LevelLayoutComponent({
    required this.tileMapName,
    required this.onLoadBuilder,
  }) : super();
  final String tileMapName;
  final Future<void> Function(TiledComponent map) onLoadBuilder;
  late TiledComponent map;
  @override
  Future<void> onLoad() async {
    print('onLoad');
    map = await TiledComponent.load(
      '$tileMapName.tmx',
      Vector2.all(16),
    );

    await onLoadBuilder(map);

    await add(map);
    await super.onLoad();
  }
}
