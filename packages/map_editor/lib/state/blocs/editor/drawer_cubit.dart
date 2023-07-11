part of '../../state.dart';

const int kMinSelectionIndex = 2;
int get kMaxSelectionIndex => 18;

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
  PresetTileResource? get selectedTile => state.selectedTile;

  final ResourcesLoader resourcesLoader = ResourcesLoader();
  void changeOrigin(final Vector2 value) => emit(state.copyWith(origin: value));

  void changeState(final DrawerCubitState newState) => emit(newState);

  /// This function should be triggered before game is started to renderc
  Future<void> loadInitialData() async {
    final jsonStr = await rootBundle.loadString(Assets.json.tilesPresetData);
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final tileData = TilesPresetDataModel.fromJson(json);
    final tileResources = TilesPresetResources.fromModel(
      data: tileData,
      resourcesLoader: resourcesLoader,
    );
    emit(DrawerCubitState.empty.copyWith(tileData: tileResources));
  }

  /// This function should be triggered when game.onLoad happening
  Future<void> loadCache({
    required final Images images,
  }) async {
    Future<void> load(final PresetTileResource resource) =>
        resource.loadToCache(images: images);
    await Future.wait([
      ...state.tileData.tiles.values.map(load),
      ...state.tileData.objects.values.map(load),
      ...state.tileData.npcs.values.map(load),
      ...state.tileData.players.values.map(load),
    ]);
  }

  TilesPresetResources get tilesData => state.tileData;

  Map<CellPointModel, CanvasTileModel> get canvasData => state.canvasData;

  set canvasData(final Map<CellPointModel, CanvasTileModel> value) {
    emit(state.copyWith(canvasData: value));
  }

  // ignore: avoid_positional_boolean_parameters
  void onChangeIsDeleteSelection(final bool isDeleteSelection) {
    emit(state.copyWith(isDeleteSelection: isDeleteSelection));
  }

  List<PresetTileResource> get objectsMenuTiles =>
      tilesData.objects.values.toList();
}
