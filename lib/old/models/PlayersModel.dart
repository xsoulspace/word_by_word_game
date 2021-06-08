import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/abstract/FirstPlayer.dart';
import 'package:word_by_word_game/abstract/Player.dart';
import 'package:word_by_word_game/abstract/PlayerColor.dart';
import 'package:word_by_word_game/models/PlayerColorsModel.dart';

part 'PlayersModel.g.dart';

class PlayersModelConsts {
  static String storagename = 'playersmodel';
}

@JsonSerializable()
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

  void addPlayerByColor({required PlayerColor playerColor}) {
    _playersByPlayerIdMap.putIfAbsent(playerColor.id,
        () => Player(id: playerColor.id, playerColor: playerColor));
    notifyListeners();
  }

  void setCurrentPlayer({required Player player}) {
    currentPlayer = player;
    notifyListeners();
  }

  void nextPlayer() {
    var playerIndex =
        playersList.indexWhere((player) => player.id == currentPlayer.id);
    var newPlayerIndex = playerIndex + 1;
    var player = playerIndex == null || newPlayerIndex > playersList.length - 1
        ? firstPlayer
        : playersList[newPlayerIndex] ?? firstPlayer;
    setCurrentPlayer(player: player);
  }

  bool hasPLayer({required Player player}) =>
      _playersByPlayerIdMap.containsKey(player.id);

  void resetPlayers() {
    _playersByPlayerIdMap.clear();
    _playersByPlayerIdMap.putIfAbsent(firstPlayer.id, () => firstPlayer);
    notifyListeners();
  }

  void removePlayersAfterPlayer({required Player player}) {
    var players =
        playersList.where((modelPlayer) => modelPlayer.id > player.id);
    players.forEach((modelPlayer) {
      _playersByPlayerIdMap.remove(modelPlayer.id);
    });
    notifyListeners();
  }

  void reloadPlayers({required Map<int, Player> playersByPlayerIdMap}) {
    _playersByPlayerIdMap.clear();
    // FIXME: recolor players function
    // remove after all players will update to new version
    playersByPlayerIdMap.map((key, player) {
      var color = playerColors.where((color) => color.id == player.id).first;
      player.playerColor = color;
      return MapEntry(key, player);
    });
    _playersByPlayerIdMap.addAll(playersByPlayerIdMap);

    notifyListeners();
  }

  get isOnePlayerPlaying => _playersByPlayerIdMap.length == 1;
  get isNotOnePlayerPlaying => _playersByPlayerIdMap.length > 1;
  final _penaltyLimit = 3;
  void addPenaltyToCurrentPlayer() {
    currentPlayer.penaltyScore += _penaltyLimit;
    _playersByPlayerIdMap.update(currentPlayer.id, (value) => currentPlayer,
        ifAbsent: () => currentPlayer);
    notifyListeners();
  }

  get isPlayerHasHighscore =>
      currentPlayer.highscore != null &&
      currentPlayer.highscore >= _penaltyLimit;

  ///
  /// JSON serialization
  ///
  PlayersModel(Map<int, Player> playersByPlayerIdMap,
      {required this.currentPlayer, this.tempPlayers}) {
    this._playersByPlayerIdMap = playersByPlayerIdMap;
  }

  factory PlayersModel.fromJson(Map<String, dynamic> json) =>
      _$PlayersModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlayersModelToJson(this);
}
