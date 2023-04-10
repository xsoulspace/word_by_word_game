part of '../../state.dart';

@freezed
class DrawerCubitState with _$DrawerCubitState {
  const factory DrawerCubitState({
    @Default(kMinSelectionIndex) final int selectionIndex,
    @Default(false) final bool isDeleteSelection,
    @Default(false) final bool isDeleteSelectionCompletely,
    @Default({}) final Map<CellPointModel, CanvasTileModel> canvasData,

    /// can be negative and positive
    @Default(0) final double gravityYPosition,

    /// can be negative and positive
    @Default(0) final double skyYPosition,
  }) = _DrawerCubitState;
}
