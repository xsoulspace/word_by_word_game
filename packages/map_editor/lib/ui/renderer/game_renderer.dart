import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';

part 'renderer_di.dart';

int get kTileDimension => 16;
int get kMapTilesPlayableHeight => 20;
int get kVisibleTilesHeight => 12;
int get kVisibleTilesWidth => 30;
const int kLevelSideTileWidth = 16;

class GameRenderer extends FlameGame with HasCollisionDetection {
  GameRenderer.use({
    required final Locator read,
    required final ThemeData theme,
  }) : diDto = GameRendererDiDto.use(
          read: read,
          theme: theme,
        );
  final GameRendererDiDto diDto;
  late final RouterComponent router;

  late CameraComponent worldCamera;
  late final World world;
  late FlameMultiBlocProvider providersComponent;

  @override
  Future<void> onLoad() async {
    // debugMode = kDebugMode ;

    children.register<CameraComponent>();
    world = World();
    providersComponent = diDto.getBlocsProviderComponent(
      children: [
        world,
        router,
      ],
    );

    worldCamera = await _initCamera();
    await providersComponent.add(worldCamera);
    await add(providersComponent);
    await world.add(
      FlameBlocListener<MapEditorBloc, MapEditorBlocState>(
        onNewState: _handleGlobalGameStateChanges,
      ),
    );

    // await images.load(kDefaultTilesetPath);

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

  Future<void> _handleGlobalGameStateChanges(
    final MapEditorBlocState state,
  ) async {}

  @override
  Color backgroundColor() => diDto.theme.colorScheme.surface;
}
