import 'dart:math' as math;

import 'package:map_editor/state/models/models.dart';

import '../../wbw_core.dart';

const int kIncreaseScoreModifier = 65;
const int kDecreaseScoreModifier = kIncreaseScoreModifier * 3;
const double kRevealScoreModifier = 0.6;
double get kLetterDecreaseCost => 1.0 * kDecreaseScoreModifier;

class ScoreMechanics {
  double convertScoreToPower({required final ScoreModel score}) => score.value;

  ScoreModel getScoreFromWord({
    required final String word,
    final int scoreModifier = kIncreaseScoreModifier,
  }) =>
      ScoreModel(value: (word.length * scoreModifier).toDouble());

  ScoreModel getRevealScore({
    required final String word,
    final double scoreModifier = kRevealScoreModifier,
  }) {
    final score = getScoreFromWord(word: word);
    return ScoreModel(
      value: (score.value * kRevealScoreModifier).toInt().toDouble(),
    );
  }

  ScoreModel getScoreForStorageEnergyByModifier({
    required final EnergyMultiplierType multiplier,
    required final ScoreModel availableScore,
  }) {
    final int score;
    final scorePart = availableScore.value ~/ 3;
    switch (multiplier) {
      case EnergyMultiplierType.m1:
        score = scorePart;
      case EnergyMultiplierType.m2:
        score = scorePart * 2;
      case EnergyMultiplierType.m3:
        score = availableScore.value.toInt();
    }

    return ScoreModel(value: score.toDouble());
  }

  ScoreModel getDecreaseScore({
    required final int lettersCount,
    final int scoreModifier = kDecreaseScoreModifier,
  }) =>
      ScoreModel(value: lettersCount * scoreModifier * -1);

  bool checkPlayerAbilityToDecreaseLetters({
    required final PlayerProfileModel player,
  }) =>
      player.highscore.score.value >= kLetterDecreaseCost;

  bool checkPlayerAbilityToUseScore({
    required final PlayerProfileModel player,
    required final int score,
  }) =>
      player.highscore.score >= score;

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
    final finalHighscore = highscore.score + score.value;
    return player.copyWith(
      highscore: highscore.copyWith(
        maxLettersCount: maxLettersCount,
        maxWordsCount: maxWordsCount,
        score: finalHighscore,
        totalLettersCount: maxLettersCount,
        totalWordsCount: maxWordsCount,
      ),
    );
  }

  /// This method should be called when the player is ended the level.
  ///
  /// In case if the player is not finished the level and landed
  /// somewhere then [isLevelPassed] = false. Otherwise
  /// [isLevelPassed] = true
  PlayerProfileModel countPlayerLevelHighscore({
    required final PlayerProfileModel player,
    required final CanvasDataModelId levelId,
    required final bool isLevelPassed,
    required final double maxDistance,
  }) {
    final levelsHighscores = {...player.levelsHighscores};

    PlayerLevelHighscoreModel levelHighscore = levelsHighscores[levelId] ??
        PlayerLevelHighscoreModel(levelId: levelId);
    final newMaxDistance = math.max(
      maxDistance,
      levelHighscore.maxDistance,
    );
    levelHighscore = levelHighscore.copyWith(
      // TODO(arenukvern): add a way to count flight time
      // flightTime: ,
      landingsCount: isLevelPassed
          ? levelHighscore.landingsCount + 1
          : levelHighscore.landingsCount,
      maxDistance: newMaxDistance,
      totalDistance: levelHighscore.totalDistance + maxDistance,
    );

    levelsHighscores[levelId] = levelHighscore;

    return player.copyWith(
      levelsHighscores: levelsHighscores,
    );
  }

  /// level profile can have a score zero
  PlayerProfileModel mergePlayerProfiles({
    required final PlayerProfileModel globalProfile,
    required final PlayerProfileModel levelProfile,
  }) {
    final gScore = globalProfile.highscore;
    final lScore = levelProfile.highscore;
    final maxLettersCount = math.max(
      gScore.maxLettersCount,
      lScore.maxLettersCount,
    );
    final maxWordsCount = math.max(
      gScore.maxWordsCount,
      lScore.maxWordsCount,
    );

    return globalProfile.copyWith(
      highscore: gScore.copyWith(
        score: gScore.score.copyWith(
          value: gScore.score.value + lScore.score.value,
        ),
        maxLettersCount: maxLettersCount,
        maxWordsCount: maxWordsCount,
        totalLettersCount: gScore.totalLettersCount + lScore.totalLettersCount,
        totalWordsCount: gScore.totalWordsCount + lScore.totalWordsCount,
      ),
    );
  }
}
