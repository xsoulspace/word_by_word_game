part of 'tutorial_bloc.dart';

abstract class TutorialEvent extends Equatable {
  const TutorialEvent();
  @override
  List<Object?> get props => [];
}

@immutable
class CompleteTutorialEvent extends TutorialEvent {
  const CompleteTutorialEvent();
}

@immutable
class LoadTutorialsProgressEvent extends TutorialEvent {
  const LoadTutorialsProgressEvent({
    required this.progress,
  });
  final TutorialCollectionsProgressModel progress;
}

@immutable
class StartTutorialEvent extends TutorialEvent {
  const StartTutorialEvent({
    required this.tutorialName,
    required this.shouldStartIfPlayed,
  });
  final TutorialCollectionsName tutorialName;
  final bool shouldStartIfPlayed;
}

enum NextTutorialEventType {
  skipToLast,
  next,
  previous,
}

@immutable
class NextTutorialEvent extends TutorialEvent {
  const NextTutorialEvent({
    this.action = NextTutorialEventType.next,
  });
  final NextTutorialEventType action;
}

@immutable
class TutorialUiActionEvent extends TutorialEvent {
  const TutorialUiActionEvent({
    required this.action,
    this.key,
    this.stringValue = '',
    this.boolValue = false,
  });
  final TutorialCompleteAction action;
  final TutorialUiItem? key;
  final String stringValue;
  final bool boolValue;
}
