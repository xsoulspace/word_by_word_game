part of '../state.dart';

@freezed
class DrawerCubitState with _$DrawerCubitState {
  const factory DrawerCubitState({
    @Default(kMinSelectionIndex) final int selectionIndex,
  }) = _DrawerCubitState;
}
