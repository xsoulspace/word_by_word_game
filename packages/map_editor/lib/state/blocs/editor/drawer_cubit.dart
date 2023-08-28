part of '../../state.dart';

class DrawerCubitDto {
  DrawerCubitDto.use({
    required final BuildContext context,
  }) : localDbDataSource = context.read();
  final LocalDbDataSource localDbDataSource;
}

String get _levelsMapsPersistanceKet => 'maps_saves';

/// Base class for canvas resources
abstract base class DrawerCubit extends Cubit<DrawerCubitState> {
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

  /// This function should be triggered before game is started to renderc
  @mustBeOverridden
  Future<void> loadInitialData();

  Future<void> prepareTilesetForLevel({
    required final LevelModel level,
  }) async {
    final tilesetConfig = getTilesetConfig(type: level.tilesetType);
    await loadTileset(tilesetConfig);
  }

  TilesetConfigModel getTilesetConfig({
    required final TilesetType type,
  }) {
    TilesetConfigModel? tilesetConfig = state.tilesetsConfigs.firstWhereOrNull(
      (final config) => config.type == type,
    );
    return tilesetConfig ??= state.tilesetsConfigs.firstWhere(
      (final e) => e.cleanPath.endsWith(TilesetType.colourful.name),
    );
  }

  void loadTilesets() {
    final tilesetsPresetsConfigs = Assets.images.tilesets.values
        .where((final e) => e.contains('preset_data.json'))
        .map((final e) => TilesetConfigModel(path: e))
        .toList();
    emit(state.copyWith(tilesetsConfigs: tilesetsPresetsConfigs));
  }

  Future<void> loadResourcesData() async {
    await resourcesLoader.onLoad();
  }

  Future<void> loadTileset(final TilesetConfigModel tilesetConfig) async {
    final jsonStr =
        await rootBundle.loadString('$rootPath${tilesetConfig.presetPath}');
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;
    final tileData = TilesetPresetDataModel.fromJson(json);
    final tilesetResources = TilesetPresetResources.fromModel(
      data: tileData,
      resourcesLoader: resourcesLoader,
      tilesetConfig: tilesetConfig,
    );
    emit(
      state.copyWith(
        tileResources: tilesetResources,
        canvasData: canvasData,
        drawLayerId: canvasData.layers.firstOrNull?.id ?? LayerModel.empty.id,
      ),
    );
    resourcesLoader.loadTileset(
      tilesetConfig: tilesetConfig,
      tilesetResources: tilesetResources,
    );
    final images = _images;
    if (images != null) await loadCache(images: images);
  }

  Images? _images;

  /// This function should be triggered when game.onLoad happening
  Future<void> loadCache({required final Images images}) async {
    final eImages = _images ??= images;
    Future<void> load(final PresetTileResource resource) =>
        resource.loadToCache(images: eImages);

    await Future.wait([
      resourcesLoader.tilesetConstants.onLoad(images: eImages),
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

  List<LayerModel> get layers => state.canvasData.layers;
  set layers(final List<LayerModel> layers) => emit(
        state.copyWith(
          canvasData: state.canvasData.copyWith(layers: layers),
        ),
      );
}

/// Class for editing canvas data
final class EditorDrawerCubit extends DrawerCubit {
  EditorDrawerCubit({required super.dto, required super.resourcesLoader});
  final levelsMapsNotifier = ValueNotifier(<CanvasDataModel>[]);
  @override
  Future<void> close() {
    levelsMapsNotifier.dispose();
    return super.close();
  }

  @override
  Future<void> loadInitialData() async {
    await loadAllCanvasData();
    await loadResourcesData();
    loadTilesets();

    CanvasDataModel? updatedCanvasData = levelsMapsNotifier.value.firstOrNull;
    if (updatedCanvasData == null) {
      updatedCanvasData = await _createCanvasData();
      levelsMapsNotifier.value = [updatedCanvasData];
    }
    await loadCanvasData(updatedCanvasData);
    await saveData();
  }

  /// reloads the canvas data completely, with tileset
  /// resources, layers, players & objects
  Future<void> changeCurrentLevelMap(
    final CanvasDataModel canvasData,
  ) async {
    await saveData();
    await loadCanvasData(canvasData);
  }

  Future<CanvasDataModel> _createCanvasData() async {
    /// preloading tileset config to get name and type
    final tilesetConfig = getTilesetConfig(
      type: state.tilesetsConfigs.first.type,
    );
    await loadTileset(tilesetConfig);
    return CanvasDataModel.create().copyWith(
      name: state.tileResources.name,
      tilesetType: state.tileResources.type,
    );
  }

  Future<void> addLevelMap() async {
    final newCanvasData = await _createCanvasData();
    await loadCanvasData(newCanvasData);
    await saveData();
  }

  Future<void> removeLevelMap(final BuildContext context) async {
    if (levelsMapsNotifier.value.length <= 1) return;
    final shouldProceedToDelete = await showAdaptiveDialog<bool>(
      context: context,
      builder: (final context) => AlertDialog.adaptive(
        title: const Text('Are you sure want to delete this level?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('No'),
          ),
        ],
      ),
    );
    if (shouldProceedToDelete == null || !shouldProceedToDelete) return;
    final canvasDatas = [...levelsMapsNotifier.value];
    final index =
        levelsMapsNotifier.value.indexWhere((final e) => e.id == canvasData.id);
    canvasDatas.removeAt(index);
    levelsMapsNotifier.value = canvasDatas;
    final firstCanvasData = canvasDatas.first;
    emit(
      state.copyWith(
        canvasData: firstCanvasData,
        drawLayerId:
            firstCanvasData.layers.firstOrNull?.id ?? LayerModel.empty.id,
      ),
    );
    unawaited(saveData());
  }

  /// Changes tileset type in current canvas data
  Future<void> changeTilesetType(final TilesetType type) async {
    final updatedCanvasData = canvasData.copyWith(
      tilesetType: type,
      layers: [],
    );
    await loadCanvasData(updatedCanvasData);
  }

  Future<void> loadAllCanvasData() async {
    final levelsJsons = await dto.localDbDataSource
        .getMapIterable(key: _levelsMapsPersistanceKet);
    levelsMapsNotifier.value =
        levelsJsons.map(CanvasDataModel.fromJson).toList();
  }

  Future<void> loadCanvasData(
    final CanvasDataModel newCanvasData,
  ) async {
    final tilesetConfig = getTilesetConfig(type: newCanvasData.tilesetType);
    await loadTileset(tilesetConfig);

    emit(
      state.copyWith(
        canvasData: newCanvasData,
        drawLayerId:
            newCanvasData.layers.firstOrNull?.id ?? LayerModel.empty.id,
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
          ),
        ],
      ),
    );
  }

  Future<void> saveData() async {
    final levels = [...levelsMapsNotifier.value];
    final index = levels.indexWhere((final e) => e.id == canvasData.id);
    if (index < 0) {
      levels.add(canvasData);
    } else {
      levels[index] = canvasData;
    }
    final eLevels = levels.map((final e) => e.toJson()).toList();
    await dto.localDbDataSource.setMapList(
      key: _levelsMapsPersistanceKet,
      value: eLevels,
    );
    levelsMapsNotifier.value = levels;
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

  void selectLayer({required final LayerModelId? id}) {
    if (id == null) return;
    emit(state.copyWith(drawLayerId: id));
  }

  LayerModel get drawLayer => state.drawLayer;
  set drawLayer(final LayerModel layer) {
    final index = layers.indexWhere((final e) => e.id == layer.id);
    layers = [...state.canvasData.layers]..[index] = layer;
  }

  void createNewLayer({
    required final String title,
  }) {
    final layer = LayerModel(title: title, id: LayerModelId.create());
    if (drawLayer.id.isEmpty) {
      emit(state.copyWith(drawLayerId: layer.id));
    }
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
