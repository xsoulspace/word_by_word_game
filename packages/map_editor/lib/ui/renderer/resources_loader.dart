import 'dart:async';
import 'dart:convert';

import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:map_editor/generated/assets.gen.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/ui/renderer/game_renderer.dart';

mixin HasResourcesLoaderRef on Component, HasGameRef<GameRenderer> {
  Map<String, AnimationEntryModel> get animations =>
      game.resourcesLoader.animations;

  /// Make sure you have cleared the path by [ResourcesLoader.fixAssetsPath]
  Image getImage(final String path) => game.images.fromCache(path);
}

class ResourcesLoader extends Component with HasGameRef<GameRenderer> {
  static String fixAssetsPath(final String path) =>
      path.replaceAll('assets/images/', '');
  static String _getAssetsFolderPath(final AssetGenImage assetGenImage) {
    final pathList = fixAssetsPath(assetGenImage.path).split('/')

      /// removing filename from path
      ..removeLast();
    return pathList.join('/');
  }

  String get terrainLandPath =>
      _getAssetsFolderPath(Assets.images.terrain.land.a);

  String get terrainWaterPath =>
      _getAssetsFolderPath(Assets.images.terrain.water.);

  String get cursorHandlePath =>
      fixAssetsPath(Assets.images.cursors.handle.path);

  @override
  FutureOr<void> onLoad() async {
    await Future.wait(
      [
        _loadWaterTiles(),
        _loadTerrainTiles(),
        _loadCloudTiles(),
        _loadCursorTiles(),
        _loadAnimations(),
      ],
    );

    return super.onLoad();
  }

  Images get _images => game.images;

  Future<void> _loadAssetsByPaths(final Iterable<String> values) async {
    await _images.loadAll(
      values.map(fixAssetsPath).toList(),
    );
  }

  Future<void> _loadAssets(final Iterable<AssetGenImage> assets) async {
    await _loadAssetsByPaths(assets.map((final e) => e.path));
  }

  /// Key - id
  final animations = <String, AnimationEntryModel>{};

  Future<void> _loadAnimations() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    /// List of all asset files like:
    /// 'assets/images/clouds/Small Cloud 1.png'
    ///
    /// Always starts with assets keyword.
    final Map<String, dynamic> manifestMap = jsonDecode(manifestContent);
    Future<void> loadTileGraphics(
      final MapEntry<String, TileDataModel> tileEntry,
    ) async {
      final graphicsPath = tileEntry.value.graphics;
      if (graphicsPath.isNotEmpty) {
        final graphicsPaths =
            manifestMap.keys.where((final e) => e.startsWith(graphicsPath));
        if (graphicsPaths.isNotEmpty) {
          animations[tileEntry.key] = AnimationEntryModel(
            framesLength: graphicsPaths.length,
            framesPaths: graphicsPaths.map(fixAssetsPath).toList(),
          );
          await _loadAssetsByPaths(graphicsPaths);
        }
      }
    }

    await Future.wait(
      game.diDto.drawerCubit.tilesData.entries.map(loadTileGraphics),
    );
  }

  Future<void> _loadTerrainTiles() async =>
      _loadAssets(Assets.images.terrain.land.values);

  Future<void> _loadWaterTiles() async =>
      _loadAssets(Assets.images.terrain.water.abcdefgh.values+ Assets.images.terrain.water.cdefg.values );

  Future<void> _loadCursorTiles() async =>
      _loadAssets(Assets.images.cursors.values);

  Future<void> _loadCloudTiles() async =>
      _loadAssets(Assets.images.clouds.values);

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
