import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_playground/components/mobile_keyboard.dart';

class KeyboardsGame extends FlameGame {
  static const double cardGap = 175;
  static const double cardWidth = 20;
  static const double cardHeight = 40;
  static const double cardRadius = 100;
  static final Vector2 cardSize = Vector2(cardWidth, cardHeight);
  static final cardRRect = RRect.fromRectAndRadius(
    const Rect.fromLTWH(0, 0, cardWidth, cardHeight),
    const Radius.circular(cardRadius),
  );
  late final area = LettersAreaComponent(
    position: Vector2(
      size.x / 3 * 2,
      30,
    ),
  );
  @override
  Future<void> onLoad() async {
    debugMode = true;
    final world = World()..add(area);

    add(world);
    final camera = CameraComponent(world: world)
      ..viewfinder.anchor = Anchor.topLeft;
    add(camera);

    super.onLoad();
  }
}
