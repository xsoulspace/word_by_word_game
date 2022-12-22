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
  const factory TutorialEventModel({
    required final LocalizedMap localizedMap,
    @Default([]) final List<TutorialGameAction> gameActions,
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
class TutorialEventsCollectionModel with _$TutorialEventsCollectionModel {
  const factory TutorialEventsCollectionModel({
    required final List<TutorialEventModel> events,
    required final int currentIndex,
  }) = _TutorialEventsCollectionModel;

  const TutorialEventsCollectionModel._();

  factory TutorialEventsCollectionModel.fromJson(
          final Map<String, dynamic> json) =>
      _$TutorialEventsCollectionModelFromJson(json);

  bool get isCompleted => currentIndex == (events.length - 1);
}
