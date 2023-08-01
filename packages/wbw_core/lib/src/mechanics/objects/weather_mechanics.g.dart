// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_mechanics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherModel _$$_WeatherModelFromJson(Map<String, dynamic> json) =>
    _$_WeatherModel(
      windScale: $enumDecodeNullable(_$WindScaleEnumMap, json['windScale']) ??
          WindScale.calm,
      durationInGameSeconds: json['durationInGameSeconds'] as int? ?? 20,
    );

Map<String, dynamic> _$$_WeatherModelToJson(_$_WeatherModel instance) =>
    <String, dynamic>{
      'windScale': _$WindScaleEnumMap[instance.windScale]!,
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

_$_WindModel _$$_WindModelFromJson(Map<String, dynamic> json) => _$_WindModel(
      force: SerializedVector2.fromJson(json['force'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WindModelToJson(_$_WindModel instance) =>
    <String, dynamic>{
      'force': instance.force,
    };
