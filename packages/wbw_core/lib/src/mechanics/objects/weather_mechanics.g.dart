// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_mechanics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) =>
    _WeatherModel(
      windScale:
          $enumDecodeNullable(_$WindScaleEnumMap, json['windScale']) ??
          WindScale.calm,
      windDirection:
          $enumDecodeNullable(_$WindDirectionEnumMap, json['windDirection']) ??
          WindDirection.defaultDirection,
      durationInGameSeconds:
          (json['durationInGameSeconds'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$WeatherModelToJson(_WeatherModel instance) =>
    <String, dynamic>{
      'windScale': _$WindScaleEnumMap[instance.windScale]!,
      'windDirection': _$WindDirectionEnumMap[instance.windDirection]!,
      'durationInGameSeconds': instance.durationInGameSeconds,
    };

const _$WindScaleEnumMap = {
  WindScale.calm: 'calm',
  WindScale.lightAir: 'lightAir',
  WindScale.lightBreeze: 'lightBreeze',
  WindScale.gentleBreeze: 'gentleBreeze',
  WindScale.moderateBreeze: 'moderateBreeze',
  WindScale.freshBreeze: 'freshBreeze',
  WindScale.strongBreeze: 'strongBreeze',
  WindScale.highWind: 'highWind',
  WindScale.gale: 'gale',
  WindScale.severeGale: 'severeGale',
  WindScale.storm: 'storm',
  WindScale.violentStorm: 'violentStorm',
  WindScale.hurricane: 'hurricane',
};

const _$WindDirectionEnumMap = {
  WindDirection.right: 'right',
  WindDirection.left: 'left',
};

_WindModel _$WindModelFromJson(Map<String, dynamic> json) => _WindModel(
  force: json['force'] == null
      ? SerializedVector2.zero
      : SerializedVector2.fromJson(json['force'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WindModelToJson(_WindModel instance) =>
    <String, dynamic>{'force': instance.force};
