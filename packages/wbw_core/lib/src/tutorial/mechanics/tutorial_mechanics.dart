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
    if (tutorialEvent.isCompleted) return tutorialEvent;

    final completeActions = [...tutorialEvent.completeActions];
    final index = completeActions.indexWhere(
      (final action) => action.action == uiEvent.action,
    );

    if (index >= 0) {
      final event = completeActions[index];
      if (event.isCompleted) {
        return tutorialEvent;
      }
      void complete() {
        completeActions[index] = event.copyWith(
          isCompleted: true,
        );
      }

      switch (uiEvent.action) {
        case TutorialCompleteAction.idle:
          return tutorialEvent;
        case TutorialCompleteAction.onClick:
          if (event.uiItem == uiEvent.key) {
            complete();
          }
          break;
        case TutorialCompleteAction.onBoolOptionSelected:
          if (event.uiItem == uiEvent.key) {
            final boolValue = uiEvent.boolValue.toPrimitiveBool();
            final postEffects = event.boolConsquenses[boolValue];
            completeActions[index] = event.copyWith(
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
      return tutorialEvent.copyWith(completeActions: completeActions);
    } else {
      return tutorialEvent;
    }
  }
}
