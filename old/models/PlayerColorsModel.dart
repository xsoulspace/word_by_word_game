import 'dart:math';

import 'package:flutter/material.dart';
import 'package:word_by_word_game/abstract/PlayerColor.dart';

List<PlayerColor> playerColors = [
  PlayerColor(id: 1, colorPrimary: Colors.purple[800].value),
  PlayerColor(id: 2, colorPrimary: Colors.green.value),
  PlayerColor(id: 3, colorPrimary: Colors.amber[800].value),
  PlayerColor(id: 4, colorPrimary: Colors.blue.value),
  PlayerColor(id: 5, colorPrimary: Colors.cyan.value),
];
final _random = new Random();

class PlayerColorsModel extends ChangeNotifier {
  final Map<int, PlayerColor> _colorsMap = {};
  PlayerColorsModel() {
    playerColors.forEach((playerColor) => addColor(playerColor: playerColor));
  }
  List<PlayerColor> get colorsList => _colorsMap.values.toList();
  addColor({PlayerColor playerColor}) {
    _colorsMap.putIfAbsent(playerColor.id, () => playerColor);
    notifyListeners();
  }

  PlayerColor getRandomColor() =>
      colorsList[next(max: _colorsMap.length - 1, min: 0)];

  int next({required int min, required int max}) =>
      min + _random.nextInt(max - min);
}
