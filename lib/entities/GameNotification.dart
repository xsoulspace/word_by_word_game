import 'package:flutter/foundation.dart';
import 'package:word_by_word_game/entities/LocalName.dart';

class GameNotification {
  final bool status;
  final LocalName localName;
  GameNotification({@required this.status, @required this.localName});
}
