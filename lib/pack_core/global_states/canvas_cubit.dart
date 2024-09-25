import 'package:collection/collection.dart';
import 'package:flame/cache.dart';
import 'package:logger/logger.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

/// Class for canvas data rendering
final class CanvasCubit extends DrawerCubit {
  CanvasCubit(final BuildContext context)
      : super(
          dto: DrawerCubitDto.use(context: context),
          resourcesLoader: ResourcesLoader(
            tilesetAssets: AssetsCache(
              prefix: 'packages/map_editor/assets/images/',
            ),
          ),
          rootPath: 'packages/map_editor/',
        );
  final _log = Logger();
  @override
  Future<void> close() {
    _log.close();
    return super.close();
  }

  @override
  Future<void> loadInitialData() async {
    await loadResourcesData();
    loadTilesets();
  }

  List<LayerModel> get savableLayers => canvasData.layers;

  LayerModel get buildingsLayer =>
      layers.firstWhereOrNull((final e) => e.id == kDrawerBuildingsLayerId) ??
      LayerModel.buildings;

  /// Places a building object on the canvas at the specified cell position.
  ///
  /// The [cell] parameter specifies the position of the cell where
  /// the building object should be placed.
  /// The [object] parameter specifies the rendering object
  /// to be placed on the canvas.
  ///
  /// This function modifies the state of the canvas by adding the new
  /// building object to the existing layers and objects.
  /// It creates a new layer if the layer with ID [kDrawerBuildingsLayerId]
  /// does not exist, otherwise it updates the existing layer.
  /// The function updates the tiles in the layer to include the new building
  /// object at the specified cell position.
  /// It also updates the objects in the canvas data to include
  /// the new building object.
  void placeBuildingObject({
    required final CellPointModel cell,
    required final RenderObjectModel object,
  }) {
    final layers = state.canvasData.layers.toList();
    final layer = buildingsLayer;
    final layerIndex = layers.indexOf(layer);

    final newObjects = {...state.canvasData.objects}..[object.id] = object;
    final newCellTile = layer.tiles[cell] ??
        CellTileModel.empty.copyWith(
          objects: [...layer.tiles[cell]?.objects ?? [], object.id],
        );

    final newLayer = layer.copyWith(
      tiles: {...layer.tiles}..[cell] = newCellTile,
    );

    final newCanvasData = state.canvasData.copyWith(
      objects: newObjects,
      layers: layerIndex < 0
          ? [...layers, newLayer]
          : ([...layers]..[layerIndex] = newLayer),
    );

    emit(state.copyWith(canvasData: newCanvasData));
  }

  // TODO(arenukvern): cache it
  Iterable<LayerModel> get _collidableLayers =>
      state.canvasData.layers.where((final e) => e.isCollidable);
  List<CellTileLayerTuple> getFocusableTiles({
    required final List<CellPointModel> hitboxMapCells,
  }) {
    // TODO(arenukvern): add character tile check
    final tiles = <CellTileLayerTuple>[];
    for (final layer in [buildingsLayer]) {
      for (final cell in hitboxMapCells) {
        final tile = layer.tiles[cell];
        if (tile != null) {
          tiles.add((tile, layer));
          break;
        }
      }
    }
    return tiles;
  }

  Set<CollisionConsequence> checkIsCollidingWithTiles({
    required final List<CellPointModel> hitboxMapCells,
    final bool shouldIncludeBuildings = false,
  }) {
    final consequences = <CollisionConsequence>{};
    for (final layer in [
      ..._collidableLayers,
      if (shouldIncludeBuildings) buildingsLayer,
    ]) {
      for (final cell in hitboxMapCells) {
        final tile = layer.tiles[cell];
        if (tile != null) {
          consequences.add(layer.collisionConsequence);
          break;
        }
      }
    }
    return consequences;
  }

  Future<void> loadCanvasData({
    required final CanvasDataModel canvasData,
  }) async {
    final CanvasDataModel eCanvasData = canvasData;
    final tilesetConfig = getTilesetConfig(type: eCanvasData.tilesetType);
    await loadTileset(tilesetConfig);
    // _log.d('Loading canvas data...');
    final playerObj = eCanvasData.playerObject;
    // _log.d('Player tile id: ${playerObj.tileId}');
    emit(state.copyWith(canvasData: eCanvasData));

    // _log.d('Distance to origin: ${playerObj.distanceToOrigin}');

    /// case if tile is not correctly loaded
    if (!state.tileResources.players.containsKey(playerObj.tileId)) {
      // _log.d('Player tile id is not in tile resources. Adding...');
      final firstPlayer = state.tileResources.players.values.first;
      player = playerObj.copyWith(
        id: firstPlayer.id.toGid(),
        tileId: firstPlayer.tile.id,
      );
    }
  }
}

typedef CellTileLayerTuple = (CellTileModel tile, LayerModel layer);

extension CanvasCubitX on CanvasCubit {
  bool isBuildingExists(final GuiBuildingTypeEnum buildingType) {
    final object = state.canvasData.objects.values.firstWhereOrNull(
      (final e) => e.tileId == buildingType.tileId,
    );
    return object != null;
  }
}
