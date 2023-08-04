// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_mechanics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BalloonLiftPowersModel _$$_BalloonLiftPowersModelFromJson(
        Map<String, dynamic> json) =>
    _$_BalloonLiftPowersModel(
      power: (json['power'] as num).toDouble(),
      volume: (json['volume'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_BalloonLiftPowersModelToJson(
        _$_BalloonLiftPowersModel instance) =>
    <String, dynamic>{
      'power': instance.power,
      'volume': instance.volume,
    };

_$_BalloonLiftParamsModel _$$_BalloonLiftParamsModelFromJson(
        Map<String, dynamic> json) =>
    _$_BalloonLiftParamsModel(
      maxVolume: (json['maxVolume'] as num).toDouble(),
      maxPower: (json['maxPower'] as num).toDouble(),
      powerUsage: (json['powerUsage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BalloonLiftParamsModelToJson(
        _$_BalloonLiftParamsModel instance) =>
    <String, dynamic>{
      'maxVolume': instance.maxVolume,
      'maxPower': instance.maxPower,
      'powerUsage': instance.powerUsage,
    };
