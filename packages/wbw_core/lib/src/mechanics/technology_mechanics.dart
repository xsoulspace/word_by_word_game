import 'dart:collection';

import '../../wbw_core.dart';

class TechnologyMechanics {
  TechnologyMechanics({
    required this.scoreMechanics,
  });
  final ScoreMechanics scoreMechanics;

  bool checkIsUnlockedForAllLanguages({
    required final TechnologyModel technology,
  }) {
    final unlockCondition = technology.unlockCondition;
    for (final language in Languages.values) {
      final isAllWordsUsed = unlockCondition.languageWords[language]?.every(
        (final word) => word.isUsed,
      );
      if (isAllWordsUsed == true) return true;
    }
    return false;
  }

  bool getIsUnlockedForCurrentLanguage({
    required final TechnologyModel technology,
    final Languages? language,
  }) {
    final unlockCondition = technology.unlockCondition;
    final lang = language ?? LocalizedMap.getCurrentLanugage();
    final isAllWordsUsed = unlockCondition.languageWords[lang]?.every(
      (final word) => word.isUsed,
    );
    if (isAllWordsUsed == true) return true;

    return false;
  }

  ({double min, double max, bool isUnlocked, DoubleLinkedQueue summaryScore})
      getResearchPointsToUnlock({
    required final TechnologyModel technology,
  }) {
    final unlockCondition = technology.unlockCondition;
    const double summaryScore = 0;
    double min = 0;
    double max = 0;
    double maxInvestedScore = 0;
    for (final MapEntry(key: lang, value: words)
        in unlockCondition.languageWords.entries) {
      double requiredScore = 0;
      double investedScore = 0;
      for (final word in words) {
        final wordScore = scoreMechanics.getScoreFromWord(
          word: word.word,
        );
        requiredScore += wordScore.value;
        if (word.isUsed) investedScore += wordScore.value;
      }
      if (requiredScore > max) max = requiredScore;
      if (requiredScore < min) min = requiredScore;
      if (investedScore > maxInvestedScore) maxInvestedScore = investedScore;
    }
    final isUnlocked = maxInvestedScore >= min;
    return (
      min: min,
      max: max,
      isUnlocked: isUnlocked,
      summaryScore: summaryScore,
    );
  }
}
