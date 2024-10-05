import 'dart:ui' as ui;

import 'package:flame/cache.dart';
import 'package:flame/extensions.dart';
import 'package:flame/sprite.dart';
import 'package:flame_fire_atlas/flame_fire_atlas.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:recase/recase.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

enum TilesetConstantsSource { image, tileset }

class TilesetConstants {
  TilesetConstants({
    required this.tilesetConfig,
    required this.presetData,
    required this.assets,
  });
  final TilesetConfigModel tilesetConfig;
  final TilesetPresetResources presetData;
  Map<SpriteTileName, List<SpriteCode>> get autotileRules =>
      presetData.autotileRules;
  final AssetsCache assets;
  FireAtlas? _atlas;
  Images? images;
  Future<void> onLoad({
    required final Images images,
  }) async {
    this.images = images;
    try {
      _atlas = await FireAtlas.loadAsset(
        tilesetConfig.encodedAtlasPath,
        assets: assets,
      );
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      /// if gzip loading failed, try decoded atlas
      _atlas = await FireAtlas.loadAsset(
        tilesetConfig.decodedAtlasPath,
        assets: assets,
        encoded: false,
      );
    }
    if (DeviceRuntimeType.isWeb) {
      await preloadImages();
    }
  }

  Future<void> preloadImages() async {
    if (DeviceRuntimeType.isWeb) {
      await cacheFileSpriteImages();
    } else {
      await cacheAtlasSpriteImages();
    }
  }

  Image getCachedSpriteImage({
    required final PresetTileModel tile,
    required final SpriteCode spriteCode,
  }) {
    final spriteName = _codeToName[spriteCode] ?? SpriteTileName.x;
    return images!.fromCache('${tile.path}${spriteName.name.snakeCase}');
  }

  Future<void> cacheFileSpriteImages() async {
    final tiles = [
      ...presetData.tiles.values,
      ...presetData.npcs.values,
      ...presetData.objects.values,
      // ...presetData.players.values,
    ];
    for (final tile in tiles) {
      for (final MapEntry(key: tileName, value: animationEntry)
          in tile.directionalPaths.entries) {
        await images!.load(animationEntry.currentFramePath, key: tileName);
      }
      for (final MapEntry(value: animationEntry)
          in tile.behaviourPaths.entries) {
        await images!.load(
          animationEntry.currentFramePath,
          key: animationEntry.currentFramePath,
        );
      }
    }
  }

  Future<void> cacheAtlasSpriteImages() async {
    // TODO(arenukvern): move to run in isolate
    for (final MapEntry(:key) in _atlas!.selections.entries) {
      final image = await _atlas!.getSprite(key).toImage();
      final converted = await ImageFileGenerator.generateFromImages(image);
      images!.add(key, converted ?? image);
    }
  }

  ({Sprite sprite, String path}) getAtlasSpriteByCode({
    required final PresetTileModel tile,
    required final SpriteCode spriteCode,
  }) =>
      getAtlasSpriteByName(
        tile: tile,
        tileName: getSpriteTileName(spriteCode: spriteCode),
      );

  Sprite getAtlasSpriteByPath(final String path) => _atlas!.getSprite(path);
  ({Sprite sprite, String path}) getAtlasSpriteByName({
    required final PresetTileModel tile,
    required final SpriteTileName tileName,
  }) {
    final path = getSpriteTilePath(tile: tile, tileName: tileName);
    final sprite = getAtlasSpriteByPath(path);
    return (sprite: sprite, path: path);
  }

  String getSpriteTilePath({
    required final PresetTileModel tile,
    required final SpriteTileName tileName,
  }) =>
      '${tile.path}${tileName.name.snakeCase}';
  SpriteTileName getSpriteTileName({required final SpriteCode spriteCode}) =>
      _codeToName[spriteCode] ?? SpriteTileName.x;
  void resetCache() => _codeToNameCache = null;
  Map<SpriteCode, SpriteTileName>? _codeToNameCache;
  Map<SpriteCode, SpriteTileName> get _codeToName =>
      _codeToNameCache ??= _calculateCodeToName();
  Map<SpriteCode, SpriteTileName> _calculateCodeToName() {
    final map = <SpriteCode, SpriteTileName>{};
    for (final MapEntry(:key, value: codes) in autotileRules.entries) {
      for (final code in codes) {
        map[code] = key;
      }
    }
    return map;
  }
}

class ImageFileGenerator {
  ImageFileGenerator._();
  static Future<Image?> generateFromImages(
    final Image rawImage,
  ) async {
    final pictureRecorder = ui.PictureRecorder();
    final canvas = ui.Canvas(pictureRecorder);
    Offset offset = Offset.zero;
    int maxWidth = 0;
    final paint = ui.Paint();
    final resizedImage = await rawImage.resize(rawImage.size + Vector2(1, 1));
    final byteData = await resizedImage.toByteData(
      format: ui.ImageByteFormat.png,
    );
    if (byteData == null) return null;
    final unit8List = byteData.buffer.asUint8List();
    final codec = await ui.instantiateImageCodec(unit8List);
    final frameInfo = await codec.getNextFrame();
    final image = frameInfo.image;

    canvas.drawImage(image, offset, paint);
    offset = Offset(0, offset.dy + image.height);
    if (maxWidth < image.width) {
      maxWidth = image.width;
    }

    final canvasPicture = pictureRecorder.endRecording();
    return canvasPicture.toImage(maxWidth, offset.dy.toInt());
  }
}
