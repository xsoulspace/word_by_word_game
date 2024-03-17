import '../../data_models/data_models.dart';
import '../bloc/tutorial_bloc.dart';

class TutorialMechanics {
  TutorialCollectionsProgressModel resetProgress({
    required final TutorialCollectionsProgressModel progress,
    required final TutorialCollectionsName tutorial,
  }) {
    if (progress.indexes.containsKey(tutorial)) {
      final newIndexes = {...progress.indexes}..remove(tutorial);
      return progress.copyWith(indexes: newIndexes);
    } else {
      return progress;
    }
  }

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
    final gamePostEffects = [...tutorialEvent.gamePostEffects];
    final index = completeActions.indexWhere(
      (final action) => action.action == uiEvent.action,
    );

    if (index >= 0) {
      final actionEvent = completeActions[index];
      if (actionEvent.isCompleted) {
        return tutorialEvent;
      }
      void complete() {
        completeActions[index] = actionEvent.copyWith(
          isCompleted: true,
        );
      }

      switch (uiEvent.action) {
        case TutorialCompleteAction.idle:
          return tutorialEvent;
        case TutorialCompleteAction.onClick:
          if (actionEvent.uiItem == uiEvent.key) {
            complete();
          }
        case TutorialCompleteAction.onBoolOptionSelected:
          if (actionEvent.uiItem == uiEvent.key) {
            final boolValue = uiEvent.boolValue.toPrimitiveBool();
            final postEffects = actionEvent.boolConsquenses[boolValue];
            completeActions[index] = actionEvent.copyWith(
              isCompleted: true,
            );
            if (postEffects != null) gamePostEffects.addAll(postEffects);
          }
        case TutorialCompleteAction.onEdit:
          if (actionEvent.uiItem == null) {
            if (uiEvent.stringValue.isNotEmpty) {
              complete();
            }
          } else {
            if (actionEvent.uiItem == uiEvent.key &&
                uiEvent.stringValue.isNotEmpty) {
              complete();
            }
          }
      }
      return tutorialEvent.copyWith(
        completeActions: completeActions,
        gamePostEffects: gamePostEffects,
      );
    } else {
      return tutorialEvent;
    }
  }
}
