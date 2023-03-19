part of '../state.dart';

const int kMinSelectionIndex = 2;
int get kMaxSelectionIndex => 18;

class DrawerCubit extends Cubit<DrawerCubitState> {
  DrawerCubit() : super(const DrawerCubitState());

  int get selectionIndex => state.selectionIndex;
  set selectionIndex(final int value) {
    final resultValue = math.max(
      kMinSelectionIndex,
      math.min(kMaxSelectionIndex, value),
    );
    emit(state.copyWith(selectionIndex: resultValue));
  }

  Map<CellPointModel, dynamic> get canvasData => state.canvasData;

  set canvasData(final Map<CellPointModel, dynamic> value) {
    emit(state.copyWith(canvasData: value));
  }
}
