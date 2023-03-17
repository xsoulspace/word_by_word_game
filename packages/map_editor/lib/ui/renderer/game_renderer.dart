import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame/src/gestures/events.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';

part 'renderer_di.dart';

class Palette {
  static const white = BasicPalette.white;

  static const toastBackground = PaletteEntry(Color(0xFFAC3232));
  static const toastText = PaletteEntry(Color(0xFFDA9A00));

  static const grey = PaletteEntry(Color(0xFF404040));
  static const green = PaletteEntry(Color(0xFF54a286));
}

int get kTileDimension => 16;
int get kMapTilesPlayableHeight => 20;
int get kVisibleTilesHeight => 12;
int get kVisibleTilesCount => 30;
int get kLevelSideTileWidth => 16;

class GameRenderer extends FlameGame
    with
        HasCollisionDetection,
        HasDraggableComponents,
        HasDraggablesBridge,
        SingleGameInstance {
  GameRenderer.use({
    required final Locator read,
    required final material.ThemeData theme,
  }) : diDto = GameRendererDiDto.use(
          read: read,
          theme: theme,
        );
  final GameRendererDiDto diDto;
  late final RouterComponent router;

  late CameraComponent worldCamera;
  late final World world;
  late FlameMultiBlocProvider providersComponent;
  final editor = EditorRenderer();
  @override
  Future<void> onLoad() async {
    // debugMode = kDebugMode ;

    children
      ..register<CameraComponent>()
      ..register<World>()
      ..register<FlameMultiBlocProvider>();
    world = World();
    worldCamera = await _initCamera();

    providersComponent = diDto.getBlocsProviderComponent(
      children: [
        world,
        // router,
        worldCamera,
      ],
    );

    // await providersComponent.add(worldCamera);
    await add(providersComponent);
    await world.addAll([
      FlameBlocListener<MapEditorBloc, MapEditorBlocState>(
        onNewState: _handleMapEditorBlocStateChanges,
      ),
      editor
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
  material.Color backgroundColor() => diDto.theme.colorScheme.background;
}

class EditorRenderer extends Component with Draggable, HasGameRef {
  Vector2 origin = Vector2.zero();
  Vector2 dragOffset = Vector2.zero();

  @override
  bool onDragStart(final DragStartInfo info) {
    dragOffset = info.eventPosition.viewport - origin;
    return super.onDragStart(info);
  }

  @override
  bool onDragUpdate(final DragUpdateInfo info) {
    origin = info.eventPosition.viewport - dragOffset;
    return super.onDragUpdate(info);
  }

  final paint = Palette.green.paint();
  @override
  void render(final material.Canvas canvas) {
    super.render(canvas);
    canvas.drawCircle(
      origin.toOffset(),
      5,
      paint,
    );
  }

  @override
  bool containsLocalPoint(final Vector2 point) => true;
}
