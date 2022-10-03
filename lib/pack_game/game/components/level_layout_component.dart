import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';

class LevelLayoutComponent extends PositionComponent {
  LevelLayoutComponent({
    required this.tileMapName,
    required this.onLoadBuilder,
    required this.tileDimension,
  }) : super();
  final String tileMapName;
  final int tileDimension;
  final Future<void> Function(TiledComponent map) onLoadBuilder;
  late TiledComponent map;
  @override
  Future<void> onLoad() async {
    map = await TiledComponent.load(
      '$tileMapName.tmx',
      Vector2.all(tileDimension.toDouble()),
    );

    await onLoadBuilder(map);

    await add(map);

    await super.onLoad();
  }
}
