import '../../wbw_core.dart';

typedef TechUnlockStatusTuple = ({
  bool isUnlocked,
  double percentage,
  double requiredScore,
  double investedScore,
});

class TechnologyMechanics {
  TechnologyMechanics({
    required this.scoreMechanics,
  });
  final ScoreMechanics scoreMechanics;

  /// returns if even one language is unlocked
  bool checkIsUnlockedInSomeLanguages({
    required final TechnologyUnlockConditionModel unlockCondition,
  }) {
    for (final language in Languages.values) {
      final result = checkIsUnlockedForLanguage(
        unlockCondition: unlockCondition,
        language: language,
      );
      if (result.isUnlocked) return true;
    }
    return false;
  }

  TechUnlockStatusTuple checkIsUnlockedForLanguage({
    required final TechnologyUnlockConditionModel? unlockCondition,
    final Languages? language,
  }) {
    final lang = language ?? LocalizedMap.getCurrentLanugage();
    final words = unlockCondition?.languageWords[lang];
    // TODO(arenukvern): maybe check other languages
    if (words == null || unlockCondition == null) {
      return (
        isUnlocked: false,
        percentage: 0,
        investedScore: 0,
        requiredScore: 0
      );
    }
    final (:investedScore, :requiredScore) =
        _calculateResearchPointsToUnlock(words: words);
    final summaryInvestedScore =
        investedScore + unlockCondition.investedResearchPoints;

    print(
      'summaryInvestedScore: $summaryInvestedScore\n'
      'requiredScore: $requiredScore',
    );
    return (
      isUnlocked: summaryInvestedScore >= requiredScore,
      percentage: summaryInvestedScore / requiredScore,
      requiredScore: requiredScore,
      investedScore: summaryInvestedScore,
    );
  }

  ({double min, double max, bool isUnlocked, double summaryScore})
      getResearchPointsToUnlock({
    required final TechnologyUnlockConditionModel unlockCondition,
  }) {
    const double summaryScore = 0;
    double min = 0;
    double max = 0;
    double maxInvestedScore = 0;
    for (final MapEntry(value: words)
        in unlockCondition.languageWords.entries) {
      final (:investedScore, :requiredScore) =
          _calculateResearchPointsToUnlock(words: words);
      if (requiredScore > max) max = requiredScore;
      if (requiredScore < min) min = requiredScore;
      if (investedScore > maxInvestedScore) maxInvestedScore = investedScore;
    }
    final isUnlocked =
        (unlockCondition.investedResearchPoints + maxInvestedScore) >= min;

    return (
      min: min,
      max: max,
      isUnlocked: isUnlocked,
      summaryScore: summaryScore,
    );
  }

  ({
    double requiredScore,
    double investedScore,
  }) _calculateResearchPointsToUnlock({
    required final List<UsefulWordModel> words,
  }) {
    double requiredScore = 0;
    double investedScore = 0;
    for (final word in words) {
      final wordScore = scoreMechanics.getScoreFromWord(
        word: word.word,
      );
      requiredScore += wordScore.value;
      if (word.isUsed) investedScore += wordScore.value;
    }
    return (requiredScore: requiredScore, investedScore: investedScore);
  }
}
