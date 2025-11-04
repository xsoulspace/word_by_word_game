part of 'tutorial_bloc.dart';

@Freezed(toJson: false, fromJson: false)
class TutorialEvent with _$TutorialEvent {
  const factory TutorialEvent.complete() = CompleteTutorialEvent;
  const factory TutorialEvent.loadTutorialProgress({
    required final TutorialCollectionsProgressModel progress,
  }) = LoadTutorialsProgressEvent;
  const factory TutorialEvent.start({
    required final TutorialCollectionsName tutorialName,
    required final bool shouldContinueIfPlayed,
    required final bool shouldStartFromBeginning,
  }) = StartTutorialEvent;
  const factory TutorialEvent.next({
    @Default(NextTutorialEventType.next) final NextTutorialEventType action,
  }) = NextTutorialEvent;
  const factory TutorialEvent.uiAction({
    required final TutorialCompleteAction action,
    final TutorialUiItem? key,
    @Default('') final String stringValue,
    @Default(false) final bool boolValue,
  }) = TutorialUiActionEvent;
}

enum NextTutorialEventType { complete, next, previous }
