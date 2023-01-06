import '../../../wbw_core.dart';

class TutorialMechanics {
  bool checkIsTutorialPlayed({
    required final TutorialCollectionsProgressModel progress,
    required final TutorialCollectionsName tutorial,
  }) {
    if (progress.indexes.containsKey(tutorial)) {
      return (progress.indexes[tutorial] ?? 0) > 0;
    } else {
      return false;
    }
  }
}
