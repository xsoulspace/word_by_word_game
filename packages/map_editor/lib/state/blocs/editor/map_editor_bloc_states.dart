part of '../../state.dart';

@freezed
class MapEditorBlocState with _$MapEditorBlocState {
  const factory MapEditorBlocState({
    @Default({}) final GameObjectsMap gameObjects,
    @Default(true) final bool isEditing,
  }) = _MapEditorBlocState;
}
