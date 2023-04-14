// ignore_for_file: invalid_annotation_target

part of '../models.dart';

@freezed
class GameObjectId with _$GameObjectId {
  @JsonSerializable()
  const factory GameObjectId({
    required final String value,
  }) = _GameObjectId;
  factory GameObjectId.fromJson(final Map<String, dynamic> json) =>
      _$GameObjectIdFromJson(json);
}

@freezed
class GameObjectModel with _$GameObjectModel {
  const factory GameObjectModel.controlled({
    required final GameObjectId id,
    // TODO(arenukvern): add player settings
    // TODO(arenukvern): add canvas object
    required final String canvasObjectProperties,
  }) = ControlledGameObjectModel;
  factory GameObjectModel.fromJson(final Map<String, dynamic> json) =>
      _$GameObjectModelFromJson(json);
}
