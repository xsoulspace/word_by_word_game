import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/entities/FirstPlayer.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';

part 'PlayersModel.g.dart';

class PlayersModelConsts {
  static String storagename = 'playersmodel';
}

@JsonSerializable()
class PlayersModel extends ChangeNotifier {
  ///
  /// Players data
  ///
  Map<int, Player> playersByPlayerIdMap = {};
  int playerIdMax = 1;
  List<Player> get playersList => playersByPlayerIdMap.values.toList();
  Player currentPlayer = firstPlayer;
  void addPlayerByColor({@required PlayerColor playerColor}) {
    playerIdMax++;
    playersByPlayerIdMap.putIfAbsent(
        playerIdMax, () => Player(id: playerIdMax, playerColor: playerColor));
  }

  setCurrentPlayer({@required Player player}) {
    currentPlayer = player;
    notifyListeners();
  }

  nextPlayer() {
    var playerIndex =
        playersList.indexWhere((player) => player.id == currentPlayer.id);
    var player = playerIndex == null
        ? firstPlayer
        : playersList[playerIndex] ?? firstPlayer;
    setCurrentPlayer(player: player);
  }

  void resetPlayers() {
    playersByPlayerIdMap.clear();
    playersByPlayerIdMap.putIfAbsent(firstPlayer.id, () => firstPlayer);
    notifyListeners();
  }

  get isOnePlayerPlaying => playersByPlayerIdMap.length == 1;
  get isNotOnePlayerPlaying => playersByPlayerIdMap.length > 1;

  ///
  /// JSON serialization
  ///
  PlayersModel(
      {this.playerIdMax,
      @required this.playersByPlayerIdMap,
      @required this.currentPlayer});

  factory PlayersModel.fromJson(Map<String, dynamic> json) =>
      _$PlayersModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlayersModelToJson(this);
}
