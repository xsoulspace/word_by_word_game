part of 'preset_resources.dart';

/// Can be name of file or name of folder with animation
/// Fot example: ABC or DC, etc
///
/// Usually this string created by [CanvasTileMap.terrainNeighbours.join()]
typedef NeighbourTileTitle = String;

@freezed
class PresetTileResource with _$PresetTileResource {
  const factory PresetTileResource({
    required final PresetTileModel tile,
    @Default({})
    final Map<TileBehaviourType, AnimationEntryModel> behaviourPaths,
    @Default({})
    final Map<NeighbourTileTitle, AnimationEntryModel> directionalPaths,
  }) = _PresetTileResource;
  const PresetTileResource._();
  static Future<PresetTileResource> fromTile({
    required final PresetTileModel tile,
    required final Map<String, dynamic> manifestMap,
  }) async {
    final behaviourAnimations = <TileBehaviourType, AnimationEntryModel>{};
    for (final behaviour in tile.graphics.behaviours) {
      behaviourAnimations[behaviour] = AnimationEntryModel(
        
      );
    }

    final directionalAnimations = {};
    return PresetTileResource(
        tile: tile,
        behaviourAnimations: ,
        directionalAnimations: ,
      );
  }
  TileId get id => tile.id;
}
