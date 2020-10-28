import 'package:flutter/material.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';

List<PlayerColor> _playerColors = [
  PlayerColor(id: 1, materialColor: Colors.green),
  PlayerColor(id: 2, materialColor: Colors.yellow),
  PlayerColor(id: 3, materialColor: Colors.purple),
  PlayerColor(id: 4, materialColor: Colors.blue),
  PlayerColor(id: 5, materialColor: Colors.blueGrey),
];

class PlayerColorsModel extends ChangeNotifier {
  final Map<int, PlayerColor> _colorsMap = {};
  PlayerColorsModel() {
    _playerColors.forEach((playerColor) => addColor(playerColor: playerColor));
  }

  addColor({PlayerColor playerColor}) {
    _colorsMap.putIfAbsent(playerColor.id, () => playerColor);
    notifyListeners();
  }
}
