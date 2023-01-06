part of 'tutorial_bloc.dart';

abstract class TutorialEvent extends Equatable {
  const TutorialEvent();
  @override
  List<Object?> get props => [];
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

@immutable
class NextTutorialEvent extends TutorialEvent {
  const NextTutorialEvent();
}

@immutable
class TutorialUiActionEvent extends TutorialEvent {
  const TutorialUiActionEvent({
    required this.action,
    this.key,
    this.value = '',
  });
  final TutorialCompleteAction action;
  final TutorialUiItem? key;
  final String value;
}
