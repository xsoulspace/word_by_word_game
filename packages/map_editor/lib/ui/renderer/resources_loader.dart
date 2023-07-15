import 'dart:async';
import 'dart:convert';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/ui/renderer/editor/editor.dart';
import 'package:map_editor/ui/renderer/game_renderer.dart';
import 'package:path/path.dart' as path;

mixin HasResourcesLoaderRef on Component, HasGameRef<GameRenderer> {
  Image getImage(final String path) => game.images.fromCache(path);
}

class ResourcesLoader {
  /// List of all asset files like:
  /// 'assets/images/clouds/Small Cloud 1.png'
  ///
  /// Always starts with assets keyword.
  Map<String, dynamic> _manifestMap = {};
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> onLoad() async {
    if (_isLoaded) return;
    _isLoaded = true;
    await _loadImagesManifest();
  }

  Future<void> _loadImagesManifest() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> rawManifestMap = jsonDecode(manifestContent);
    _manifestMap = rawManifestMap.map(
      (final key, final value) => MapEntry(_fixAssetsPath(key), value),
    );
  }

  static String _fixAssetsPath(final String path) =>
      path.replaceAll('assets/images/', '');

  Map<TileBehaviourType, AnimationEntryModel>
      getPathsForPresetCharacterGraphics({
    required final PresetTileGraphicsModel tileGraphics,
  }) {
    // assert(tileGraphics.type == TileGraphicsType.character, '');
    final map = <TileBehaviourType, AnimationEntryModel>{};
    final folderPath = tileGraphics.path;
    if (folderPath.isEmpty) return map;

    for (final behaviour in tileGraphics.behaviours) {
      final behaviourPath = '$folderPath/$behaviour';

      /// maybe folder (if animation) or file (if no animation)
      /// otherwise should throw an error
      final paths = _manifestMap.keys
          .where((final e) => e.startsWith(behaviourPath))
          .toList();

      if (paths.isEmpty) continue;

      /// folders case
      if (tileGraphics.animated) {
        map[behaviour] = AnimationEntryModel(
          framesLength: paths.length,
          framesPaths: paths,
        );

        /// files case
      } else {
        assert(
          paths.length == 1,
          'if not a file, then should be folder and animated',
        );

        map[behaviour] = AnimationEntryModel.singleFrame(paths.first);
      }
    }
    return map;
  }

  Map<NeighbourTileTitle, AnimationEntryModel>
      getPathsForPresetDirectionalGraphics({
    required final PresetTileGraphicsModel tileGraphics,
  }) {
    // assert(tileGraphics.type == TileGraphicsType.directional, '');
    final map = <NeighbourTileTitle, AnimationEntryModel>{};
    final rootFolderPath = tileGraphics.path;
    if (rootFolderPath.isEmpty) return map;
    final paths = _manifestMap.keys
        .where((final e) => e.startsWith(rootFolderPath))
        .toList();
    if (paths.isEmpty) return map;
    if (tileGraphics.animated) {
      for (final fullPath in paths) {
        final [..., folderTitle, _] = fullPath.split('/');
        final folderPath = '$rootFolderPath/$folderTitle';
        final folderPaths = _manifestMap.keys
            .where((final e) => e.startsWith(folderPath))
            .toList();
        if (folderPaths.isEmpty) continue;
        map.update(
          folderTitle,
          (final value) => value.copyWith(
            framesLength: folderPaths.length,
            framesPaths: folderPaths,
          ),
          ifAbsent: () => AnimationEntryModel(
            framesLength: folderPaths.length,
            framesPaths: folderPaths,
          ),
        );
      }
      // TODO(antmalofeev): add accosiations
    } else {
      for (final filePathWithExtension in paths) {
        final filePathWithoutExtension =
            path.withoutExtension(filePathWithExtension);

        final [..., fileTitle] = filePathWithoutExtension.split('/');

        map[fileTitle] = AnimationEntryModel.singleFrame(filePathWithExtension);
      }
    }

    return map;
  }
}

class AnimationUpdater extends Component
    with HasGameRef<GameRenderer>, HasEditorRef, HasResourcesLoaderRef {
  static AnimationEntryModel updateAnimationFrame({
    required final AnimationEntryModel entry,
    required final GameRendererConfig config,
    required final double dt,
  }) {
    double frameIndex = entry.frameIndex + (config.animationSpeed * dt);
    if (frameIndex > entry.framesLength - 1) {
      frameIndex = 0;
    }
    return entry.copyWith(
      frameIndex: frameIndex,
    );
  }

  @override
  void update(final double dt) {
    final Map<TileId, PresetTileResource> tiles = {};
    for (final MapEntry(key: cellPoint, value: cellTile)
        in drawerCubit.tilesResources.tiles.entries) {
      final graphics = cellTile.tile.graphics;
      final isAnimated = graphics.animated;

      switch (graphics.type) {
        case TileGraphicsType.character when isAnimated:
          for (final behaviour in graphics.behaviours) {
            final animationEntry = cellTile.behaviourPaths[behaviour];
            if (animationEntry == null) continue;
            tiles[cellPoint]?.behaviourPaths[behaviour] = updateAnimationFrame(
              config: game.config,
              dt: dt,
              entry: animationEntry,
            );
          }
        case TileGraphicsType.character:

          /// skipping update as non animated tiles should not be updated
          break;
        case TileGraphicsType.directional when isAnimated:
          for (final MapEntry(key: path, value: animationEntry)
              in cellTile.directionalPaths.entries) {
            tiles[cellPoint]?.directionalPaths[path] = updateAnimationFrame(
              config: game.config,
              dt: dt,
              entry: animationEntry,
            );
          }

        case TileGraphicsType.directional:

          /// skipping update as non animated tiles should not be updated
          break;
      }
    }

    super.update(dt);
  }
}
