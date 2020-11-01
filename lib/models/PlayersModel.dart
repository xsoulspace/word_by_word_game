import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/entities/FirstPlayer.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';

part 'PlayersModel.g.dart';

class PlayersModelConsts {
  static String storagename = 'playersmodel';
}

@JsonSerializable(nullable: true)
class PlayersModel extends ChangeNotifier {
  ///
  /// Players data
  ///
  Map<int, Player> _playersByPlayerIdMap = {};
  UnmodifiableMapView<int, Player> get playersByPlayerIdMap =>
      UnmodifiableMapView(_playersByPlayerIdMap);

  /// Temp players doesn't need to be changed at all,
  /// at least until new color generated
  List<Player> tempPlayers = [];

  List<Player> get playersList => _playersByPlayerIdMap.values.toList();

  Player currentPlayer = firstPlayer;

  void addPlayerByColor({@required PlayerColor playerColor}) {
    _playersByPlayerIdMap.putIfAbsent(playerColor.id,
        () => Player(id: playerColor.id, playerColor: playerColor));
    notifyListeners();
  }

  setCurrentPlayer({@required Player player}) {
    currentPlayer = player;
    notifyListeners();
  }

  nextPlayer() {
    var playerIndex =
        playersList.indexWhere((player) => player.id == currentPlayer.id);
    var newPlayerIndex = playerIndex + 1;
    var player = playerIndex == null || newPlayerIndex > playersList.length - 1
        ? firstPlayer
        : playersList[newPlayerIndex] ?? firstPlayer;
    setCurrentPlayer(player: player);
  }

  bool hasPLayer({@required Player player}) =>
      _playersByPlayerIdMap.containsKey(player.id);

  void resetPlayers() {
    _playersByPlayerIdMap.clear();
    _playersByPlayerIdMap.putIfAbsent(firstPlayer.id, () => firstPlayer);
    notifyListeners();
  }

  void removePlayersAfterPlayer({@required Player player}) {
    var players =
        playersList.where((modelPlayer) => modelPlayer.id > player.id);
    players.forEach((modelPlayer) {
      _playersByPlayerIdMap.remove(modelPlayer.id);
    });
    notifyListeners();
  }

  void reloadPlayers({@required Map<int, Player> playersByPlayerIdMap}) {
    _playersByPlayerIdMap.clear();
    _playersByPlayerIdMap.addAll(playersByPlayerIdMap);
    notifyListeners();
  }

  get isOnePlayerPlaying => _playersByPlayerIdMap.length == 1;
  get isNotOnePlayerPlaying => _playersByPlayerIdMap.length > 1;

  ///
  /// JSON serialization
  ///
  PlayersModel(Map<int, Player> playersByPlayerIdMap,
      {@required this.currentPlayer, this.tempPlayers}) {
    this._playersByPlayerIdMap = playersByPlayerIdMap;
  }

  factory PlayersModel.fromJson(Map<String, dynamic> json) =>
      _$PlayersModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlayersModelToJson(this);
}
