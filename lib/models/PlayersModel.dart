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
  Future<void> addPlayerByColor({PlayerColor playerColor}) async {
    playerIdMax++;
    playersByPlayerIdMap.putIfAbsent(
        playerIdMax, () => Player(id: playerIdMax, playerColor: playerColor));
  }

  Future<void> resetPlayers() async {
    playersByPlayerIdMap.clear();
  }

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
