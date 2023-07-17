part of 'editor_renderer.dart';

class TilesDrawer extends Component
    with TapCallbacks, HasGameRef<EditorRendererGame>, HasEditorRef {
  @override
  void onTapUp(final TapUpEvent event) {
    _onTap(event);
    return super.onTapUp(event);
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
  void _onTap(final TapUpEvent event) {
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

  final _paint = material.Paint();

  @override
  void render(final Canvas canvas) {
    super.render(canvas);

    /// Drawing layers
    for (final tileLayer in drawerCubit.canvasData.layers) {
      /// Drawing cell tiles
      // TODO(antmalofeev): maybe rewrite to drawAtlas
      for (final MapEntry(key: cellPoint, value: cellTile)
          in tileLayer.tiles.entries) {
        final vectorPosition =
            origin + cellPoint.toVector2() * kTileDimension.toDouble();
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
                : resourceTile
                        .directionalPaths[cellTile.tileMergedDirectionsTitle] ??
                    x;
            final img = getImage(animationEntry.currentFramePath);
            canvas.drawImage(img, position, _paint);
        }

        /// Drawing objects
        for (final gid in cellTile.objects) {
          final renderObject = canvasData.objects[gid];
          if (renderObject == null) continue;

          /// Drawing tile
          switch (graphics.type) {
            case TileGraphicsType.character:
              final animationEntry =
                  resourceTile.behaviourPaths[renderObject.animationBehaviour];
              if (animationEntry == null) continue;
              final img = getImage(animationEntry.currentFramePath);
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
