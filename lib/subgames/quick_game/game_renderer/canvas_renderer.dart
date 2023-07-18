import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart' as material;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/editor/editor.dart';
import 'package:map_editor/ui/renderer/renderer.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/game_renderer.dart';

String get kDefaultTilesetPath => 'tilesets/pixel_black_white_tileset.png';
int get kMapTilesPlayableHeight => 20;

const int kLevelSideTileWidth = 16;

class CanvasRenderer extends Component
    with DragCallbacks, HasGameRef<GameRendererGame>, Hoverable {
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
  final debugSurface = DebugSurface();
  final cursor = CursorRenderer();
  final tilesDrawer = TilesDrawer();
  final tilesRenderer = TilesRenderer();
  Vector2 _dragOffset = Vector2.zero();
  final animationUpdater = AnimationUpdater();
  // TODO(username): description
  final canvasObjectsDrawer = EditorCanvasObjectsDrawer();

  @override
  FutureOr<void> onLoad() {
    addAll([
      // RENDER
      tilesRenderer,
      if (debugMode) debugSurface,
      tilesDrawer,
      canvasObjectsDrawer,
      cursor,
      // LOGIC
      animationUpdater,
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
    canvasObjectsDrawer.onOriginUpdate();
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

mixin HasCanvasRendererRef on Component, HasGameRef<GameRendererGame> {
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
