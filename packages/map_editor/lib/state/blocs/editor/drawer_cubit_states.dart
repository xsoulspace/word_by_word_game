part of 'drawer_cubit.dart';

@freezed
class DrawerCubitState with _$DrawerCubitState {
  const factory DrawerCubitState({
    /// Real origin for all elements
    required final Vector2 origin,
    final PresetTileResource? tileToDraw,
    @Default(false) final bool isDeleteSelection,
    @Default(false) final bool isDeleteSelectionCompletely,
    @Default(CanvasDataModel.empty) final CanvasDataModel canvasData,

    /// use to get or update layer [canvasData]
    ///
    /// shortcut - [drawLayer]
    @Default(LayerModelId.empty) final LayerModelId drawLayerId,

    /// Never changable in runtime tileset, like grass, water and data
    /// to instantiate objects
    @Default(TilesetPresetResources.empty)
    final TilesetPresetResources tileResources,
    @Default([]) final List<TilesetConfigModel> tilesetsConfigs,
  }) = _DrawerCubitState;
  const DrawerCubitState._();
  static final empty = DrawerCubitState(origin: Vector2.zero());

  /// First cell position to calculate the grid and positions
  /// currently fitted into screen size.
  @useResult
  Vector2 getOffsetOrigin() => Vector2(
        origin.x - ((origin.x ~/ kTileDimension) * kTileDimension),
        origin.y - ((origin.y ~/ kTileDimension) * kTileDimension),
      );
  LayerModel get drawLayer {
    final layers = canvasData.layers;
    if (layers.isEmpty || (drawLayerId.isEmpty)) {
      return LayerModel.empty;
    }
    return layers.firstWhere((final e) => e.id == drawLayerId);
  }
}
