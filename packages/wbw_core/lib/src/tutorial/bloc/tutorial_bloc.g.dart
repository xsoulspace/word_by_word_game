// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TutorialBlocStateEmptyImpl _$$TutorialBlocStateEmptyImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialBlocStateEmptyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TutorialBlocStateEmptyImplToJson(
        _$TutorialBlocStateEmptyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$TutorialBlocStatePendingImpl _$$TutorialBlocStatePendingImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialBlocStatePendingImpl(
      progress: TutorialCollectionsProgressModel.fromJson(
          json['progress'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TutorialBlocStatePendingImplToJson(
        _$TutorialBlocStatePendingImpl instance) =>
    <String, dynamic>{
      'progress': instance.progress,
      'runtimeType': instance.$type,
    };

_$TutorialBlocStateLiveImpl _$$TutorialBlocStateLiveImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialBlocStateLiveImpl(
      tutorial: TutorialEventsCollectionModel.fromJson(
          json['tutorial'] as Map<String, dynamic>),
      progress: TutorialCollectionsProgressModel.fromJson(
          json['progress'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TutorialBlocStateLiveImplToJson(
        _$TutorialBlocStateLiveImpl instance) =>
    <String, dynamic>{
      'tutorial': instance.tutorial,
      'progress': instance.progress,
      'runtimeType': instance.$type,
    };
