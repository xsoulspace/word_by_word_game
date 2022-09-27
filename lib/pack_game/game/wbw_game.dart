import 'dart:async';

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
import 'package:word_by_word_game/pack_game/utils/utils.dart';

part 'wbw_game_di.dart';

int get kTileDimension => 16;
int get kMapTilesHeight => 20;
int get kVisibleTilesHeight => 12;
int get kVisibleTilesWidth => 30;

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
  late ObstacleLevelHelper obstacleLevelHelper;
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
        final obstacleLevelHelper = ObstacleLevelHelper.fromMapComponent(
          tiledMapComponent: map,
          tileDimension: kTileDimension,
        );

        const groundHeight = 30.0;

        character = CharacterComponent(
          levelHeight: map.tileMap.map.height.toDouble() + groundHeight,
          obstacleLevelHelper: obstacleLevelHelper,
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
        kVisibleTilesWidth * kTileDimension.toDouble() / 2,
        kVisibleTilesHeight * kTileDimension.toDouble(),
      )
      ..anchor = Anchor.center;
    return camera;
  }

  @override
  Color backgroundColor() => diDto.theme.colorScheme.surface;
}

class CharacterComponent extends PositionComponent with HasGameRef<WbwGame> {
  CharacterComponent({
    required this.levelHeight,
    required this.obstacleLevelHelper,
  }) : super(
          size: Vector2(16, 16),
        );
  final paint = Paint()..color = Colors.blue;
  final double levelHeight;
  late FlyingObjectsParams params;
  final ObstacleLevelHelper obstacleLevelHelper;

  @override
  Future<void>? onLoad() async {
    await add(
      FlameBlocListener<LevelPlayersBloc, LevelPlayersBlocState>(
        onNewState: _handleLevelState,
      ),
    );
    params = const FlyingObjectsParams();
    position = Vector2(params.minXBoundry, (kMapTilesHeight - 2) * 16);
    return super.onLoad();
  }

  void _handleLevelState(final LevelPlayersBlocState levelState) {
    if (levelState is! LiveLevelPlayersBlocState) return;
    params = params.copyWith(
      fuel: levelState.playerCharacter.fuel,
    );
  }

  @override
  void render(final Canvas canvas) {
    final textPaint = TextPaint(
      style: const TextStyle(
        fontSize: 24.0,
        color: Colors.blue,
      ),
    );

    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      paint,
    );
    textPaint.render(canvas, '${params.fuel.value}', Vector2(10, 10));

    super.render(canvas);
  }

  void onCollision() {}

  @override
  void update(final double dt) {
    final collided = obstacleLevelHelper.checkCollision(position);
    if (collided) {
      onCollision();
    }
    final mechanics = BasicFlyingObjectMechanics(
      params: params,
    );
    final yResult = mechanics.getYVelocity(y);
    if (y < params.minYBoundry && yResult.fuel > 0) {
      // noop
    } else {
      y -= yResult.force;
    }
    gameRef.diDto.levelPlayersBloc
        .add(ConsumeFuelEvent(fuel: FuelStorageModel(value: yResult.fuel)));
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
    map = await TiledComponent.load(
      '$tileMapName.tmx',
      Vector2.all(16),
    );

    await onLoadBuilder(map);

    await add(map);

    await super.onLoad();
  }
}
