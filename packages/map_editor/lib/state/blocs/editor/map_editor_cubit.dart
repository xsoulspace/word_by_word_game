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
    final tiles = <CellPointModel, RenderCanvasTileModel>{};
    final gameObjects = <Gid, RenderCanvasObjectModel>{};
    final skyYPosition = dto.drawerCubit.state.skyYPosition;

    /// Export static tiles.
    /// Every tile has distance to origin equals to zero.
    for (final MapEntry(key: cellPoint, value: editorTile)
        in dto.drawerCubit.canvasData.entries) {
      if (editorTile.isEmpty) continue;

      tiles[cellPoint] = RenderCanvasTileModel(
        tileId: editorTile.tileId,
        hasTerrain: editorTile.hasTerrain,
        hasWater: editorTile.hasWater,
        isWaterTop: editorTile.isWaterTop,
      );
    }

    /// Export game objects

    for (final gameObjectEntry in state.gameObjects.entries) {
      final gid = gameObjectEntry.key;
      final gameObject = gameObjectEntry.value;
      gameObjects[gid] = RenderCanvasObjectModel(
        id: gameObject.id,
        tileId: gameObject.tileId,
        distanceToOrigin: gameObject.distanceToOrigin,
        distanceToTileLeftTopCorner: gameObject.distanceToTileLeftTopCorner,
        position: gameObject.position,
      );
    }

    /// add objects to tiles
    final originUtils = OriginVectorUtils.use(dto.drawerCubit.state.origin);

    // final currentCell = originUtils.getCurrentCellByObject();

    /// create a Grid
  }

  Future<void> load() async {}
}
