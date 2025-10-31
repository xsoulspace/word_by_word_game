part of 'preset_resources.dart';

/// Can be name of file or name of folder with animation
/// Fot example: ABC or DC, etc
///
/// Usually this string created by
/// [CellTileModel.tileNeighbours.map((final e) => e.value).join()]
typedef SpriteCode = String;

@freezed
abstract class PresetTileResource with _$PresetTileResource {
  const factory PresetTileResource({
    required final PresetTileModel tile,
    @Default({})
    final Map<TileBehaviourType, AnimationEntryModel> behaviourPaths,
    @Default({}) final Map<SpriteCode, AnimationEntryModel> directionalPaths,
  }) = _PresetTileResource;
  const PresetTileResource._();
  factory PresetTileResource.fromTile({
    required final PresetTileModel tile,
    required final ResourcesLoader resourcesLoader,
    required final TilesetConfigModel tilesetConfig,
  }) {
    final behaviourPaths = resourcesLoader.getPathsForPresetCharacterGraphics(
      tile: tile,
      tilesetConfig: tilesetConfig,
    );
    final directionalPaths = resourcesLoader
        .getPathsForPresetDirectionalGraphics(
          tile: tile,
          tilesetConfig: tilesetConfig,
        );
    return PresetTileResource(
      tile: tile,
      behaviourPaths: behaviourPaths,
      directionalPaths: directionalPaths,
    );
  }

  Future<void> loadToCache({required final Images images}) async =>
      Future.wait([
        images.loadAll(
          behaviourPaths.values.expand((final e) => e.framesPaths).toList(),
        ),
        images.loadAll(
          directionalPaths.values.expand((final e) => e.framesPaths).toList(),
        ),
      ]);

  TileId get id => tile.id;
}
