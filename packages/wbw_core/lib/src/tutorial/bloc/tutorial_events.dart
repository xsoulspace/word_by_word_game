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
    required this.name,
  });
  final TutorialCollectionsName name;
}

@immutable
class NextTutorialEvent extends TutorialEvent {
  const NextTutorialEvent();
}
