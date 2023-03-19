import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/palette.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/generated/assets.gen.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';

part 'renderer_di.dart';

class Palette {
  static const white = BasicPalette.white;
  static const red = PaletteEntry(Color(0xFFAC3232));
  static const toastBackground = PaletteEntry(Color(0xFFAC3232));
  static const toastText = PaletteEntry(Color(0xFFDA9A00));
  static const grey = PaletteEntry(Color(0xFF404040));
  static const green = PaletteEntry(Color(0xFF54a286));
}

int get kTileDimension => 64;

int get kVisibleTilesColumns => 30;
int get kVisibleTilesRows => 16;

int get kTargetWindowWith => kVisibleTilesColumns * kTileDimension;
int get kTargetWindowHeight => kVisibleTilesRows * kTileDimension;

// Made with awesome Tutorial:
// https://www.youtube.com/watch?v=qYomF9p_SYM&t=9116s
class GameRenderer extends FlameGame
    with
        HasCollisionDetection,
        HasDraggableComponents,
        HasDraggablesBridge,
        SingleGameInstance,
        HasHoverables,
        HasTappables {
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
    mouseCursor = material.SystemMouseCursors.none;
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
  material.Color backgroundColor() => Palette.white.color;
}

class EditorRenderer extends Component
    with Draggable, HasGameRef<GameRenderer>, Hoverable {
  Vector2 origin = Vector2.zero();

  /// First cell position to calculate the grid and positions
  @useResult
  Vector2 getOffsetOrigin() => Vector2(
        origin.x - ((origin.x ~/ kTileDimension) * kTileDimension),
        origin.y - ((origin.y ~/ kTileDimension) * kTileDimension),
      );
  Vector2 get gameSize => game.camera.gameSize;
  double get windowHeight => gameSize.y;
  double get windowWidth => gameSize.x;
  double get tileColumns => (windowWidth / kTileDimension) + 1;
  double get tileRows => (windowHeight / kTileDimension) + 1;
  final debugSurface = DebugSurface();
  final cursor = CursorRenderer();
  final tilesRenderer = TilesRenderer();
  Vector2 _dragOffset = Vector2.zero();

  @override
  FutureOr<void> onLoad() {
    addAll([debugSurface, cursor, tilesRenderer]);
    return super.onLoad();
  }

  @override
  bool onDragStart(final DragStartInfo info) {
    _dragOffset = info.eventPosition.viewport - origin;
    return super.onDragStart(info);
  }

  @override
  bool onDragUpdate(final DragUpdateInfo info) {
    final eventPosition = info.eventPosition.viewport;
    origin = eventPosition - _dragOffset;
    hoveredPosition = eventPosition;
    return super.onDragUpdate(info);
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

  Vector2 hoveredPosition = Vector2.zero();
  @override
  // ignore: invalid_override_of_non_virtual_member
  bool handleMouseMovement(final PointerHoverInfo info) {
    hoveredPosition = info.eventPosition.viewport;
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

mixin HasEditorRef on Component, HasGameRef<GameRenderer> {
  EditorRenderer? _editor;
  EditorRenderer get editor => _editor ??= game.editor;
  Vector2 get origin => editor.origin;
  @useResult
  Vector2 getOffsetOrigin() => editor.getOffsetOrigin();
  set origin(final Vector2 value) => editor.origin = value;
  double get windowHeight => editor.windowHeight;
  double get windowWidth => editor.windowWidth;
  double get tileColumns => editor.tileColumns;
  double get tileRows => editor.tileRows;
  Map<CellPointModel, dynamic> get canvasData =>
      game.diDto.drawerCubit.canvasData;
  set canvasData(final Map<CellPointModel, dynamic> value) =>
      game.diDto.drawerCubit.canvasData = value;
}

class CursorRenderer extends Component
    with HasGameRef<GameRenderer>, HasEditorRef {
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
    if (_image != null && editor.isHovered) {
      canvas.drawImage(_image!, editor.hoveredPosition.toOffset(), _paint);
    }
  }
}

class DebugSurface extends Component
    with Draggable, HasGameRef<GameRenderer>, HasEditorRef {
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

class TilesRenderer extends Component
    with Tappable, HasGameRef<GameRenderer>, HasEditorRef {
  @override
  bool onTapUp(final TapUpInfo info) {
    _onTap(info.eventPosition);
    return super.onTapUp(info);
  }

  math.Point<int> getCurrentCell(final EventPosition eventPosition) {
    final distanceToOrigin = eventPosition.viewport - origin;

    int row = distanceToOrigin.y ~/ kTileDimension;
    if (distanceToOrigin.y < 0) {
      row--;
    }
    int column = distanceToOrigin.x ~/ kTileDimension;
    if (distanceToOrigin.x < 0) {
      column--;
    }
    return math.Point(row, column);
  }

  math.Point<int>? _lastSelectedCell;
  void _onTap(final EventPosition eventPosition) {
    final cell = getCurrentCell(eventPosition);
    if (_lastSelectedCell == cell) return;

    final cellPoint = cell.toCellPoint();
    if (canvasData.containsKey(cellPoint)) {
    } else {
      canvasData = {...canvasData}..[cellPoint] = 'test';
    }
    _lastSelectedCell = cell;
  }

  @override
  bool containsLocalPoint(final Vector2 point) => true;
}

class CanvasTile extends Component {
  CanvasTile({
    required this.tileId,
    this.hasTerrain = false,
    this.terrainNeighbours = const [],
    this.hasWater = true,
    this.isTopWater = true,
    this.coin,
    this.enemy,
    this.objects = const [],
  });
  final String tileId;

  /// Terrain
  final bool hasTerrain;
  final List<String> terrainNeighbours;

  /// Water
  final bool hasWater;
  final bool isTopWater;

  /// Coin
  final coin;

  /// Enemy
  final enemy;

  final List objects;
}
