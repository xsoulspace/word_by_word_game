import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';

part 'Player.g.dart';

@JsonSerializable(explicitToJson: true)
class Player {
  final int id;
  final PlayerColor playerColor;
  int highscore = 0;
  // Penalty is how many letters will be reduced from final highscore
  // Usually applies when user clicks Next Player button
  int penaltyScore = 0;
  Player(
      {@required this.id, @required this.playerColor, highscore, penaltyScore});

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerToJson(this);
}
