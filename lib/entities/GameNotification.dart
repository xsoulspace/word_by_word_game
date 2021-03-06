import 'package:flutter/foundation.dart';
import 'package:word_by_word_game/constants/GameNotificationStatuses.dart';
import 'package:word_by_word_game/entities/LocalName.dart';

class GameNotification {
  final GameNotificationStatuses status;
  final LocalName localName;
  final String newWord;
  GameNotification(
      {@required this.status, @required this.localName, this.newWord});
}
