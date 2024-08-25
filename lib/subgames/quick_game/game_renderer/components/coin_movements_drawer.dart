import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'package:word_by_word_game/common_imports.dart';

class CoinCollectingAnimation extends PositionComponent {
  CoinCollectingAnimation() {
    _loadSprites();
  }

  late final List<SpriteComponent> _coins;

  Future<void> _loadSprites() async {
    final sprite = await Flame.images.load('coin.png');
    final spriteSheet = SpriteSheet(image: sprite, srcSize: Vector2.all(32));
    _coins = List.generate(30, (final index) {
      final coin = SpriteComponent(
        sprite: spriteSheet.getSprite(0, 0),
        position: Vector2(Flame.util.random().nextDouble() * 800, 600),
      );
      add(coin);
      return coin;
    });
    unawaited(_startAnimation());
  }

  Future<void> _startAnimation() async {
    for (final coin in _coins) {
      final effect = MoveEffect.to(
        Vector2(400, 300),
        EffectController(duration: 1, curve: Curves.easeInOut),
      );
      coin.add(effect);
    }
  }
}
