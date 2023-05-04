part of '../../state.dart';

@freezed
class MapEditorBlocState with _$MapEditorBlocState {
  const factory MapEditorBlocState({
    required final GameObjectsMap gameObjects,
    required final TileDataModelMap tileData,
    @Default(true) final bool isEditing,
  }) = _MapEditorBlocState;
}
