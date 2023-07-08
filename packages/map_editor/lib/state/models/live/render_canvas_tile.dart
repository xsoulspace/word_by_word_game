part of '../models.dart';

/// Keeps information about how to render canvas tile.
/// Used to save and restore canvas tile.

@freezed
class RenderCanvasTileModel with _$RenderCanvasTileModel {
  const factory RenderCanvasTileModel({
    /// Since the [tileId] is always unqiue, it will be used as GID
    required final TileId tileId,

    /// Terrain
    @Default(false) final bool hasTerrain,

    /// Water
    @Default(false) final bool hasWater,
    @Default(false) final bool isWaterTop,

    /// The [Gid] in common is [RenderCanvasObjectModel.id]
    @Default([]) final List<Gid> objects,
  }) = _RenderCanvasTileModel;
  const RenderCanvasTileModel._();
  factory RenderCanvasTileModel.fromJson(final Map<String, dynamic> json) =>
      _$RenderCanvasTileModelFromJson(json);

  Gid get id => tileId.toGid();
}
