part of '../../state.dart';

class MapEditorCubitDto {
  MapEditorCubitDto.use(final BuildContext context)
      : drawerCubit = context.read();
  final DrawerCubit drawerCubit;
}

class MapEditorCubit extends Cubit<MapEditorBlocState> {
  MapEditorCubit({
    required this.dto,
  }) : super(const MapEditorBlocState());
  final MapEditorCubitDto dto;
  // ignore: avoid_positional_boolean_parameters
  Future<void> onChangeIsEditing(final bool isEditing) async {
    emit(state.copyWith(isEditing: isEditing));
  }

  Future<void> load() async {}
}
