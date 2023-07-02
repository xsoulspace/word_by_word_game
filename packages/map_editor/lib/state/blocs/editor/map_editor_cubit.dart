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
    for (final canvasEntry in dto.drawerCubit.canvasData.entries) {
      final currentCell = canvasEntry.key;
      final editorTile = canvasEntry.value;
      if (editorTile.isEmpty) continue;

      tiles[currentCell] = RenderCanvasTileModel(
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

  Future<void> load() async {
    final jsonStr = await rootBundle.loadString(Assets.json.tilesSettingsData);
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final tileData = json.map(
      (final key, final value) => MapEntry(key, TileDataModel.fromJson(value)),
    );
    emit(MapEditorBlocState(tileData: tileData));
  }

  TileDataModelMap get tilesData => state.tileData;

  Map<TileStyle, List<TileMenuItem>> get menuTiles {
    final tiles = <TileStyle, List<TileMenuItem>>{};
    for (var i = 0; i < tilesData.values.length; i++) {
      final tileData = tilesData['$i']!;
      final menuTitle = tileData.menu;
      if (menuTitle == null) continue;
      final item = TileMenuItem(data: tileData, index: i);
      tiles.update(
        menuTitle,
        (final value) => [...value, item],
        ifAbsent: () => [item],
      );
    }

    return tiles;
  }
}
