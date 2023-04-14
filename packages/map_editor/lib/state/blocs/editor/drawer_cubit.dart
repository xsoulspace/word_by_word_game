part of '../../state.dart';

const int kMinSelectionIndex = 2;
int get kMaxSelectionIndex => 18;

class DrawerCubitDto {
  DrawerCubitDto.use(final Locator read) : mapEditorBloc = read();
  final MapEditorBloc mapEditorBloc;
}

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit({
    required final Locator read,
  })  : dto = DrawerCubitDto.use(read),
        super(DrawerCubitState.empty);
  final DrawerCubitDto dto;
  int get selectionIndex => state.selectionIndex;
  set selectionIndex(final int value) {
    final resultValue = math.max(
      kMinSelectionIndex,
      math.min(kMaxSelectionIndex, value),
    );
    emit(state.copyWith(selectionIndex: resultValue));
  }

  void changeOrigin(final Vector2 value) => emit(state.copyWith(origin: value));

  void changeState(final DrawerCubitState newState) => emit(newState);

  TileDataModel get selectionData =>
      dto.mapEditorBloc.loadedState.tileData['$selectionIndex']!;

  Map<CellPointModel, CanvasTileModel> get canvasData => state.canvasData;

  set canvasData(final Map<CellPointModel, CanvasTileModel> value) {
    emit(state.copyWith(canvasData: value));
  }

  // ignore: avoid_positional_boolean_parameters
  void onChangeIsDeleteSelection(final bool isDeleteSelection) {
    emit(state.copyWith(isDeleteSelection: isDeleteSelection));
  }
}
