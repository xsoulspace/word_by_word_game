part of '../../state.dart';

@freezed
class MapEditorBlocState with _$MapEditorBlocState {
  const factory MapEditorBlocState({
    @Default(false) final bool isEditing,
  }) = _MapEditorBlocState;
}
