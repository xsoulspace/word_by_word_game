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

  bool checkIsCollidingWithTiles({
    required final CellPointModel cell,
  }) {
    bool isColliding = false;
    for (final layer in _collidableLayers) {
      isColliding = layer.tiles.containsKey(cell);
      if (isColliding) return true;
    }
    return false;
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
