// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_players_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveLevelPlayersBlocState _$$_LiveLevelPlayersBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$_LiveLevelPlayersBlocState(
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPlayerId: json['currentPlayerId'] as String,
    );

Map<String, dynamic> _$$_LiveLevelPlayersBlocStateToJson(
        _$_LiveLevelPlayersBlocState instance) =>
    <String, dynamic>{
      'players': instance.players.map((e) => e.toJson()).toList(),
      'currentPlayerId': instance.currentPlayerId,
    };
