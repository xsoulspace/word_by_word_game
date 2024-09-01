// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_mechanics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      windScale: $enumDecodeNullable(_$WindScaleEnumMap, json['windScale']) ??
          WindScale.calm,
      windDirection:
          $enumDecodeNullable(_$WindDirectionEnumMap, json['windDirection']) ??
              WindDirection.defaultDirection,
      durationInGameSeconds:
          (json['durationInGameSeconds'] as num?)?.toInt() ?? 20,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
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

_$WindModelImpl _$$WindModelImplFromJson(Map<String, dynamic> json) =>
    _$WindModelImpl(
      force: json['force'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(json['force'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WindModelImplToJson(_$WindModelImpl instance) =>
    <String, dynamic>{
      'force': instance.force,
    };
