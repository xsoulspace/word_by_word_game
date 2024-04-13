import 'package:flame/cache.dart';
import 'package:logger/logger.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

class CanvasCubitDto {
  CanvasCubitDto();
}

/// Class for canvas data rendering
final class CanvasCubit extends DrawerCubit {
  CanvasCubit(final BuildContext context)
      : canvasDto = CanvasCubitDto(),
        super(
          dto: DrawerCubitDto.use(context: context),
          resourcesLoader: ResourcesLoader(
            tilesetAssets: AssetsCache(
              prefix: 'packages/map_editor/assets/images/',
            ),
          ),
          rootPath: 'packages/map_editor/',
        );
  final _log = Logger();
  final CanvasCubitDto canvasDto;
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

  // TODO(arenukvern): cache it
  Iterable<LayerModel> get _collidableLayers =>
      state.canvasData.layers.where((final e) => e.isCollidable);

  Set<CollisionConsequence> checkIsCollidingWithTiles({
    required final List<CellPointModel> hitboxCells,
  }) {
    final consequences = <CollisionConsequence>{};
    for (final layer in _collidableLayers) {
      for (final cell in hitboxCells) {
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
