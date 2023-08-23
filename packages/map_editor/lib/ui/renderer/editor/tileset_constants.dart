import 'dart:ui' as ui;

import 'package:flame/cache.dart';
import 'package:flame/extensions.dart';
import 'package:flame/sprite.dart';
import 'package:flame_fire_atlas/flame_fire_atlas.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:recase/recase.dart';
import 'package:wbw_core/wbw_core.dart';

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
  Image? atlasImage;
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
    if (DeviceRuntimeType.isMobileWeb) {
      await preloadImages();
    }
  }

  Future<void> preloadImages() async {
    if (DeviceRuntimeType.isMobileWeb) {
      final imagesPath = tilesetConfig.folderPath;
      for (final tileName in SpriteTileName.values) {
        final imagePath = '$imagesPath/${tileName.name.snakeCase}.png';
        await images!.load(imagePath, key: tileName.name);
      }
    } else {
      for (final tileName in SpriteTileName.values) {
        await cacheSpriteImageByTileName(tileName: tileName);
      }
    }
  }

  Image getSpriteImage({
    required final SpriteCode spriteCode,
  }) {
    final tileName = _codeToName[spriteCode] ?? SpriteTileName.x;
    return images!.fromCache(tileName.name);
  }

  Future<void> cacheSpriteImageByTileName({
    required final SpriteTileName tileName,
  }) async {
    final image = await _atlas!.getSprite(tileName.name.paramCase).toImage();
    final converted = await ImageFileGenerator.generateFromImages(image);
    images!.add(tileName.name, converted ?? image);
  }

  Sprite getSprite({
    required final SpriteCode spriteCode,
  }) {
    final SpriteTileName? tileName = _codeToName[spriteCode];
    final spriteName = (tileName ?? SpriteTileName.x).name.paramCase;
    return _atlas!.getSprite(spriteName);
  }

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
