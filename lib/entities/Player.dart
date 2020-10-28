import 'package:flutter/foundation.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';

class Player {
  final int id;
  final PlayerColor playerColor;
  Player({@required this.id, @required this.playerColor});
}
