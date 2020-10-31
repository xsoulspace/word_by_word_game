import 'package:flutter/material.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';

List<PlayerColor> playerColors = [
  PlayerColor(id: 1, colorPrimary: Colors.green.value),
  PlayerColor(id: 2, colorPrimary: Colors.yellow.value),
  PlayerColor(id: 3, colorPrimary: Colors.purple.value),
  PlayerColor(id: 4, colorPrimary: Colors.blue.value),
  PlayerColor(id: 5, colorPrimary: Colors.blueGrey.value),
];

class PlayerColorsModel extends ChangeNotifier {
  final Map<int, PlayerColor> _colorsMap = {};
  PlayerColorsModel() {
    playerColors.forEach((playerColor) => addColor(playerColor: playerColor));
  }

  addColor({PlayerColor playerColor}) {
    _colorsMap.putIfAbsent(playerColor.id, () => playerColor);
    notifyListeners();
  }
}
