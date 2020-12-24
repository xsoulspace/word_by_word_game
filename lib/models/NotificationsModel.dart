import 'package:flutter/foundation.dart';
import 'package:word_by_word_game/entities/GameNotification.dart';

class NotificationsModel extends ChangeNotifier {
  GameNotification _gameNotification;
  GameNotification get gameNotification => _gameNotification;
  set gameNotification(GameNotification value) {
    _gameNotification = value;
    notifyListeners();
  }
}
