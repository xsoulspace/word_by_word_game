// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_game_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveGlobalGameBlocState _$$_LiveGlobalGameBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$_LiveGlobalGameBlocState(
      id: json['id'] as String,
      currentLevelId: json['currentLevelId'] as String,
      dateTime: json['dateTime'] == null
          ? const WorldDateTimeModel()
          : WorldDateTimeModel.fromJson(
              json['dateTime'] as Map<String, dynamic>),
      lastDateTime: json['lastDateTime'] == null
          ? const WorldDateTimeModel()
          : WorldDateTimeModel.fromJson(
              json['lastDateTime'] as Map<String, dynamic>),
      dateTimeDelta: json['dateTimeDelta'] as int? ?? 0,
    );

Map<String, dynamic> _$$_LiveGlobalGameBlocStateToJson(
        _$_LiveGlobalGameBlocState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentLevelId': instance.currentLevelId,
      'dateTime': instance.dateTime.toJson(),
      'lastDateTime': instance.lastDateTime.toJson(),
      'dateTimeDelta': instance.dateTimeDelta,
    };
