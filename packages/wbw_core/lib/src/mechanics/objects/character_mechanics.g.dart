// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_mechanics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalloonLiftPowersModelImpl _$$BalloonLiftPowersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BalloonLiftPowersModelImpl(
      power: (json['power'] as num).toDouble(),
      volume: (json['volume'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$BalloonLiftPowersModelImplToJson(
        _$BalloonLiftPowersModelImpl instance) =>
    <String, dynamic>{
      'power': instance.power,
      'volume': instance.volume,
    };

_$BalloonLiftParamsModelImpl _$$BalloonLiftParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BalloonLiftParamsModelImpl(
      maxVolume: (json['maxVolume'] as num).toDouble(),
      maxPower: (json['maxPower'] as num).toDouble(),
      powerUsage: (json['powerUsage'] as num).toDouble(),
    );

Map<String, dynamic> _$$BalloonLiftParamsModelImplToJson(
        _$BalloonLiftParamsModelImpl instance) =>
    <String, dynamic>{
      'maxVolume': instance.maxVolume,
      'maxPower': instance.maxPower,
      'powerUsage': instance.powerUsage,
    };
