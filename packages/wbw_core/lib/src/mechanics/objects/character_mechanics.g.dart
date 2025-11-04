// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_mechanics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BalloonLiftPowersModel _$BalloonLiftPowersModelFromJson(
  Map<String, dynamic> json,
) => _BalloonLiftPowersModel(
  power: (json['power'] as num).toDouble(),
  volume: (json['volume'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$BalloonLiftPowersModelToJson(
  _BalloonLiftPowersModel instance,
) => <String, dynamic>{'power': instance.power, 'volume': instance.volume};

_BalloonLiftParamsModel _$BalloonLiftParamsModelFromJson(
  Map<String, dynamic> json,
) => _BalloonLiftParamsModel(
  maxVolume: (json['maxVolume'] as num).toDouble(),
  maxPower: (json['maxPower'] as num).toDouble(),
  powerUsage: (json['powerUsage'] as num).toDouble(),
);

Map<String, dynamic> _$BalloonLiftParamsModelToJson(
  _BalloonLiftParamsModel instance,
) => <String, dynamic>{
  'maxVolume': instance.maxVolume,
  'maxPower': instance.maxPower,
  'powerUsage': instance.powerUsage,
};

_ForcesConstantsModel _$ForcesConstantsModelFromJson(
  Map<String, dynamic> json,
) => _ForcesConstantsModel(
  gravityForce: (json['gravityForce'] as num).toDouble(),
  volumeDecreaseRatio: (json['volumeDecreaseRatio'] as num).toDouble(),
  volumeIncreaseRatio: (json['volumeIncreaseRatio'] as num).toDouble(),
  volumeIncreaseRatioMax: (json['volumeIncreaseRatioMax'] as num).toDouble(),
  volumeToLiftRatio: (json['volumeToLiftRatio'] as num).toDouble(),
);

Map<String, dynamic> _$ForcesConstantsModelToJson(
  _ForcesConstantsModel instance,
) => <String, dynamic>{
  'gravityForce': instance.gravityForce,
  'volumeDecreaseRatio': instance.volumeDecreaseRatio,
  'volumeIncreaseRatio': instance.volumeIncreaseRatio,
  'volumeIncreaseRatioMax': instance.volumeIncreaseRatioMax,
  'volumeToLiftRatio': instance.volumeToLiftRatio,
};
