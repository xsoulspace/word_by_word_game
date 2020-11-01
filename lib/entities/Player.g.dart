// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) {
  return Player(
    id: json['id'] as int,
    playerColor: json['playerColor'] == null
        ? null
        : PlayerColor.fromJson(json['playerColor'] as Map<String, dynamic>),
    highscore: json['highscore'] as int,
  );
}

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'playerColor': instance.playerColor?.toJson(),
      'highscore': instance.highscore,
    };
