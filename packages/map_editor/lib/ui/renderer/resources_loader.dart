import 'dart:async';
import 'dart:convert';

import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/ui/renderer/editor/editor.dart';
import 'package:map_editor/ui/renderer/editor/tileset_constants.dart';
import 'package:map_editor/ui/renderer/editor_renderer.dart';
import 'package:path/path.dart' as path;
import 'package:recase/recase.dart';

mixin HasEditorResourcesLoaderRef on Component, HasGameRef<EditorRendererGame> {
  Image getImage(final String path) => game.images.fromCache(path);
}

class ResourcesLoader {
  ResourcesLoader({
    required this.tilesetAssets,
  });
  final AssetsCache tilesetAssets;
  TilesetConstants? _tilesetConstants;
  TilesetConstants get tilesetConstants {
    final consts = _tilesetConstants;
    if (consts == null) throw ArgumentError.notNull('call loadTileset first');
    return consts;
  }

  String get assetsPrefix => tilesetAssets.prefix;

  /// List of all asset files like:
  /// 'assets/images/clouds/Small Cloud 1.png'
  ///
  /// Always starts with assets keyword.
  Map<String, dynamic> _manifestMap = {};
  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  Images? _images;

  Future<void> onLoad() async {
    if (_isLoaded) return;
    _isLoaded = true;
    await _loadImagesManifest();
  }

  Future<void> onGameLoad(final Images images) async {
    if (_images != null) return;
    _images = images;
  }

  void loadTileset({
    required final TilesetConfigModel tilesetConfig,
    required final TilesetPresetResources tilesetResources,
  }) {
    _tilesetConstants = TilesetConstants(
      presetData: tilesetResources,
      tilesetConfig: tilesetConfig,
      assets: tilesetAssets,
    );
  }

  Future<void> _loadImagesManifest() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> rawManifestMap = jsonDecode(manifestContent);
    _manifestMap = rawManifestMap.map(
      (final key, final value) => MapEntry(fixAssetPath(key), value),
    );
  }

  /// removes prefixs from aset path
  String fixAssetPath(final String path) =>
      path.replaceAll(tilesetAssets.prefix, '');

  Map<TileBehaviourType, AnimationEntryModel>
      getPathsForPresetCharacterGraphics({
    required final PresetTileModel tile,
    required final TilesetConfigModel tilesetConfig,
  }) {
    final graphics = tile.graphics;
    if (graphics.type == TileGraphicsType.directional) return {};
    final map = <TileBehaviourType, AnimationEntryModel>{};
    final imageBasePath = '${tilesetConfig.cleanPath}/${tile.path}';

    for (final behaviour in graphics.behaviours) {
      final behaviourPath = '$imageBasePath${behaviour.name.snakeCase}';

      /// maybe folder (if animation) or file (if no animation)
      /// otherwise should throw an error
      final paths = _manifestMap.keys
          .where((final e) => e.contains(behaviourPath))
          .toList();

      if (paths.isEmpty) continue;

      /// folders case
      if (graphics.animated) {
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

  Map<SpriteCode, AnimationEntryModel> getPathsForPresetDirectionalGraphics({
    required final PresetTileModel tile,
    required final TilesetConfigModel tilesetConfig,
  }) {
    final graphics = tile.graphics;
    if (graphics.type == TileGraphicsType.character) return {};
    final map = <SpriteCode, AnimationEntryModel>{};
    final imageBasePath = '${tilesetConfig.cleanPath}/${tile.path}';

    final paths = _manifestMap.keys
        .where((final e) => e.startsWith(imageBasePath))
        .toList();
    if (paths.isEmpty) return map;
    if (graphics.animated) {
      // for (final fullPath in paths) {
      //   final [..., folderTitle, _] = fullPath.split('/');
      //   final folderPath = '$rootFolderPath/$folderTitle';
      //   final folderPaths = _manifestMap.keys
      //       .where((final e) => e.contains(folderPath))
      //       .toList();
      //   if (folderPaths.isEmpty) continue;
      //   map.update(
      //     folderTitle,
      //     (final value) => value.copyWith(
      //       framesLength: folderPaths.length,
      //       framesPaths: folderPaths,
      //     ),
      //     ifAbsent: () => AnimationEntryModel(
      //       framesLength: folderPaths.length,
      //       framesPaths: folderPaths,
      //     ),
      //   );
      // }
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
    with
        HasGameRef<EditorRendererGame>,
        HasEditorRef,
        HasEditorResourcesLoaderRef {
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

  static Map<TileId, PresetTileResource> _updateTiles({
    required final double dt,
    required final Map<TileId, PresetTileResource> orignalTiles,
    required final GameRendererConfig config,
  }) {
    final Map<TileId, PresetTileResource> tiles = {...orignalTiles};
    for (final MapEntry(key: cellPoint, value: cellTile) in tiles.entries) {
      final graphics = cellTile.tile.graphics;
      final isAnimated = graphics.animated;

      switch (graphics.type) {
        case TileGraphicsType.character when isAnimated:
        case TileGraphicsType.character:
          throw ArgumentError.value(
            'tiles should not have character animation',
          );
        case TileGraphicsType.directional when isAnimated:
          for (final MapEntry(key: path, value: animationEntry)
              in cellTile.directionalPaths.entries) {
            final tile = tiles[cellPoint]!;
            tiles[cellPoint] = tile.copyWith(
              directionalPaths: {
                ...tile.directionalPaths,
                path: updateAnimationFrame(
                  config: config,
                  dt: dt,
                  entry: animationEntry,
                ),
              },
            );
          }

        case TileGraphicsType.directional:

          /// skipping update as non animated tiles should not be updated
          break;
      }
    }
    return tiles;
  }

  static Map<TileId, PresetTileResource> _updateObjects({
    required final double dt,
    required final Map<TileId, PresetTileResource> originalObjects,
    required final GameRendererConfig config,
  }) {
    final Map<TileId, PresetTileResource> objects = {...originalObjects};
    for (final MapEntry(key: cellPoint, value: cellTile) in objects.entries) {
      final graphics = cellTile.tile.graphics;
      final isAnimated = graphics.animated;

      switch (graphics.type) {
        case TileGraphicsType.character when isAnimated:
          for (final behaviour in graphics.behaviours) {
            final animationEntry = cellTile.behaviourPaths[behaviour];
            if (animationEntry == null) continue;

            final tile = objects[cellPoint]!;
            objects[cellPoint] = tile.copyWith(
              behaviourPaths: {
                ...tile.behaviourPaths,
                behaviour: updateAnimationFrame(
                  config: config,
                  dt: dt,
                  entry: animationEntry,
                ),
              },
            );
          }
        case TileGraphicsType.character:

          /// skipping update as non animated tiles should not be updated
          break;
        case TileGraphicsType.directional when isAnimated:
        case TileGraphicsType.directional:
          throw ArgumentError.value(
            'objects should not have directonal animation',
          );
      }
    }
    return objects;
  }

  @override
  void update(final double dt) {
    final tiles = _updateTiles(
      dt: dt,
      orignalTiles: drawerCubit.tilesPresetResources.tiles,
      config: game.config,
    );
    drawerCubit.tilesPresetResources =
        drawerCubit.tilesPresetResources.copyWith(
      tiles: tiles,
    );
    final objects = _updateObjects(
      dt: dt,
      config: game.config,
      originalObjects: drawerCubit.tilesPresetResources.objects,
    );
    drawerCubit.tilesPresetResources =
        drawerCubit.tilesPresetResources.copyWith(
      objects: objects,
    );
    final npcs = _updateObjects(
      dt: dt,
      config: game.config,
      originalObjects: drawerCubit.tilesPresetResources.npcs,
    );
    drawerCubit.tilesPresetResources =
        drawerCubit.tilesPresetResources.copyWith(
      npcs: npcs,
    );
    final players = _updateObjects(
      dt: dt,
      config: game.config,
      originalObjects: drawerCubit.tilesPresetResources.players,
    );
    drawerCubit.tilesPresetResources =
        drawerCubit.tilesPresetResources.copyWith(
      players: players,
    );
    final other = _updateObjects(
      dt: dt,
      config: game.config,
      originalObjects: drawerCubit.tilesPresetResources.other,
    );
    drawerCubit.tilesPresetResources =
        drawerCubit.tilesPresetResources.copyWith(
      other: other,
    );

    super.update(dt);
  }
}
