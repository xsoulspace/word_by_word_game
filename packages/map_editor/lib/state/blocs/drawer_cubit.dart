part of '../state.dart';

const int kMinSelectionIndex = 2;
int get kMaxSelectionIndex => 18;

class DrawerCubitDto {
  DrawerCubitDto(final Locator read) : mapEditorBloc = read();
  final MapEditorBloc mapEditorBloc;
}

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit({
    required this.dto,
  }) : super(const DrawerCubitState());
  final DrawerCubitDto dto;
  int get selectionIndex => state.selectionIndex;
  set selectionIndex(final int value) {
    final resultValue = math.max(
      kMinSelectionIndex,
      math.min(kMaxSelectionIndex, value),
    );
    emit(state.copyWith(selectionIndex: resultValue));
  }

  TileDataModel get selectionData =>
      dto.mapEditorBloc.loadedState.tileData['$selectionIndex']!;

  Map<CellPointModel, CanvasTile> get canvasData => state.canvasData;

  set canvasData(final Map<CellPointModel, CanvasTile> value) {
    emit(state.copyWith(canvasData: value));
  }
}
