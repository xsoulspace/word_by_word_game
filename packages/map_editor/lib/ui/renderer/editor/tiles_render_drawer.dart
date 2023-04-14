part of 'editor_renderer.dart';

class TilesDrawer extends Component
    with TapCallbacks, HasGameRef<GameRenderer>, HasEditorRef {
  @override
  void onTapUp(final TapUpEvent event) {
    _onTap(event);
    return super.onTapUp(event);
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
  void _onTap(final TapUpEvent event) {
    final originUtils = OriginVectorUtils.use(origin);
    final cell = originUtils.getCurrentCellByTap(event);
    final effectiveCanvasData = {...canvasData};
    final cellPoint = cell.toCellPoint();

    /// remove selection
    if (drawerCubit.state.isDeleteSelection) {
      if (effectiveCanvasData.containsKey(cellPoint)) {
        final updatedValue = effectiveCanvasData.update(
          cellPoint,
          (final value) => value.removeSelection(
            data: drawerCubit.selectionData,
            tileId: drawerCubit.selectionIndex.toString(),
          ),
        );
        if (updatedValue.isEmpty) effectiveCanvasData.remove(cellPoint);
      }
    } else {
      if (_lastSelectedCell == cell) return;
      if (effectiveCanvasData.containsKey(cellPoint)) {
        /// Maybe better to override existing data, but not sure for now,
        /// because it will break object immutability..
        ///
        /// But maybe if this will be runtime class - then it definitely
        /// should be updated, not replaced.
        effectiveCanvasData.update(
          cellPoint,
          (final value) => CanvasTileModel.fromEditorSettingsDataToAdd(
            data: drawerCubit.selectionData,
            tileId: drawerCubit.selectionIndex.toString(),
            oldData: value,
          ),
        );
      } else {
        effectiveCanvasData[cellPoint] =
            CanvasTileModel.fromEditorSettingsDataToAdd(
          data: drawerCubit.selectionData,
          tileId: drawerCubit.selectionIndex.toString(),
        );
      }
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
    with HasGameRef<GameRenderer>, HasEditorRef, HasResourcesLoaderRef {
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
          canvas.drawImage(img, position, _paint);
        } else {
          final tilePath = animations[kWaterTileId]!.currentFramePath;
          final tileImage = getImage(tilePath);
          canvas.drawImage(tileImage, position, _paint);
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
        canvas.drawImage(img, position, _paint);
      }

      if (tile.coin.isNotEmpty) {
        final tilePath = animations[tile.coin]!.currentFramePath;
        final tileImage = getImage(tilePath);
        final effectivePosition = position +
            Offset(kTileDimension / 2, kTileDimension / 2) -
            (tileImage.size / 2).toOffset();
        canvas.drawImage(
          tileImage,
          effectivePosition,
          _paint,
        );
      }
      if (tile.enemy.isNotEmpty) {
        final tilePath = animations[tile.enemy]!.currentFramePath;
        final tileImage = getImage(tilePath);
        final effectivePosition = position +
            Offset(
              kTileDimension.toDouble() / 2 - tileImage.width / 2,
              (kTileDimension - tileImage.height).toDouble(),
            );
        canvas.drawImage(
          tileImage,
          effectivePosition,
          _paint,
        );
      }
    }
  }
}
