import 'package:map_editor/state/state.dart';

class CanvasCubitDto {
  CanvasCubitDto();
}

class CanvasCubit extends DrawerCubit {
  CanvasCubit({
    required this.canvasDto,
    required final DrawerCubitDto drawerCubit,
  }) : super(dto: drawerCubit);
  final CanvasCubitDto canvasDto;
  @override
  Future<void> loadInitialData() async {
    await loadResources();
  }
}
