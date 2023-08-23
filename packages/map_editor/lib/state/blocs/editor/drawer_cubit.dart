part of '../../state.dart';

class DrawerCubitDto {
  DrawerCubitDto.use({
    required final BuildContext context,
  }) : localDbDataSource = context.read();
  final LocalDbDataSource localDbDataSource;
}

String get _tempPersistanceKey => 'map_editor_save';

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit({
    required this.dto,
    required this.resourcesLoader,
    this.rootPath = '',
  }) : super(DrawerCubitState.empty);
  final String rootPath;
  final DrawerCubitDto dto;
  PresetTileResource? get tileToDraw => state.tileToDraw;
  set tileToDraw(final PresetTileResource? data) =>
      emit(state.copyWith(tileToDraw: data));

  final ResourcesLoader resourcesLoader;
  void changeOrigin(final Vector2 value) => emit(state.copyWith(origin: value));

  void changeState(final DrawerCubitState newState) => emit(newState);

  /// This function should be triggered before game is started to renderc
  Future<void> loadInitialData() async {
    loadTilesets();
    // TODO(arenukvern): should be dependent on tileset in level
    await loadTileset(state.tilesetsConfigs.first);
    await loadEditorCanvasData();
  }

  void loadTilesets() {
    final tilesetsPresetsConfigs = Assets.images.tilesets.values
        .where((final e) => e.contains('preset_data.json'))
        .map((final e) => TilesetConfigModel(path: e))
        .toList();
    emit(state.copyWith(tilesetsConfigs: tilesetsPresetsConfigs));
  }

  Future<void> loadEditorCanvasData() async {
    final canvasDataJson = await dto.localDbDataSource.getMap(
      _tempPersistanceKey,
    );

    final canvasData = canvasDataJson.isEmpty
        ? CanvasDataModel.empty
        : CanvasDataModel.fromJson(canvasDataJson);
    emit(
      state.copyWith(
        canvasData: canvasData,
        drawLayerId: canvasData.layers.firstOrNull?.id ?? LayerModel.empty.id,
      ),
    );
  }

  Future<void> onLoad() async {
    await resourcesLoader.onLoad();
  }

  Future<void> loadTileset(final TilesetConfigModel tilesetConfig) async {
    final jsonStr =
        await rootBundle.loadString('$rootPath${tilesetConfig.presetPath}');
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final tileData = TilesetPresetDataModel.fromJson(json);
    final tileResources = TilesetPresetResources.fromModel(
      data: tileData,
      resourcesLoader: resourcesLoader,
    );
    emit(
      state.copyWith(
        tileResources: tileResources,
        canvasData: canvasData,
        drawLayerId: canvasData.layers.firstOrNull?.id ?? LayerModel.empty.id,
      ),
    );
  }

  Future<void> copy({
    required final BuildContext context,
  }) async {
    final messenger = ScaffoldMessenger.of(context);
    final cleanCanvasData = canvasData.copyWith(
      layers: canvasData.layers
          .map(
            (final layer) => layer.copyWith(
              tiles: {...layer.tiles}
                ..removeWhere((final key, final value) => value.isEmpty),
            ),
          )
          .toList(),
    );
    final jsonMap = cleanCanvasData.toJson();
    final text = jsonEncode(jsonMap);
    await Clipboard.setData(ClipboardData(text: text));
    messenger.showMaterialBanner(
      MaterialBanner(
        content: const Text('Copied'),
        actions: [
          TextButton(
            onPressed: messenger.clearMaterialBanners,
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Future<void> paste({
    required final BuildContext context,
  }) async {
    final messenger = ScaffoldMessenger.of(context);
    final data = await Clipboard.getData('text/plain');
    final text = data?.text ?? '';
    if (text.isEmpty) return;
    final jsonMap = jsonDecode(text);
    canvasData = CanvasDataModel.fromJson(jsonMap);
    messenger.showMaterialBanner(
      MaterialBanner(
        content: const Text('Copied'),
        actions: [
          TextButton(
            onPressed: messenger.clearMaterialBanners,
            child: const Text('Close'),
          )
        ],
      ),
    );
  }

  Future<void> saveData() async {
    await dto.localDbDataSource.setMap(
      key: _tempPersistanceKey,
      value: canvasData.toJson(),
    );
  }

  Future<void> onChangeName(final LocalizedMap name) async {
    emit(
      state.copyWith(
        canvasData: state.canvasData.copyWith(
          name: name,
        ),
      ),
    );
  }

  /// This function should be triggered when game.onLoad happening
  Future<void> loadCache({
    required final Images images,
  }) async {
    Future<void> load(final PresetTileResource resource) =>
        resource.loadToCache(images: images);

    await Future.wait([
      resourcesLoader.tilesetConstants.onLoad(images: images),
      ...state.tileResources.tiles.values.map(load),
      ...state.tileResources.objects.values.map(load),
      ...state.tileResources.npcs.values.map(load),
      ...state.tileResources.other.values.map(load),
      ...state.tileResources.players.values.map(load),
    ]);
  }

  TilesetPresetResources get tilesResources => state.tileResources;
  set tilesResources(final TilesetPresetResources presetResources) =>
      emit(state.copyWith(tileResources: presetResources));

  CanvasDataModel get canvasData => state.canvasData;

  set canvasData(final CanvasDataModel value) {
    emit(state.copyWith(canvasData: value));
  }

  Map<Gid, RenderObjectModel> get objects => {
        ...canvasData.objects,
        canvasData.playerObject.id: canvasData.playerObject,
      };
  RenderObjectModel get player => canvasData.playerObject;

  set player(final RenderObjectModel value) {
    canvasData = canvasData.copyWith(
      playerObject: value,
    );
  }

  void selectLayer({required final LayerModelId? id}) {
    if (id == null) return;
    emit(state.copyWith(drawLayerId: id));
  }

  LayerModel get drawLayer => state.drawLayer;
  set drawLayer(final LayerModel layer) {
    final index = layers.indexWhere((final e) => e.id == layer.id);
    layers = [...state.canvasData.layers]..[index] = layer;
  }

  List<LayerModel> get layers => state.canvasData.layers;
  set layers(final List<LayerModel> layers) => emit(
        state.copyWith(
          canvasData: state.canvasData.copyWith(layers: layers),
        ),
      );

  void createNewLayer({
    required final String title,
  }) {
    final layer = LayerModel(title: title, id: LayerModelId.create());
    layers = [...state.canvasData.layers, layer];
  }

  void deleteLayer({
    required final LayerModel layer,
  }) {
    final index = layers.indexWhere((final e) => e.id == layer.id);
    layers = [...state.canvasData.layers]..removeAt(index);
    selectLayer(id: layers.first.id);
  }

  void reorderLayers(final int oldIndex, final int newIndex) {
    layers = [...layers]..reorder(oldIndex, newIndex);
  }

  void changeLayer({
    required final LayerModel layer,
    required final int index,
  }) {
    layers = [...state.canvasData.layers]..[index] = layer;
  }

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

  // ignore: avoid_positional_boolean_parameters
  void onChangeGravity(final GravityModel gravity) {
    emit(
      state.copyWith(canvasData: state.canvasData.copyWith(gravity: gravity)),
    );
  }

  List<PresetTileResource> get objectsMenuTiles =>
      tilesResources.objects.values.toList();
}
