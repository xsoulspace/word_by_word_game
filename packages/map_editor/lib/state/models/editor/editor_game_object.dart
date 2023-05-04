part of '../models.dart';

typedef GameObjectsMap = Map<Gid, EditorGameObjectModel>;

/// The object can contain some properties of [CanvasTileModel]
@freezed
class EditorGameObjectModel with _$EditorGameObjectModel {
  const factory EditorGameObjectModel({
    required final Gid id,
    required final TileId tileId,
    @Default(SerializedVector2.zero) final SerializedVector2 position,
    @Default(SerializedVector2.zero) final SerializedVector2 distanceToOrigin,
    @Default(SerializedVector2.zero)
        final SerializedVector2 distanceToTileLeftTopCorner,
  }) = _EditorGameObjectModel;

  factory EditorGameObjectModel.fromJson(final Map<String, dynamic> json) =>
      _$EditorGameObjectModelFromJson(json);
}
