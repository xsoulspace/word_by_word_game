import 'package:flutter/widgets.dart';
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

  int calculateHighscore(List<Word> words) => words.length > 1
      ? words
          .reduce((value, element) =>
              Word(id: 0, value: '${value.value}${element.value}'))
          .value
          .length
      : 0;
}
