import 'dart:async';
import 'dart:convert';

import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/ui/renderer/game_renderer.dart';
import 'package:path/path.dart' as path;

mixin HasResourcesLoaderRef on Component, HasGameRef<GameRenderer> {
  Map<String, AnimationEntryModel> get animations =>
      game.resourcesLoader.animations;

  /// Make sure you have cleared the path by
  /// [ResourcesComponent.fixAssetsPath]
  Image getImage(final String path) => game.images.fromCache(path);
}

class ResourcesLoader {
  ResourcesLoader();

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
    assert(tileGraphics.type == TileGraphicsType.character, '');
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
    assert(tileGraphics.type == TileGraphicsType.directional, '');
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
        map.update(
          folderPath,
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
      // TODO(antmalofeev): add behaviour accosiations
    } else {
      for (final filePathWithExtension in paths) {
        final filePathWithoutExtension =
            path.withoutExtension(filePathWithExtension);
        map[filePathWithoutExtension] =
            AnimationEntryModel.singleFrame(filePathWithExtension);
      }
    }

    return map;
  }
}

class ResourcesComponent extends Component with HasGameRef<GameRenderer> {
  String get terrainLandPath => '';
  String get terrainWaterPath => '';
  String get cursorHandlePath => '';

  Images get _images => game.images;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
  }

  /// Key - id
  final animations = <String, AnimationEntryModel>{};

  Future<void> _loadAnimations() async {
    await Future.wait(
      game.diDto.drawerCubit.tilesData.entries.map(loadTileGraphics),
    );
  }

  String _getTilePath({
    final TileStyle tileStyle = TileStyle.terrain,
  }) {
    switch (tileStyle) {
      case TileStyle.terrain:
        return terrainLandPath;
      case TileStyle.water:
        return terrainWaterPath;
      case TileStyle.cursorHandle:
        return cursorHandlePath;
      // ignore: no_default_cases
      default:
        return '';
    }
  }

  bool checkTileExistence(
    final String fileName, {
    final TileStyle tileStyle = TileStyle.terrain,
  }) =>
      _images.containsKey(
        '${_getTilePath(tileStyle: tileStyle)}'
        '/$fileName.png',
      );

  Image getTile(
    final String fileName, {
    final TileStyle tileStyle = TileStyle.terrain,
  }) =>
      _images.fromCache(
        '${_getTilePath(tileStyle: tileStyle)}'
        '/$fileName.png',
      );
}

class AnimationUpdater extends Component
    with HasGameRef<GameRenderer>, HasResourcesLoaderRef {
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
    for (final animationEntry in animations.entries) {
      animations[animationEntry.key] = updateAnimationFrame(
        config: game.config,
        dt: dt,
        entry: animationEntry.value,
      );
    }
    super.update(dt);
  }
}
