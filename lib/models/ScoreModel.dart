import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/entities/Word.dart';
import 'package:word_by_word_game/models/StorageMixin.dart';

class ScoreModelConsts {
  static String highscore = 'highscore';
}

class ScoreModel extends ChangeNotifier with StorageMixin {
  ///
  /// Highscore operations
  ///
  Future<int> get highscore async {
    await checkAndLoadStorageInstance();
    return int.parse(
        storage.getString(ScoreModelConsts.highscore, defValue: '0'));
  }

  Future<void> saveHighscore(int value) async {
    await checkAndLoadStorageInstance();
    await storage.putString(ScoreModelConsts.highscore, value.toString());
  }

  int calculateHighscore(
      {@required List<Word> words, @required Player player}) {
    int highscore = words.length > 0
        ? words
                .reduce((value, element) =>
                    Word(id: 0, value: '${value.value}${element.value}'))
                .value
                .length -
            (words.length * 3)
        : 0;
    if (player.penaltyScore != null && player.penaltyScore > 0) {
      highscore -= player.penaltyScore;
    }
    return highscore;
  }
}
