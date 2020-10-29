import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';
import 'package:word_by_word_game/models/StorageMixin.dart';

part 'PlayersModel.g.dart';

@JsonSerializable()
class PlayersModel extends ChangeNotifier with StorageMixin {
  ///
  /// Players data
  ///
  final Map<int, Player> playersByPlayerIdMap;
  int playerIdMax = 0;
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
  PlayersModel(this.playerIdMax, this.playersByPlayerIdMap) {
    checkAndLoadStorageInstance();
  }
  factory PlayersModel.fromJson(Map<String, dynamic> json) =>
      _$PlayersModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlayersModelToJson(this);
}
