// ignore_for_file: invalid_annotation_target

part of '../models.dart';

@freezed
class PlayerObjectModel with _$PlayerObjectModel {
  const factory PlayerObjectModel({
    required final RenderCanvasObjectModel canvasObject,
  }) = _PlayerObjectModel;
  const PlayerObjectModel._();
  factory PlayerObjectModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerObjectModelFromJson(json);
  Gid get id => canvasObject.id;
  static const empty = PlayerObjectModel(
    canvasObject: RenderCanvasObjectModel.empty,
  );
}
