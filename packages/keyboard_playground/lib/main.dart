import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:keyboard_playground/game.dart';

void main() {
  final game = KeyboardsGame();
  runApp(GameWidget(game: game));
}
