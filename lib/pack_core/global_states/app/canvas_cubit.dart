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
