import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/events.dart' as events;
import 'package:flame/extensions.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart' as material;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/ui/renderer/editor/editor.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart'
    hide GameRendererDiDto;
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/components.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

class CanvasRenderer extends Component
    with
        events.DragCallbacks,
        HasGameRef<CanvasRendererGame>,
        events.HoverCallbacks {
  CanvasCubit get canvasCubit => game.dto.canvasCubit;
  DrawerCubitState get canvasCubitState => canvasCubit.state;
  Vector2 get origin => canvasCubitState.origin;
  set origin(final Vector2 value) => canvasCubit.changeOrigin(value);
  Vector2 getOffsetOrigin() => canvasCubitState.getOffsetOrigin();
  // Vector2 get gameSize => game.camera.gameSize;
  // Rect get gameSize => game.worldCamera.visibleWorldRect;
  Vector2 get gameSize => game.size;
  double get windowHeight => gameSize.y;
  double get windowWidth => gameSize.x;
  double get tileColumns => (windowWidth / kTileDimension) + 1;
  double get tileRows => (windowHeight / kTileDimension) + 1;
  final debugSurface = CanvasDebugSurface();
  final focusSurfaceDrawer = FocusSurfaceDrawer();
  final buildingSurfaceDrawer = BuildingSurfaceDrawer();
  final focusedObjectsHandler = GuiFocusedObjectsHandler();
  final tilesRenderer = CanvasTilesRenderer();
  Vector2 _dragOffset = Vector2.zero();
  // final animationUpdater = AnimationUpdater();
  final canvasObjectsDrawer = GameCanvasObjectsDrawer();

  @override
  FutureOr<void> onLoad() {
    addAll([
      // RENDER
      tilesRenderer,
      debugSurface,
      canvasObjectsDrawer,
      focusedObjectsHandler,
      buildingSurfaceDrawer,
      focusSurfaceDrawer,
      // cursor,
      // LOGIC
      // animationUpdater,
    ]);

    return super.onLoad();
  }

  @override
  void onDragStart(final events.DragStartEvent event) {
    _dragOffset = event.canvasPosition - origin;
    return super.onDragStart(event);
  }

  @override
  void onDragUpdate(final events.DragUpdateEvent event) {
    if (!game.dto.debugCubit.state.isCameraFollowingFocusedObject) {
      final eventPosition = event.canvasStartPosition;
      origin = eventPosition - _dragOffset;
      mousePosition = eventPosition;
      canvasObjectsDrawer.onOriginUpdate();
    }
    super.onDragUpdate(event);
  }

  material.Paint get _redPaint => Palette.red.paint();
  material.Paint get _greenPaint => Palette.green.paint();

  void _renderOrigin(final material.Canvas canvas) {
    canvas.drawCircle(
      origin.toOffset(),
      15,
      _redPaint,
    );
  }

  void _renderOffsetOrigin(final material.Canvas canvas) {
    canvas.drawCircle(
      getOffsetOrigin().toOffset(),
      15,
      _greenPaint,
    );
  }

  /// For cursor rendering
  Vector2 mousePosition = Vector2.zero();
  @override
  void onPointerMove(final events.PointerMoveEvent event) {
    mousePosition = event.canvasPosition;
    return super.onPointerMove(event);
  }

  @override
  void render(final material.Canvas canvas) {
    super.render(canvas);

    if (game.dto.debugCubit.state.isDebugLinesVisible) {
      _renderOrigin(canvas);
      _renderOffsetOrigin(canvas);
    }
  }

  @override
  void update(final double dt) {
    if (game.dto.debugCubit.state.isCameraFollowingFocusedObject) {
      final object = game.dto.levelPlayersBloc.focusedObject;
      final gameVector2 =
          GameVector2.fromMapVector2(object.distanceToOrigin.toVector2());
      final screenVector2 =
          gameVector2.toScreenVector2(GameOrigins(origin, getOffsetOrigin()));
      final screenSize = game.size;
      Offset offset = (screenVector2 -
              Vector2(
                screenSize.x / 3,
                math.max(200, screenSize.y / 2 - 60),
              ))
          .toOffset();
      offset = origin.toOffset() - offset;
      origin = offset.toVector2();
      canvasObjectsDrawer.onOriginUpdate();
    }

    super.update(dt);
  }

  @override
  bool containsLocalPoint(final Vector2 point) => true;
}

mixin HasCanvasRendererRef on Component, HasGameRef<CanvasRendererGame> {
  CanvasRenderer? _canvasRenderer;
  CanvasRenderer get canvasRenderer => _canvasRenderer ??= game.canvasRenderer;
  CanvasCubit get canvasCubit => game.dto.canvasCubit;
  Vector2 get origin => canvasRenderer.origin;
  GameOrigins get origins => GameOrigins(origin, getOffsetOrigin());
  @useResult
  Vector2 getOffsetOrigin() => canvasRenderer.getOffsetOrigin();
  set origin(final Vector2 value) => canvasRenderer.origin = value;
  double get windowHeight => canvasRenderer.windowHeight;
  double get windowWidth => canvasRenderer.windowWidth;
  double get tileColumns => canvasRenderer.tileColumns;
  double get tileRows => canvasRenderer.tileRows;
  GameRendererDiDto get gameDto => game.dto;
  GuiFocusableObjectsNotifier get guiFocusableObjectsNotifier =>
      gameDto.guiFocusableObjectsNotifier;
  CanvasDataModel get canvasData => canvasCubit.canvasData;
  set canvasData(final CanvasDataModel value) => canvasCubit.canvasData = value;
  TilesetPresetResources get presetResources =>
      canvasCubit.tilesPresetResources;
  Map<TileId, PresetTileResource> get tilesResources => presetResources.tiles;
  PlayerGameCanvasObject? get player =>
      canvasRenderer.canvasObjectsDrawer.player;

  /// as temporary solution
  ///
  /// in future change it to different tiles calls
  Map<TileId, PresetTileResource> get allTiles => {
        ...presetResources.tiles,
        ...presetResources.objects,
        ...presetResources.npcs,
        ...presetResources.players,
        ...presetResources.other,
      };
}

class CanvasTilesRenderer extends Component
    with
        HasGameRef<CanvasRendererGame>,
        HasCanvasRendererRef,
        HasCanvasResourcesLoaderRef {
  // final _canvasTilesComponents = <>{};
  @override
  FutureOr<void> onLoad() {
    add(
      FlameBlocListener<CanvasCubit, DrawerCubitState>(
        onNewState: _onNewDrawerState,
      ),
    );
    return super.onLoad();
  }

  void _onNewDrawerState(final DrawerCubitState state) {}

  final TilesPainterInterface _painter = TilesPainterInterface.getImpl();

  @override
  void render(final Canvas canvas) {
    _painter.render(
      canvas: canvas,
      tilesetConstants: gameDto.canvasCubit.resourcesLoader.tilesetConstants,
      offsetOrigin: getOffsetOrigin(),
      canvasData: canvasData,
      tilesResources: allTiles,
      origin: origin,
      images: game.images,
      tileColumns: tileColumns,
      windowHeight: windowHeight,
      tileRows: tileRows,
      windowWidth: windowWidth,
    );

    super.render(canvas);
  }
}

class CanvasDebugSurface extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  material.Paint get _paint => Palette.grey.withAlpha(60).paint();

  void _renderLines(final material.Canvas canvas) {
    final offsetOrigin = getOffsetOrigin();
    for (var col = 0; col < tileColumns; col++) {
      final double x = offsetOrigin.x + (col * kTileDimension).toDouble();
      canvas.drawLine(Offset(x, 0), Offset(x, windowHeight), _paint);
    }

    for (var row = 0; row < tileRows; row++) {
      final double y = offsetOrigin.y + (row * kTileDimension).toDouble();
      canvas.drawLine(Offset(0, y), Offset(windowWidth, y), _paint);
    }
  }

  @override
  void render(final material.Canvas canvas) {
    super.render(canvas);
    if (game.dto.debugCubit.state.isDebugLinesVisible) _renderLines(canvas);
  }
}
