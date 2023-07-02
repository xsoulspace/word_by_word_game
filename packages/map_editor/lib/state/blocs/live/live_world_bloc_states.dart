part of '../../state.dart';

@freezed
class LiveWorldBlocState with _$LiveWorldBlocState {
  const factory LiveWorldBlocState({
    /// The player object
    required final PlayerObjectModel player,

    /// Never changable tileset, like grass, water
    @Default({}) final Map<Gid, RenderCanvasTileModel> tiles,

    /// Moving or idle obstacle - objects,
    /// like the birds, trees etc.
    @Default({}) final Map<Gid, RenderCanvasObjectModel> dynamicObjects,
  }) = _LiveWorldBlocState;
  const LiveWorldBlocState._();
}