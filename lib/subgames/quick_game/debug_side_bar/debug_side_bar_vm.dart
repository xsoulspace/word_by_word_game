part of 'debug_side_bar.dart';

class UiDebugSideBarCubitState {}

class UiDebugSideBarCubit extends Cubit<UiDebugSideBarCubitState> {
  UiDebugSideBarCubit() : super(UiDebugSideBarCubitState());
  final liftForceController = TextEditingController();
  final fuelController = TextEditingController();
  @override
  Future<void> close() {
    liftForceController.dispose();
    fuelController.dispose();
    return super.close();
  }
}
