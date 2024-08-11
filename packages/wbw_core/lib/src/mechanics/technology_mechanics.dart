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

  ({double allRequiredScore, double allInvestedScore, bool isUnlocked})
      getResearchPointsToUnlock({
    required final TechnologyUnlockConditionModel unlockCondition,
  }) {
    double allRequiredScore = 0;
    double allInvestedScore = 0;
    for (final MapEntry(value: words)
        in unlockCondition.languageWords.entries) {
      final (:investedScore, :requiredScore) =
          _calculateResearchPointsToUnlock(words: words);
      allRequiredScore += requiredScore;
      allInvestedScore += investedScore;
    }
    final isUnlocked =
        (unlockCondition.investedResearchPoints + allInvestedScore) >=
            allRequiredScore;

    return (
      allRequiredScore: allRequiredScore,
      allInvestedScore: allInvestedScore,
      isUnlocked: isUnlocked,
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

  ({ScoreModel scoreLeftForNextLevel, int levelIndex})
      getCurrentAchievedLevelIndex({
    required final ScoreModel allInvesetedScore,
    required final List<TechnologyLevelTuple> runtimeLevels,
  }) {
    double allScoreLeft = allInvesetedScore.value;
    final scoresByLevel = <double>[];

    /// computing all invested score and required score.
    ///
    /// it is important to loop it first, because there can be
    /// levels with unlocked words, which increase summary invested score
    for (var i = 0; i < runtimeLevels.length; i++) {
      final level = runtimeLevels[i];

      final scoreNeeded = level.technologies.map(
        (final e) {
          final (:allRequiredScore, :allInvestedScore, :isUnlocked) =
              getResearchPointsToUnlock(unlockCondition: e.unlockCondition);
          allScoreLeft += allInvestedScore;
          return allRequiredScore;
        },
      ).reduce((final a, final b) => a + b);
      scoresByLevel[i] = scoreNeeded;
    }

    for (var i = 0; i < scoresByLevel.length; i++) {
      final score = scoresByLevel[i];
      final scoreLeft = allScoreLeft - score;
      if (scoreLeft < 0) {
        return (
          scoreLeftForNextLevel: ScoreModel(value: -scoreLeft),
          levelIndex: i
        );
      } else {
        allScoreLeft = scoreLeft;
      }
    }
    return (
      scoreLeftForNextLevel: ScoreModel.zero,
      levelIndex: scoresByLevel.length - 1
    );
  }
}

typedef AllRequiredScoreByLevelsTuple = ({
  List<ScoreModel> levelsScores,
  ScoreModel allScore
});
