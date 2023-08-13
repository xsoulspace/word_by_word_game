import 'package:flame/cache.dart';
import 'package:flame/extensions.dart';
import 'package:flame/sprite.dart';
import 'package:flame_fire_atlas/flame_fire_atlas.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:path/path.dart' as path;
import 'package:recase/recase.dart';

enum TilesetConstantsSource { image, tileset }

class TilesetConstants {
  TilesetConstants({
    required this.tilesetPath,
    required this.assets,
    required this.source,
  });
  final TilesetConstantsSource source;
  final String tilesetPath;
  final AssetsCache assets;
  FireAtlas? _atlas;
  Image? atlasImage;
  Future<void> onLoad({
    required final Images images,
  }) async {
    switch (source) {
      case TilesetConstantsSource.tileset:
        _atlas = await FireAtlas.loadAsset(tilesetPath, assets: assets);
      case TilesetConstantsSource.image:
        final tilesetImagePath = '${path.withoutExtension(tilesetPath)}.png';
        atlasImage = await images.load(tilesetImagePath);
    }
  }

  Sprite getSprite({
    required final SpriteCode spriteCode,
  }) {
    final SpriteTileName? tileName = _codeToName[spriteCode];
    return _atlas!.getSprite((tileName ?? SpriteTileName.x).name.paramCase);
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
