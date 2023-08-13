import 'package:flame/sprite.dart';
import 'package:flame_fire_atlas/flame_fire_atlas.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:recase/recase.dart';

class TilesetConstants {
  TilesetConstants({
    required this.tilesetPath,
  });
  final String tilesetPath;
  FireAtlas? _atlas;
  Future<void> onLoad() async {
    _atlas = await FireAtlas.loadAsset(tilesetPath);
  }

  Sprite getImage({
    required final SpriteCode spriteCode,
  }) {
    final SpriteTileName? tileName = _codeToName[spriteCode];
    return _atlas!.getSprite((tileName ?? SpriteTileName.x).name.paramCase);
  }

  static Map<SpriteCode, SpriteTileName> get _codeToName => () {
        final map = <SpriteCode, SpriteTileName>{};
        for (final MapEntry(:key, value: codes) in _nameCodes.entries) {
          for (final code in codes) {
            map[code] = key;
          }
        }
        return map;
      }();
  static Map<SpriteTileName, List<SpriteCode>> get _nameCodes => {
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
