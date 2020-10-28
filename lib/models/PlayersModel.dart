import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';

class PlayersModel extends ChangeNotifier {
  ///
  /// Storage
  ///

  ///
  /// Players data
  ///
  final Map<int, Player> _playersByPlayerIdMap = {};
  int _playerIdMax = 0;
  Future<void> addPlayerByColor({PlayerColor playerColor}) async {
    _playerIdMax++;
    _playersByPlayerIdMap.putIfAbsent(
        _playerIdMax, () => Player(id: _playerIdMax, playerColor: playerColor));
  }

  Future<void> resetPlayers() async {
    _playersByPlayerIdMap.clear();
  }
}
