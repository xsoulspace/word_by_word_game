part of '../../state.dart';

class MapEditorCubitDto {
  MapEditorCubitDto.use(final Locator read) : drawerCubit = read();
  final DrawerCubit drawerCubit;
}

class MapEditorCubit extends Cubit<MapEditorBlocState> {
  MapEditorCubit({
    required final Locator read,
  })  : dto = MapEditorCubitDto.use(read),
        super(const MapEditorBlocState());
  final MapEditorCubitDto dto;
  // ignore: avoid_positional_boolean_parameters
  Future<void> onChangeIsEditing(final bool isEditing) async {
    emit(state.copyWith(isEditing: isEditing));
  }

  Future<void> onSaveAndPlay() async {
    // final tiles = <CellPointModel, RenderCanvasTileModel>{};
    // final gameObjects = <Gid, RenderObjectModel>{};
    // final skyYPosition = dto.drawerCubit.state.skyYPosition;

    // /// Export static tiles.
    // /// Every tile has distance to origin equals to zero.
    // for (final MapEntry(key: cellPoint, value: editorTile)
    //     in dto.drawerCubit.canvasData.entries) {
    //   if (editorTile.isEmpty) continue;

    //   tiles[cellPoint] = RenderCanvasTileModel(
    //     tileId: editorTile.tileId,
    //     hasTerrain: editorTile.hasTerrain,
    //     hasWater: editorTile.hasWater,
    //     isWaterTop: editorTile.isWaterTop,
    //   );
    // }

    // /// Export game objects

    // for (final MapEntry(key: gid, value: gameObject)
    //     in state.gameObjects.entries) {
    //   gameObjects[gid] = RenderObjectModel(
    //     id: gameObject.id,
    //     tileId: gameObject.tileId,
    //     distanceToOrigin: gameObject.distanceToOrigin,
    //     distanceToTileLeftTopCorner: gameObject.distanceToTileLeftTopCorner,
    //     position: gameObject.position,
    //   );

    //   /// add objects to tiles
    //   final originUtils = OriginVectorUtils.use(dto.drawerCubit.state.origin);

    //   final maybeCellPoint = originUtils.getCurrentCellByGameObject(gameObject);
    //   final cell = maybeCellPoint.toCellPoint();
    //   final tile = tiles[cell];
    //   if (tile == null) {
    //     // create tile
    //     tiles[cell] = RenderCanvasTileModel(
    //       tileId: TileId.empty,
    //       objects: [gameObject.id],
    //     );
    //   } else {
    //     // update tile
    //     tiles[cell] = tile.copyWith(
    //       objects: tile.objects + [gameObject.id],
    //     );
    //   }
    // }

    /// create a Grid
  }

  Future<void> load() async {}
}
