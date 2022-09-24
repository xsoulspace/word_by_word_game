import 'package:wbw_core/wbw_core.dart';

class ScoreMechanics {
  ScoreModel getScoreFromWord({
    required final String word,
  }) {
    return ScoreModel(value: (word.length * 65).toDouble());
  }
}
