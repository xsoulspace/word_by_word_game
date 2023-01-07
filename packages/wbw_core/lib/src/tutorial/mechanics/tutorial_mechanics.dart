import '../../models/models.dart';
import '../bloc/tutorial_bloc.dart';

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

  TutorialEventModel verifyCompletion({
    required final TutorialEventModel tutorialEvent,
    required final TutorialUiActionEvent uiEvent,
  }) {
    final completedActions = [...tutorialEvent.completeActions];
    final index = completedActions.indexWhere(
      (final action) => action.action == uiEvent.action,
    );

    if (index >= 0) {
      final event = completedActions[index];
      void complete() {
        completedActions[index] = event.copyWith(
          isCompleted: true,
        );
      }

      switch (uiEvent.action) {
        case TutorialCompleteAction.onClick:
          if (event.uiItem == uiEvent.key) {
            complete();
          }
          break;
        case TutorialCompleteAction.onBoolOptionSelected:
          if (event.uiItem == uiEvent.key) {
            final boolValue = uiEvent.boolValue.toPrimitiveBool();
            final postEffects = event.boolConsquenses[boolValue];
            completedActions[index] = event.copyWith(
              isCompleted: true,
              acceptedPostEffects: [
                ...event.acceptedPostEffects,
                ...?postEffects
              ],
            );
          }
          break;
        case TutorialCompleteAction.onEdit:
          if (event.uiItem == null) {
            if (uiEvent.stringValue.isNotEmpty) {
              complete();
            }
          } else {
            if (event.uiItem == uiEvent.key && uiEvent.stringValue.isNotEmpty) {
              complete();
            }
          }
          break;
      }
      return tutorialEvent.copyWith(completeActions: completedActions);
    } else {
      return tutorialEvent;
    }
  }
}
