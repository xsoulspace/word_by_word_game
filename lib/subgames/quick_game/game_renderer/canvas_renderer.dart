import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame/input.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart' as material;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/generated/assets.gen.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor/editor.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/character_component.dart';
import 'package:word_by_word_game/subgames/quick_game/quick_game.dart';

class CanvasRenderer extends Component
    with DragCallbacks, HasGameRef<CanvasRendererGame>, Hoverable {
  CanvasCubit get canvasCubit => game.diDto.canvasCubit;
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
  final cursor = CanvasCursorRenderer();
  final tilesRenderer = CanvasTilesRenderer();
  Vector2 _dragOffset = Vector2.zero();
  // final animationUpdater = AnimationUpdater();
  // TODO(username): description
  // final canvasObjectsDrawer = EditorCanvasObjectsDrawer();

  @override
  FutureOr<void> onLoad() {
    addAll([
      // RENDER
      tilesRenderer,
      if (debugMode) debugSurface,
      // canvasObjectsDrawer,
      cursor,
      // LOGIC
      // animationUpdater,
    ]);

    return super.onLoad();
  }

  @override
  void onDragStart(final DragStartEvent event) {
    _dragOffset = event.canvasPosition - origin;
    return super.onDragStart(event);
  }

  @override
  void onDragUpdate(final DragUpdateEvent event) {
    final eventPosition = event.canvasPosition;
    origin = eventPosition - _dragOffset;
    mousePosition = eventPosition;
    // canvasObjectsDrawer.onOriginUpdate();
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
  // ignore: invalid_override_of_non_virtual_member
  bool handleMouseMovement(final PointerHoverInfo info) {
    mousePosition = info.eventPosition.viewport;
    return super.handleMouseMovement(info);
  }

  @override
  void render(final material.Canvas canvas) {
    super.render(canvas);

    _renderOrigin(canvas);
    _renderOffsetOrigin(canvas);
  }

  @override
  bool containsLocalPoint(final Vector2 point) => true;
}

mixin HasCanvasRendererRef on Component, HasGameRef<CanvasRendererGame> {
  CanvasRenderer? _canvasRenderer;
  CanvasRenderer get canvasRenderer => _canvasRenderer ??= game.canvasRenderer;
  CanvasCubit get canvasCubit => game.diDto.canvasCubit;
  Vector2 get origin => canvasRenderer.origin;
  @useResult
  Vector2 getOffsetOrigin() => canvasRenderer.getOffsetOrigin();
  set origin(final Vector2 value) => canvasRenderer.origin = value;
  double get windowHeight => canvasRenderer.windowHeight;
  double get windowWidth => canvasRenderer.windowWidth;
  double get tileColumns => canvasRenderer.tileColumns;
  double get tileRows => canvasRenderer.tileRows;
  Map<CellPointModel, CellTileModel> get layerTiles =>
      canvasCubit.drawLayer.tiles;
  set layerTiles(final Map<CellPointModel, CellTileModel> value) =>
      canvasCubit.drawLayer = canvasCubit.drawLayer.copyWith(
        tiles: value,
      );
  CanvasDataModel get canvasData => canvasCubit.canvasData;
  set canvasData(final CanvasDataModel value) => canvasCubit.canvasData = value;
  TilesPresetResources get presetResources => canvasCubit.tilesResources;
  Map<TileId, PresetTileResource> get tilesResources => presetResources.tiles;

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

  final _painter = TilesPainter();
  @override
  void render(final Canvas canvas) {
    _painter.render(
      canvas: canvas,
      canvasData: canvasData,
      tilesResources: tilesResources,
      origin: origin,
      images: game.images,
    );
    super.render(canvas);
  }
}

class CanvasCursorRenderer extends Component
    with HasGameRef<CanvasRendererGame>, HasCanvasRendererRef {
  Image? _image;
  @override
  FutureOr<void> onLoad() async {
    final path = 'packages/map_editor/${Assets.images.cursors.cursor.path}';
    _image = await game.images.load(path);
    return super.onLoad();
  }

  final _paint = material.Paint();
  @override
  void render(final Canvas canvas) {
    super.render(canvas);
    if (_image != null && canvasRenderer.isHovered) {
      canvas.drawImage(
        _image!,
        canvasRenderer.mousePosition.toOffset(),
        _paint,
      );
    }
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
    _renderLines(canvas);
  }
}
