// ignore_for_file: invalid_annotation_target

part of 'tutorial_bloc.dart';

@immutable
abstract class TutorialBlocState {
  const TutorialBlocState();
}

@immutable
class EmptyTutorialBlocState extends TutorialBlocState {
  const EmptyTutorialBlocState();
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class PendingTutorialBlocState extends TutorialBlocState
    with _$PendingTutorialBlocState {
  @JsonSerializable(
    explicitToJson: true,
  )
  @Implements<TutorialBlocState>()
  const factory PendingTutorialBlocState({
    /// progress for all tutorials
    required final TutorialCollectionsProgressModel progress,
  }) = _PendingTutorialBlocState;
  const PendingTutorialBlocState._();
  factory PendingTutorialBlocState.fromJson(final Map<String, dynamic> json) =>
      _$PendingTutorialBlocStateFromJson(json);
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LiveTutorialBlocState extends TutorialBlocState
    with _$LiveTutorialBlocState {
  @JsonSerializable(
    explicitToJson: true,
  )
  @Implements<TutorialBlocState>()
  const factory LiveTutorialBlocState({
    required final TutorialEventsCollectionModel tutorial,

    /// progress for all tutorials
    required final TutorialCollectionsProgressModel progress,
  }) = _LiveTutorialBlocState;
  const LiveTutorialBlocState._();
  factory LiveTutorialBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LiveTutorialBlocStateFromJson(json);

  static LiveTutorialBlocState? fromProgressModel({
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

    return LiveTutorialBlocState(
      tutorial: tutorial,
      progress: progress,
    );
  }

  LiveTutorialBlocState applyTutorialProgress() {
    final updatedProgress = toProgressModel();
    return copyWith(progress: updatedProgress);
  }

  TutorialCollectionsProgressModel toProgressModel() =>
      tutorial.saveProgress(progress: progress);
}
