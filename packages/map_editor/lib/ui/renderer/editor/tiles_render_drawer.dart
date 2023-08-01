part of 'editor_renderer.dart';

class TilesDrawer extends Component
    with
        TapCallbacks,
        DragCallbacks,
        HasGameRef<EditorRendererGame>,
        HasEditorRef {
  @override
  void onDragStart(final DragStartEvent event) {
    event.continuePropagation = true;
    super.onDragStart(event);
  }

  @override
  void onDragUpdate(final DragUpdateEvent event) {
    event.continuePropagation = true;
    super.onDragUpdate(event);
    if (game.diDto.mapEditorBloc.state.isEditing) {
      _onTap(event);
    }
  }

  @override
  void onTapDown(final TapDownEvent event) {
    event.continuePropagation = true;
    if (game.diDto.mapEditorBloc.state.isEditing) {
      _onTap(event);
    }
    return super.onTapDown(event);
  }

  Map<CellPointModel, CellTileModel> checkNeighbours({
    required final Map<CellPointModel, CellTileModel> effectiveLayerTiles,
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
      if (effectiveLayerTiles.containsKey(cell)) {
        effectiveLayerTiles.update(
          cell,
          (final value) => value.copyWith(
            tileNeighbours: [],
          ),
        );
        for (final MapEntry(key: direction, value: side)
            in tilesNeighbourDirections.entries) {
          final neighbourCell = CellPointModel(
            cell.x + side.x,
            cell.y + side.y,
          );

          final neighbourTile = effectiveLayerTiles[neighbourCell];
          if (neighbourTile == null || neighbourTile.tileId.isEmpty) continue;

          effectiveLayerTiles.update(
            cell,
            (final value) => value.copyWith(
              tileNeighbours: {
                ...value.tileNeighbours,
                TileNeighbourTitle.fromDirection(direction),
              }.toList(),
            ),
          );
        }
      }
    }
    return effectiveLayerTiles;
  }

  math.Point<int>? _lastSelectedCell;
  void _onTap(final PositionEvent event) {
    final originUtils = OriginVectorUtils.use(origin);
    final cell = originUtils.getCurrentCellByTap(event);
    final effectiveLayerTiles = {...layerTiles};
    final cellPoint = cell.toCellPoint();
    final tileToDraw = drawerCubit.tileToDraw;

    /// remove selection
    if (drawerCubit.state.isDeleteSelection) {
      if (effectiveLayerTiles.containsKey(cellPoint)) {
        final updatedValue = effectiveLayerTiles.update(
          cellPoint,
          (final value) => value.copyWith(
            tileId: TileId.empty,
          ),
        );
        if (updatedValue.isEmpty) effectiveLayerTiles.remove(cellPoint);
      }
    } else {
      if (_lastSelectedCell == cell || tileToDraw == null) return;
      effectiveLayerTiles.update(
        cellPoint,
        (final value) => value.copyWith(
          tileId: tileToDraw.id,
        ),
        ifAbsent: () => CellTileModel(
          tileId: tileToDraw.id,
        ),
      );
    }
    layerTiles = checkNeighbours(
      effectiveLayerTiles: effectiveLayerTiles,
      cellPoint: cellPoint,
    );
    _lastSelectedCell = cell;
  }

  @override
  bool containsLocalPoint(final Vector2 point) => true;
}

class TilesRenderer extends Component
    with
        HasGameRef<EditorRendererGame>,
        HasEditorRef,
        HasEditorResourcesLoaderRef {
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

  final _painter = TilesPainter();
  @override
  void render(final Canvas canvas) {
    // TODO(arenukvern): render only visible area
    _painter.render(
      canvas: canvas,
      offsetOrigin: getOffsetOrigin(),
      canvasData: canvasData,
      tilesResources: tilesResources,
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

class TilesPainter {
  final _paint = material.Paint();
  void render({
    required final Canvas canvas,
    required final CanvasDataModel canvasData,
    required final Map<TileId, PresetTileResource> tilesResources,
    required final Vector2 origin,
    required final Vector2 offsetOrigin,
    required final Images images,
    required final double tileColumns,
    required final double windowHeight,
    required final double tileRows,
    required final double windowWidth,
  }) {
    final visibleLayers = canvasData.layers.where((final e) => e.isVisible);
    for (var col = -1; col < tileColumns + 1; col++) {
      for (var row = -1; row < tileRows + 3; row++) {
        for (final tileLayer in visibleLayers) {
          final cellPointVector =
              ((offsetOrigin - origin) / kTileDimension.toDouble()) +
                  Vector2(col.toDouble(), row.toDouble());

          final cellPoint = CellPointModel(
            cellPointVector.x.toInt(),
            cellPointVector.y.toInt(),
          );
          final cellTile = tileLayer.tiles[cellPoint];
          if (cellTile == null) continue;
          final vectorPosition =
              origin + (cellPoint.toVector2() * kTileDimension.toDouble());
          final position = vectorPosition.toOffset();
          final resourceTile = tilesResources[cellTile.tileId];
          if (resourceTile == null) continue;
          final graphics = resourceTile.tile.graphics;

          /// Drawing tile
          switch (graphics.type) {
            case TileGraphicsType.character:
              assert(false, 'Character graphics type cannot be used in tile');
            case TileGraphicsType.directional:
              final directionTitle = cellTile.tileMergedDirectionsTitle;
              final x = resourceTile.directionalPaths['X']!;
              final animationEntry = directionTitle.isEmpty
                  ? x
                  : resourceTile.directionalPaths[
                          cellTile.tileMergedDirectionsTitle] ??
                      x;
              final img = images.fromCache(animationEntry.currentFramePath);
              canvas.drawImage(img, position, _paint);
          }

          /// Drawing objects
          for (final gid in cellTile.objects) {
            final renderObject = canvasData.objects[gid];
            if (renderObject == null) continue;

            /// Drawing tile
            switch (graphics.type) {
              case TileGraphicsType.character:
                final animationEntry = resourceTile
                    .behaviourPaths[renderObject.animationBehaviour];
                if (animationEntry == null) continue;
                final img = images.fromCache(animationEntry.currentFramePath);
                canvas.drawImage(img, renderObject.position.toOffset(), _paint);
              case TileGraphicsType.directional:
                assert(
                  false,
                  'Directional graphics type cannot be used with object',
                );
            }
          }
        }
      }
    }
  }
}
