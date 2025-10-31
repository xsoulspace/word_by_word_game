// ignore_for_file: invalid_annotation_target

part of 'tutorial_bloc.dart';

@Freezed(fromJson: false, toJson: false)
sealed class TutorialBlocState with _$TutorialBlocState {
  const factory TutorialBlocState.empty() = TutorialBlocStateEmpty;
  const factory TutorialBlocState.pending({
    /// progress for all tutorials
    required final TutorialCollectionsProgressModel progress,
  }) = TutorialBlocStatePending;
  const factory TutorialBlocState.live({
    required final TutorialEventsCollectionModel tutorial,

    /// progress for all tutorials
    required final TutorialCollectionsProgressModel progress,
  }) = TutorialBlocStateLive;
  static TutorialBlocStateLive? fromProgressModel({
    required final TutorialCollectionsDataModel data,
    required final TutorialCollectionsProgressModel progress,
    required final TutorialCollectionsName name,
  }) {
    final tutorial = TutorialEventsCollectionModel.fromData(
      data: data,
      name: name,
      progress: progress,
    );
    if (tutorial == null) return null;

    return TutorialBlocStateLive(tutorial: tutorial, progress: progress);
  }
}

extension TutorialBlocStateLiveExtension on TutorialBlocStateLive {
  TutorialBlocStateLive applyTutorialProgress() {
    final updatedProgress = toProgressModel();
    return copyWith(progress: updatedProgress);
  }

  TutorialCollectionsProgressModel toProgressModel() =>
      tutorial.saveProgress(progress: progress);
}
