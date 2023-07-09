import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor/editor.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';
import 'package:provider/provider.dart';

part 'renderer_di.dart';

class Palette {
  Palette._();
  static const white = BasicPalette.white;
  static const red = PaletteEntry(Color(0xFFAC3232));
  static const grey = PaletteEntry(Color(0xFF404040));
  static const green = PaletteEntry(Color(0xFF54a286));
  static const blue = PaletteEntry(Color.fromARGB(255, 33, 176, 201));
  static const brown = PaletteEntry(Color.fromARGB(255, 131, 67, 11));
  static const yellow = PaletteEntry(Color.fromARGB(255, 241, 221, 5));
}

int get kTileDimension => 64;

int get kVisibleTilesColumns => 30;
int get kVisibleTilesRows => 16;

int get kTargetWindowWith => kVisibleTilesColumns * kTileDimension;
int get kTargetWindowHeight => kVisibleTilesRows * kTileDimension;

TileId get kWaterTileId => const TileId(value: '3');
TileId get kPlayerObjectId => const TileId(value: '0');
TileId get kCursorHandleObjectId => const TileId(value: '19');

// Made with awesome Tutorial:
// https://www.youtube.com/watch?v=qYomF9p_SYM&t=9116s
class GameRenderer extends FlameGame
    with
        HasCollisionDetection,
        SingleGameInstance,
        // replace to MouseMovementDetector (?)
        HasHoverables {
  GameRenderer.use({
    required final Locator read,
    required final material.ThemeData theme,
    this.config = const GameRendererConfig(),
  }) : diDto = GameRendererDiDto.use(
          read: read,
          theme: theme,
        );
  final GameRendererConfig config;
  final GameRendererDiDto diDto;
  late final RouterComponent router;

  late CameraComponent worldCamera;
  late final World world;
  late FlameMultiBlocProvider providersComponent;
  final editor = EditorRenderer();
  final resourcesLoader = ResourcesComponent();

  @override
  Future<void> onLoad() async {
    // debugMode = kDebugMode ;
    mouseCursor = material.SystemMouseCursors.none;
    children
      ..register<CameraComponent>()
      ..register<World>()
      ..register<FlameMultiBlocProvider>()
      ..register<EditorRenderer>();
    world = World();
    worldCamera = await _initCamera();

    providersComponent = diDto.getBlocsProviderComponent(
      children: [
        world,
        // router,
        worldCamera,
        resourcesLoader,
      ],
    );

    // await providersComponent.add(worldCamera);
    await add(providersComponent);
    await world.addAll([
      FlameBlocListener<MapEditorCubit, MapEditorBlocState>(
        onNewState: _handleMapEditorBlocStateChanges,
      ),
      editor,
    ]);

    // await images.load(kDefaultTilesetPath);

    return super.onLoad();
  }

  Future<CameraComponent> _initCamera() async {
    final bounds = Rectangle.fromLTRB(0, 0, 1500, 1200);
    final camera = CameraComponent(
      world: world,
    ); //..setBounds(bounds);

    camera
        .viewfinder
        // ..visibleGameSize = Vector2(
        //   kVisibleTilesCount * kTileDimension.toDouble() / 2,
        //   kVisibleTilesHeight * kTileDimension.toDouble(),
        // )
        .anchor = Anchor.topLeft;
    return camera;
  }

  Future<void> _handleMapEditorBlocStateChanges(
    final MapEditorBlocState state,
  ) async {}

  @override
  material.Color backgroundColor() => Palette.white.color;
}
