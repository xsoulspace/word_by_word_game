import 'package:flame/cache.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';

class CanvasCubitDto {
  CanvasCubitDto();
}

class CanvasCubit extends DrawerCubit {
  CanvasCubit({
    required this.canvasDto,
    required final DrawerCubitDto drawerCubit,
  }) : super(
          dto: drawerCubit,
          resourcesLoader: ResourcesLoader(
            tilesetAssets: AssetsCache(
              prefix: 'packages/map_editor/assets/images/',
            ),
            cachePrefix: 'packages/map_editor/assets/images/',
          ),
          rootPath: 'packages/map_editor/',
        );

  final CanvasCubitDto canvasDto;
  @override
  Future<void> loadInitialData() async {
    await loadResources();
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

  void loadCanvasData({
    required final CanvasDataModel canvasData,
  }) {
    emit(
      state.copyWith(
        canvasData: canvasData,
        drawLayerId: canvasData.layers.firstOrNull?.id ?? LayerModel.empty.id,
      ),
    );
  }
}
