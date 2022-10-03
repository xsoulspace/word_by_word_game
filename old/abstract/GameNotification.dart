import 'package:word_by_word_game/abstract/LocalName.dart';
import 'package:word_by_word_game/constants/game_notification_statuses.dart';

class GameNotification {
  final GameNotificationStatuses status;
  final LocalName localName;
  final String? newWord;
  GameNotification(
      {required this.status, required this.localName, this.newWord});
}
