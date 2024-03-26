import 'package:flame/cache.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';

class CanvasCubitDto {
  CanvasCubitDto();
}

/// Class for canvas data rendering
final class CanvasCubit extends DrawerCubit {
  CanvasCubit({
    required this.canvasDto,
    required final DrawerCubitDto drawerCubit,
  }) : super(
          dto: drawerCubit,
          resourcesLoader: ResourcesLoader(
            tilesetAssets: AssetsCache(
              prefix: 'packages/map_editor/assets/images/',
            ),
          ),
          rootPath: 'packages/map_editor/',
        );

  final CanvasCubitDto canvasDto;
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
    CanvasDataModel eCanvasData = canvasData;
    final tilesetConfig = getTilesetConfig(type: eCanvasData.tilesetType);
    await loadTileset(tilesetConfig);
    final player = eCanvasData.playerObject;
    if (!state.tileResources.players.containsKey(player.tileId)) {
      final firstPlayer = state.tileResources.players.values.first;
      eCanvasData = eCanvasData.copyWith(
        playerObject: player.copyWith(
          id: firstPlayer.id.toGid(),
          tileId: firstPlayer.tile.id,
        ),
      );
    }
    emit(state.copyWith(canvasData: eCanvasData));
  }
}
