import 'package:wbw_core/wbw_core.dart';

const int kIncreaseScoreModifier = 65;
const int kDecreaseScoreModifier = kIncreaseScoreModifier * 3;
int get kLetterDecreaseCost => 1 * kDecreaseScoreModifier;

class ScoreMechanics {
  ScoreModel getScoreFromWord({
    required final String word,
    final int scoreModifier = kIncreaseScoreModifier,
  }) {
    return ScoreModel(
      value: (word.length * scoreModifier).toDouble(),
    );
  }

  ScoreModel getDecreaseScore({
    required final int lettersCount,
    final int scoreModifier = kDecreaseScoreModifier,
  }) {
    return ScoreModel(value: lettersCount * scoreModifier * -1);
  }

  bool checkPlayerAbilityToDecrease({
    required final PlayerProfileModel player,
  }) {
    return player.highscore.score.value >= kLetterDecreaseCost;
  }

  /// Use this method to inscrease score
  /// when the new word is added to the stack
  ///
  /// Use this method to descrease score
  /// when the player is removing letters
  /// from the middle part of the word
  PlayerProfileModel countPlayerHighscore({
    required final PlayerProfileModel player,
    required final ScoreModel score,
    final String? word,
  }) {
    final highscore = player.highscore;

    int maxLettersCount = highscore.maxLettersCount;
    int maxWordsCount = highscore.maxWordsCount;
    if (word != null) {
      maxLettersCount += word.length;
      maxWordsCount++;
    }
    return player.copyWith(
      highscore: highscore.copyWith(
        maxLettersCount: maxLettersCount,
        maxWordsCount: maxWordsCount,
        score: highscore.score.copyWith(
          value: highscore.score.value + score.value,
        ),
      ),
    );
  }

  /// This method should be called when the player is ended the level.
  ///
  /// In case if the player is not finished the level and landed
  /// somewhere then [isLevelFinished] = false. Otherwise
  /// [isLevelFinished] = true
  PlayerProfileModel countPlayerLevelHighscore({
    required final PlayerProfileModel player,
    required final LevelModelId levelId,
    required final bool isLevelFinished,
    required final double maxDistance,
  }) {
    final levelsHighscores = {...player.levelsHighscores};

    PlayerLevelHighscoreModel levelHighscore = levelsHighscores[levelId] ??
        PlayerLevelHighscoreModel(levelId: levelId);
    levelHighscore = levelHighscore.copyWith(
      // TODO(arenukvern): add a way to count flight time
      // flightTime: ,
      landingsCount: isLevelFinished
          ? levelHighscore.landingsCount + 1
          : levelHighscore.landingsCount,
      maxDistance: maxDistance,
    );

    levelsHighscores[levelId] = levelHighscore;

    return player.copyWith(
      levelsHighscores: levelsHighscores,
    );
  }
}
