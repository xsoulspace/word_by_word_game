// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class TutorialEventModel with _$TutorialEventModel {
  @JsonSerializable(explicitToJson: true)
  const factory TutorialEventModel({
    required final LocalizedMap localizedMap,

    /// what will switch this event to the next
    required final List<TutorialUiActionEventModel> completeActions,

    /// what effect this event do with the game
    @Default([]) final List<TutorialGameEffect> gameEffects,
    final TutorialUiItem? uiItem,
  }) = _TutorialEventModel;

  const TutorialEventModel._();

  factory TutorialEventModel.fromJson(final Map<String, dynamic> json) =>
      _$TutorialEventModelFromJson(json);
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class TutorialUiActionEventModel with _$TutorialUiActionEventModel {
  @JsonSerializable(explicitToJson: true)
  const factory TutorialUiActionEventModel({
    /// If [uiItem] is set null and the action
    /// is [TutorialCompleteAction.onClick] then
    /// it means that the action is click on anything
    /// on screen
    required final TutorialCompleteAction action,
    final TutorialUiItem? uiItem,
  }) = _TutorialUiActionEventModel;

  const TutorialUiActionEventModel._();

  factory TutorialUiActionEventModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$TutorialUiActionEventModelFromJson(json);
  static const onClickAnywhere = TutorialUiActionEventModel(
    action: TutorialCompleteAction.onClick,
  );
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class TutorialEventsCollectionModel with _$TutorialEventsCollectionModel {
  @JsonSerializable(explicitToJson: true)
  const factory TutorialEventsCollectionModel({
    required final List<TutorialEventModel> events,
    required final TutorialCollectionsName name,
    required final int currentIndex,
  }) = _TutorialEventsCollectionModel;

  const TutorialEventsCollectionModel._();

  factory TutorialEventsCollectionModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$TutorialEventsCollectionModelFromJson(json);

  TutorialCollectionsProgressModel saveProgress({
    required final TutorialCollectionsProgressModel progress,
  }) {
    final updatedIndexes = {...progress.indexes}..[name] = currentIndex;

    return progress.copyWith(
      indexes: updatedIndexes,
    );
  }

  static TutorialEventsCollectionModel? fromData({
    required final TutorialCollectionsProgressModel progress,
    required final TutorialCollectionsDataModel data,
    required final TutorialCollectionsName name,
  }) {
    final int? currentIndex;
    final List<TutorialEventModel>? events;

    currentIndex = progress.indexes[name];
    if (currentIndex == null) return null;

    events = data.events[name];
    if (events == null) return null;

    return TutorialEventsCollectionModel(
      name: name,
      currentIndex: currentIndex,
      events: events,
    );
  }

  bool get isCompleted => currentIndex == (events.length - 1);
}

/// Actual tutorial progress for [TutorialCollectionsDataModel]
///
/// To get the progress and the events
/// use [TutorialEventsCollectionModel.fromData]
@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class TutorialCollectionsProgressModel with _$TutorialCollectionsProgressModel {
  @JsonSerializable(explicitToJson: true)
  const factory TutorialCollectionsProgressModel({
    /// Key - [TutorialCollectionsName]
    /// Value - int index from [TutorialEventsCollectionModel.events]
    required final Map<TutorialCollectionsName, int> indexes,
  }) = _TutorialCollectionsProgressModel;

  const TutorialCollectionsProgressModel._();

  factory TutorialCollectionsProgressModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$TutorialCollectionsProgressModelFromJson(json);
  static const empty = TutorialCollectionsProgressModel(
    indexes: {},
  );
}

/// Actual tutorial events
@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class TutorialCollectionsDataModel with _$TutorialCollectionsDataModel {
  const factory TutorialCollectionsDataModel({
    required final Map<TutorialCollectionsName, List<TutorialEventModel>>
        events,
  }) = _TutorialCollectionsDataModel;

  const TutorialCollectionsDataModel._();

  factory TutorialCollectionsDataModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$TutorialCollectionsDataModelFromJson(json);
}

enum TutorialCollectionsName {
  levelIntroduction,
  archive,
}
