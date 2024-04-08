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

_$ForcesConstantsModelImpl _$$ForcesConstantsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForcesConstantsModelImpl(
      gravityForce: (json['gravityForce'] as num).toDouble(),
      volumeDecreaseRatio: (json['volumeDecreaseRatio'] as num).toDouble(),
      volumeIncreaseRatio: (json['volumeIncreaseRatio'] as num).toDouble(),
      volumeIncreaseRatioMax:
          (json['volumeIncreaseRatioMax'] as num).toDouble(),
      volumeToLiftRatio: (json['volumeToLiftRatio'] as num).toDouble(),
    );

Map<String, dynamic> _$$ForcesConstantsModelImplToJson(
        _$ForcesConstantsModelImpl instance) =>
    <String, dynamic>{
      'gravityForce': instance.gravityForce,
      'volumeDecreaseRatio': instance.volumeDecreaseRatio,
      'volumeIncreaseRatio': instance.volumeIncreaseRatio,
      'volumeIncreaseRatioMax': instance.volumeIncreaseRatioMax,
      'volumeToLiftRatio': instance.volumeToLiftRatio,
    };
