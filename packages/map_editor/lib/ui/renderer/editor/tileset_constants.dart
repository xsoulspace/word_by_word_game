import 'package:flame/cache.dart';
import 'package:flame/extensions.dart';
import 'package:flame/sprite.dart';
import 'package:flame_fire_atlas/flame_fire_atlas.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:path/path.dart' as path;
import 'package:recase/recase.dart';
import 'package:wbw_core/wbw_core.dart';

enum TilesetConstantsSource { image, tileset }

class TilesetConstants {
  TilesetConstants({
    required this.tilesetPath,
    required this.assets,
  });
  final String tilesetPath;
  final AssetsCache assets;
  FireAtlas? _atlas;
  Image? atlasImage;
  Images? images;
  Future<void> onLoad({
    required final Images images,
  }) async {
    this.images = images;
    try {
      _atlas = await FireAtlas.loadAsset(tilesetPath, assets: assets);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      /// if gzip loading failed, try decoded atlas
      final tilesetImagePath = '${path.withoutExtension(tilesetPath)}.json';
      _atlas = await FireAtlas.loadAsset(
        tilesetImagePath,
        assets: assets,
        encoded: false,
      );
    }
    if (DeviceRuntimeType.isMobile) {
      await _preloadImages();
    }
  }

  Future<void> _preloadImages() async {
    for (final tileName in SpriteTileName.values) {
      await getSpriteImageByTileName(tileName: tileName);
    }
  }

  Image getSpriteImage({
    required final SpriteCode spriteCode,
  }) {
    final tileName = _codeToName[spriteCode] ?? SpriteTileName.x;
    return images!.fromCache(tileName.name);
  }

  Future<Image> getSpriteImageByTileName({
    required final SpriteTileName tileName,
  }) async {
    if (images!.containsKey(tileName.name)) {
      return images!.fromCache(tileName.name);
    } else {
      final image = await _atlas!.getSprite(tileName.name.paramCase).toImage();
      images!.add(tileName.name, image);
      return image;
    }
  }

  Sprite getSprite({
    required final SpriteCode spriteCode,
  }) {
    final SpriteTileName? tileName = _codeToName[spriteCode];
    final spriteName = (tileName ?? SpriteTileName.x).name.paramCase;
    return _atlas!.getSprite(spriteName);
  }

  static final Map<SpriteCode, SpriteTileName> _codeToName = () {
    final map = <SpriteCode, SpriteTileName>{};
    for (final MapEntry(:key, value: codes) in _nameCodes.entries) {
      for (final code in codes) {
        map[code] = key;
      }
    }
    return map;
  }();
  static const Map<SpriteTileName, List<SpriteCode>> _nameCodes = {
    SpriteTileName.topLeft: ['BCDEF', 'CDEF', 'CDE', 'BCDE'],
    SpriteTileName.topCenter: ['CDEFG', 'CEG', 'BCDEFG', 'CDEFGH'],
    SpriteTileName.topRight: ['DEFGH', 'DEFG', 'EFG', 'EFGH'],
    SpriteTileName.middleLeft: ['ABCDE', 'ACE'],
    SpriteTileName.middleRight: ['AEFGH', 'AEG'],
    SpriteTileName.x: ['ABCDEFGH', 'ACEG'],
    SpriteTileName.bottomLeft: ['ABCDH', 'ABC', 'ABCH', 'ABCD'],
    SpriteTileName.bottomCenter: ['ABCGH', 'ACG'],
    SpriteTileName.bottomRight: ['ABFGH', 'AFGH', 'ABGH', 'AGH'],
  };
}

enum SpriteTileName {
  topLeft,
  topCenter,
  topRight,
  middleLeft,
  middleRight,
  x,
  bottomLeft,
  bottomCenter,
  bottomRight,
}
