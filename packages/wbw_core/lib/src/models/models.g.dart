// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWordModel _$$_CurrentWordModelFromJson(
        final Map<String, dynamic> json) =>
    _$_CurrentWordModel(
      leftPart: json['leftPart'] as String? ?? '',
      middlePart: json['middlePart'] as String? ?? '',
      rightPart: json['rightPart'] as String? ?? '',
      fullWord: json['fullWord'] as String? ?? '',
    );

Map<String, dynamic> _$$_CurrentWordModelToJson(
        final _$_CurrentWordModel instance) =>
    <String, dynamic>{
      'leftPart': instance.leftPart,
      'middlePart': instance.middlePart,
      'rightPart': instance.rightPart,
      'fullWord': instance.fullWord,
    };

_$_PlayerProfileModel _$$_PlayerProfileModelFromJson(
  final Map<String, dynamic> json,
) =>
    _$_PlayerProfileModel(
      id: json['id'] as String,
      colorValue: json['colorValue'] as int,
      name: json['name'] as String,
      playedGames: (json['playedGames'] as List<dynamic>)
          .map((final e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$_PlayerProfileModelToJson(
  final _$_PlayerProfileModel instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'colorValue': instance.colorValue,
      'name': instance.name,
      'playedGames': instance.playedGames.toList(),
    };

_$_WorldDateTime _$$_WorldDateTimeFromJson(final Map<String, dynamic> json) =>
    _$_WorldDateTime(
      second: json['second'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WorldDateTimeToJson(final _$_WorldDateTime instance) =>
    <String, dynamic>{
      'second': instance.second,
    };
