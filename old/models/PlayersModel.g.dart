// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PlayersModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayersModel _$PlayersModelFromJson(Map<String, dynamic> json) {
  return PlayersModel(
    (json['playersByPlayerIdMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k),
          e == null ? null : Player.fromJson(e as Map<String, dynamic>)),
    ),
    currentPlayer: json['currentPlayer'] == null
        ? null
        : Player.fromJson(json['currentPlayer'] as Map<String, dynamic>),
    tempPlayers: (json['tempPlayers'] as List)
        ?.map((e) =>
            e == null ? null : Player.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlayersModelToJson(PlayersModel instance) =>
    <String, dynamic>{
      'playersByPlayerIdMap': instance.playersByPlayerIdMap
          ?.map((k, e) => MapEntry(k.toString(), e)),
      'tempPlayers': instance.tempPlayers,
      'currentPlayer': instance.currentPlayer,
    };
