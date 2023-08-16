// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TutorialBlocStateEmpty _$$TutorialBlocStateEmptyFromJson(
        Map<String, dynamic> json) =>
    _$TutorialBlocStateEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TutorialBlocStateEmptyToJson(
        _$TutorialBlocStateEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TutorialBlocStatePending _$$TutorialBlocStatePendingFromJson(
        Map<String, dynamic> json) =>
    _$TutorialBlocStatePending(
      progress: TutorialCollectionsProgressModel.fromJson(
          json['progress'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TutorialBlocStatePendingToJson(
        _$TutorialBlocStatePending instance) =>
    <String, dynamic>{
      'progress': instance.progress,
      'runtimeType': instance.$type,
    };

_$TutorialBlocStateLive _$$TutorialBlocStateLiveFromJson(
        Map<String, dynamic> json) =>
    _$TutorialBlocStateLive(
      tutorial: TutorialEventsCollectionModel.fromJson(
          json['tutorial'] as Map<String, dynamic>),
      progress: TutorialCollectionsProgressModel.fromJson(
          json['progress'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TutorialBlocStateLiveToJson(
        _$TutorialBlocStateLive instance) =>
    <String, dynamic>{
      'tutorial': instance.tutorial,
      'progress': instance.progress,
      'runtimeType': instance.$type,
    };
