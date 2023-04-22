part of '../models.dart';

/// Keeps information about how to render canvas object.
/// Used to save and restore canvas object.

@freezed
class RenderCanvasObjectModel with _$RenderCanvasObjectModel {
  const factory RenderCanvasObjectModel({
    /// Since tileId can be used several times
    /// It cannot be used as gid.
    ///
    /// Instead, the new gid should be created
    /// for every new [RenderCanvasObjectModel].
    required final Gid id,
    required final String tileId,
    @Default(SerializedVector2.zero) final SerializedVector2 position,
    @Default(SerializedVector2.zero) final SerializedVector2 distanceToOrigin,
    @Default(SerializedVector2.zero)
        final SerializedVector2 distanceToTileLeftTopCorner,
  }) = _RenderCanvasObjectModel;
  factory RenderCanvasObjectModel.fromJson(final Map<String, dynamic> json) =>
      _$RenderCanvasObjectModelFromJson(json);
  static const empty = RenderCanvasObjectModel(
    id: Gid.zero,
    tileId: '',
  );
}
