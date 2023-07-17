import 'dart:async';
import 'dart:math' as math;

import 'package:collection/collection.dart';
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
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';
import 'package:wbw_core/wbw_core.dart';

part 'debug_surface.dart';
part 'editor_canvas_object.dart';
part 'tiles_render_drawer.dart';

class EditorRendererComponent extends Component
    with DragCallbacks, HasGameRef<EditorRendererGame>, Hoverable {
  DrawerCubit get drawerCubit => game.diDto.drawerCubit;
  DrawerCubitState get drawerCubitState => drawerCubit.state;
  Vector2 get origin => drawerCubitState.origin;
  set origin(final Vector2 value) => drawerCubit.changeOrigin(value);
  Vector2 getOffsetOrigin() => drawerCubitState.getOffsetOrigin();
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
  final canvasObjectsDrawer = EditorCanvasObjectsDrawer();

  @override
  FutureOr<void> onLoad() {
    addAll([
      // RENDER
      tilesRenderer,
      debugSurface,
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

mixin HasEditorRef on Component, HasGameRef<EditorRendererGame> {
  EditorRendererComponent? _editor;
  EditorRendererComponent get editor => _editor ??= game.editor;
  DrawerCubit get drawerCubit => game.diDto.drawerCubit;
  Vector2 get origin => editor.origin;
  @useResult
  Vector2 getOffsetOrigin() => editor.getOffsetOrigin();
  set origin(final Vector2 value) => editor.origin = value;
  double get windowHeight => editor.windowHeight;
  double get windowWidth => editor.windowWidth;
  double get tileColumns => editor.tileColumns;
  double get tileRows => editor.tileRows;
  Map<CellPointModel, CellTileModel> get layerTiles =>
      drawerCubit.drawLayer.tiles;
  set layerTiles(final Map<CellPointModel, CellTileModel> value) =>
      drawerCubit.drawLayer = drawerCubit.drawLayer.copyWith(
        tiles: value,
      );
  CanvasDataModel get canvasData => drawerCubit.canvasData;
  set canvasData(final CanvasDataModel value) => drawerCubit.canvasData = value;
  TilesPresetResources get presetResources => drawerCubit.tilesResources;
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

class CursorRenderer extends Component
    with HasGameRef<EditorRendererGame>, HasEditorRef {
  Image? _image;
  @override
  FutureOr<void> onLoad() async {
    _image = await game.images.load(
      Assets.images.cursors.cursor.path.replaceAll('assets/images/', ''),
    );
    return super.onLoad();
  }

  final _paint = material.Paint();
  @override
  void render(final Canvas canvas) {
    super.render(canvas);
    if (_image != null && editor.isHovered) {
      canvas.drawImage(_image!, editor.mousePosition.toOffset(), _paint);
    }
  }
}
