// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PendingTutorialBlocState _$$_PendingTutorialBlocStateFromJson(
  final Map<String, dynamic> json,
) =>
    _$_PendingTutorialBlocState(
      progress: TutorialCollectionsProgressModel.fromJson(
        json['progress'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$_PendingTutorialBlocStateToJson(
  final _$_PendingTutorialBlocState instance,
) =>
    <String, dynamic>{
      'progress': instance.progress.toJson(),
    };

_$_LiveTutorialBlocState _$$_LiveTutorialBlocStateFromJson(
  final Map<String, dynamic> json,
) =>
    _$_LiveTutorialBlocState(
      tutorial: TutorialEventsCollectionModel.fromJson(
        json['tutorial'] as Map<String, dynamic>,
      ),
      progress: TutorialCollectionsProgressModel.fromJson(
        json['progress'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$_LiveTutorialBlocStateToJson(
  final _$_LiveTutorialBlocState instance,
) =>
    <String, dynamic>{
      'tutorial': instance.tutorial.toJson(),
      'progress': instance.progress.toJson(),
    };
