import 'dart:async';
import 'dart:math' as math;

import 'package:flame/cache.dart';
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
  final resourcesLoader = ResourcesLoader();
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
      FlameBlocListener<MapEditorBloc, MapEditorBlocState>(
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
  final tilesDrawer = TilesDrawer();
  final tilesRenderer = TilesRenderer();
  Vector2 _dragOffset = Vector2.zero();

  @override
  FutureOr<void> onLoad() {
    addAll([
      tilesRenderer,
      debugSurface,
      tilesDrawer,
      cursor,
    ]);
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
  DrawerCubit get drawerCubit => game.diDto.drawerCubit;
  Vector2 get origin => editor.origin;
  @useResult
  Vector2 getOffsetOrigin() => editor.getOffsetOrigin();
  set origin(final Vector2 value) => editor.origin = value;
  double get windowHeight => editor.windowHeight;
  double get windowWidth => editor.windowWidth;
  double get tileColumns => editor.tileColumns;
  double get tileRows => editor.tileRows;
  Map<CellPointModel, CanvasTileModel> get canvasData =>
      game.diDto.drawerCubit.canvasData;
  set canvasData(final Map<CellPointModel, CanvasTileModel> value) =>
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
    super.render(canvas);
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

class TilesDrawer extends Component
    with Tappable, HasGameRef<GameRenderer>, HasEditorRef {
  @override
  bool onTapUp(final TapUpInfo info) {
    _onTap(info.eventPosition);
    return super.onTapUp(info);
  }

  math.Point<int> getCurrentCell(final EventPosition eventPosition) {
    final distanceToOrigin = eventPosition.viewport - origin;

    int y = distanceToOrigin.y ~/ kTileDimension;
    if (distanceToOrigin.y < 0) {
      y--;
    }
    int x = distanceToOrigin.x ~/ kTileDimension;
    if (distanceToOrigin.x < 0) {
      x--;
    }
    return math.Point(x, y);
  }

  Map<CellPointModel, CanvasTileModel> checkNeighbours({
    required final Map<CellPointModel, CanvasTileModel> effectiveCanvasData,
    required final CellPointModel cellPoint,
  }) {
    // create a local cluster (3 rows and 3 columns)
    const clusterSize = 3;
    const clusterOffset = CellPointModel(clusterSize ~/ 2, clusterSize ~/ 2);
    final localCluster = [
      for (int x = 0; x < clusterSize; x++)
        for (int y = 0; y < clusterSize; y++)
          //
          CellPointModel(
            x + cellPoint.x - clusterOffset.x,
            y + cellPoint.y - clusterOffset.y,
          )
    ];
    for (final cell in localCluster) {
      if (effectiveCanvasData.containsKey(cell)) {
        effectiveCanvasData.update(
          cell,
          (final value) => value.copyWith(
            terrainNeighbours: [],
            isWaterTop: false,
          ),
        );
        for (final neighbourEntry in tilesNeighbourDirections.entries) {
          final name = neighbourEntry.key;
          final side = neighbourEntry.value;
          final neighbourCell = CellPointModel(
            cell.x + side.x,
            cell.y + side.y,
          );

          final neighbourTile = effectiveCanvasData[neighbourCell];
          if (neighbourTile == null) continue;

          if (neighbourTile.hasTerrain) {
            effectiveCanvasData.update(
              cell,
              (final value) => value.copyWith(
                terrainNeighbours: [
                  ...value.terrainNeighbours,
                  name.name.toUpperCase(),
                ],
              ),
            );
          }
          if (neighbourTile.hasWater && name == TileNeighbourDirection.a) {
            effectiveCanvasData.update(
              cell,
              (final value) => value.copyWith(
                isWaterTop: true,
              ),
            );
          }
        }
      }
    }
    return effectiveCanvasData;
  }

  math.Point<int>? _lastSelectedCell;
  void _onTap(final EventPosition eventPosition) {
    final cell = getCurrentCell(eventPosition);
    if (_lastSelectedCell == cell) return;
    final effectiveCanvasData = {...canvasData};
    final cellPoint = cell.toCellPoint();
    if (effectiveCanvasData.containsKey(cellPoint)) {
      /// Maybe better to override existing data, but not sure for now,
      /// because it will break object immutability..
      ///
      /// But maybe if this will be runtime class - then it definitely
      /// should be updated, not replaced.
      effectiveCanvasData.update(
        cellPoint,
        (final value) => CanvasTileModel.fromEditorSettingsData(
          data: drawerCubit.selectionData,
          tileId: drawerCubit.selectionIndex.toString(),
          oldData: value,
        ),
      );
    } else {
      effectiveCanvasData[cellPoint] = CanvasTileModel.fromEditorSettingsData(
        data: drawerCubit.selectionData,
        tileId: drawerCubit.selectionIndex.toString(),
      );
    }
    canvasData = checkNeighbours(
      effectiveCanvasData: effectiveCanvasData,
      cellPoint: cellPoint,
    );
    _lastSelectedCell = cell;
  }

  @override
  bool containsLocalPoint(final Vector2 point) => true;
}

class TilesRenderer extends Component
    with HasGameRef<GameRenderer>, HasEditorRef {
  // final _canvasTilesComponents = <>{};
  @override
  FutureOr<void> onLoad() {
    add(
      FlameBlocListener<DrawerCubit, DrawerCubitState>(
        onNewState: _onNewDrawerState,
      ),
    );
    return super.onLoad();
  }

  void _onNewDrawerState(final DrawerCubitState state) {}

  final brownPaint = Palette.brown.paint();
  final bluePaint = Palette.blue.paint();
  final redPaint = Palette.red.paint();
  final yellowPaint = Palette.yellow.paint();
  final whitePaint = Palette.white.paint();

  @override
  void render(final Canvas canvas) {
    super.render(canvas);
    final resourceLoader = game.resourcesLoader;
    // TODO(antmalofeev): rewrite to drawAtlas
    for (final entry in drawerCubit.canvasData.entries) {
      final vectorPosition =
          origin + entry.key.toVector2() * kTileDimension.toDouble();
      final position = vectorPosition.toOffset();
      final tile = entry.value;
      if (tile.hasWater) {
        if (tile.isWaterTop) {
          final img = resourceLoader.getTile('X', tileStyle: TileStyle.water);
          canvas.drawImage(img, position, whitePaint);
        } else {
          canvas.drawRect(
            Rect.fromLTWH(
              position.dx,
              position.dy,
              kTileDimension.toDouble(),
              kTileDimension.toDouble(),
            ),
            redPaint,
          );
        }
      }
      if (tile.hasTerrain) {
        // i.e. merging Tile Directions, ABC or DC, etc
        final terrainString = tile.terrainNeighbours.join();
        final terrainStyle = resourceLoader.checkTileExistence(
          terrainString,
        )
            ? terrainString
            // simple tile in case if style is not found in images
            : 'X';

        final img = resourceLoader.getTile(terrainStyle);
        canvas.drawImage(img, position, whitePaint);
      }

      if (tile.coin.isNotEmpty) {
        canvas.drawRect(
          Rect.fromLTWH(
            position.dx,
            position.dy,
            kTileDimension.toDouble(),
            kTileDimension.toDouble(),
          ),
          yellowPaint,
        );
      }
      if (tile.enemy.isNotEmpty) {
        canvas.drawRect(
          Rect.fromLTWH(
            position.dx,
            position.dy,
            kTileDimension.toDouble(),
            kTileDimension.toDouble(),
          ),
          redPaint,
        );
      }
    }
  }
}

mixin HasResourcesLoaderRef on Component, HasGameRef<GameRenderer> {
  Image getTerrainImage(final String fileName) =>
      game.resourcesLoader.getTile(fileName);
}

class ResourcesLoader extends Component with HasGameRef<GameRenderer> {
  static String _getAssetsFolderPath(final AssetGenImage assetGenImage) {
    final pathList =
        assetGenImage.path.replaceAll('assets/images/', '').split('/')

          /// removing filename from path
          ..removeLast();
    return pathList.join('/');
  }

  static String get terrainLandPath =>
      _getAssetsFolderPath(Assets.images.terrain.land.a);

  static String get terrainWaterPath =>
      _getAssetsFolderPath(Assets.images.terrain.water.x);

  @override
  FutureOr<void> onLoad() async {
    await Future.wait([_loadWaterTiles(), _loadTerrainTiles()]);
    return super.onLoad();
  }

  Images get _images => game.images;
  Future<void> _loadAssets(final List<AssetGenImage> assets) async {
    await _images.loadAll(
      assets.map((final e) => e.path.replaceAll('assets/images/', '')).toList(),
    );
  }

  Future<void> _loadTerrainTiles() async =>
      _loadAssets(Assets.images.terrain.land.values);

  Future<void> _loadWaterTiles() async =>
      _loadAssets(Assets.images.terrain.water.values);

  String _getTilePath({
    final TileStyle tileStyle = TileStyle.terrain,
  }) {
    switch (tileStyle) {
      case TileStyle.terrain:
        return terrainLandPath;
      case TileStyle.water:
        return terrainWaterPath;
      // ignore: no_default_cases
      default:
        return '';
    }
  }

  bool checkTileExistence(
    final String fileName, {
    final TileStyle tileStyle = TileStyle.terrain,
  }) =>
      _images.containsKey(
        '${_getTilePath(tileStyle: tileStyle)}'
        '/$fileName.png',
      );

  Image getTile(
    final String fileName, {
    final TileStyle tileStyle = TileStyle.terrain,
  }) =>
      _images.fromCache(
        '${_getTilePath(tileStyle: tileStyle)}'
        '/$fileName.png',
      );
}
