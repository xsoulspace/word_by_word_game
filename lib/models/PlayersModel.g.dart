// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlayersModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayersModel _$PlayersModelFromJson(Map<String, dynamic> json) {
  return PlayersModel(
    json['playerIdMax'] as int,
    (json['playersByPlayerIdMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k),
          e == null ? null : Player.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$PlayersModelToJson(PlayersModel instance) =>
    <String, dynamic>{
      'playersByPlayerIdMap': instance.playersByPlayerIdMap
          ?.map((k, e) => MapEntry(k.toString(), e)),
      'playerIdMax': instance.playerIdMax,
    };
