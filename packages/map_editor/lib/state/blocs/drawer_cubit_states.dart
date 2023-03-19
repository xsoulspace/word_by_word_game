part of '../state.dart';

@freezed
class DrawerCubitState with _$DrawerCubitState {
  const factory DrawerCubitState({
    @Default(kMinSelectionIndex) final int selectionIndex,
    @Default({}) final Map<CellPointModel, dynamic> canvasData,
  }) = _DrawerCubitState;
}
