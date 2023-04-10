part of '../../state.dart';

@freezed
class MapEditorBlocState with _$MapEditorBlocState {
  const factory MapEditorBlocState.empty() = EmptyMapEditorBlocState;
  const factory MapEditorBlocState.loaded({
    required final TileDataModelMap tileData,
    @Default(true) final bool isEditing,
  }) = LoadedMapEditorBlocState;
}
