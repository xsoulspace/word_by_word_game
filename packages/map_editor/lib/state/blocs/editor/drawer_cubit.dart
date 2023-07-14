part of '../../state.dart';

class DrawerCubitDto {
  // ignore: avoid_unused_constructor_parameters
  DrawerCubitDto.use(final Locator read);
}

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit({
    required final Locator read,
  })  : dto = DrawerCubitDto.use(read),
        super(DrawerCubitState.empty);
  final DrawerCubitDto dto;
  PresetTileResource? get tileToDraw => state.tileToDraw;
  set tileToDraw(final PresetTileResource? data) =>
      emit(state.copyWith(tileToDraw: data));

  final ResourcesLoader resourcesLoader = ResourcesLoader();
  void changeOrigin(final Vector2 value) => emit(state.copyWith(origin: value));

  void changeState(final DrawerCubitState newState) => emit(newState);

  /// This function should be triggered before game is started to renderc
  Future<void> loadInitialData() async {
    await resourcesLoader.onLoad();
    final jsonStr = await rootBundle.loadString(Assets.json.tilesPresetData);
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final tileData = TilesPresetDataModel.fromJson(json);

    final tileResources = TilesPresetResources.fromModel(
      data: tileData,
      resourcesLoader: resourcesLoader,
    );
    emit(DrawerCubitState.empty.copyWith(tileResources: tileResources));
  }

  /// This function should be triggered when game.onLoad happening
  Future<void> loadCache({
    required final Images images,
  }) async {
    Future<void> load(final PresetTileResource resource) =>
        resource.loadToCache(images: images);
    await Future.wait([
      ...state.tileResources.tiles.values.map(load),
      ...state.tileResources.objects.values.map(load),
      ...state.tileResources.npcs.values.map(load),
      ...state.tileResources.players.values.map(load),
    ]);
  }

  TilesPresetResources get tilesResources => state.tileResources;

  CanvasDataModel get canvasData => state.canvasData;

  set canvasData(final CanvasDataModel value) {
    emit(state.copyWith(canvasData: value));
  }

  void selectLayer({required final int index}) {
    emit(state.copyWith(drawLayerIndex: index));
  }

  LayerModel get drawLayer => state.drawLayer;
  set drawLayer(final LayerModel layer) => emit(
        state.copyWith(
          canvasData: state.canvasData.copyWith(
            layers: [...state.canvasData.layers]..[state.drawLayerIndex] =
                layer,
          ),
        ),
      );

  void addTile({required final CellPointModel cell}) {
    final resourceTile = state.tileToDraw;
    if (resourceTile == null) return;
    final updatedTileCell =
        (drawLayer.tiles[cell] ?? CellTileModel.empty).copyWith(
      tileId: resourceTile.id,
    );
    drawLayer = drawLayer.copyWith(
      tiles: {...drawLayer.tiles, cell: updatedTileCell},
    );
  }

  // ignore: avoid_positional_boolean_parameters
  void onChangeIsDeleteSelection(final bool isDeleteSelection) {
    emit(state.copyWith(isDeleteSelection: isDeleteSelection));
  }

  List<PresetTileResource> get objectsMenuTiles =>
      tilesResources.objects.values.toList();
}
