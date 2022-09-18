// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_game_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveGlobalGameBlocState _$$_LiveGlobalGameBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$_LiveGlobalGameBlocState(
      id: json['id'] as String,
      currentLevelId: json['currentLevelId'] as String? ?? '',
      dateTime: json['dateTime'] == null
          ? const WorldDateTimeModel()
          : WorldDateTimeModel.fromJson(
              json['dateTime'] as Map<String, dynamic>),
      lastDateTime: json['lastDateTime'] == null
          ? const WorldDateTimeModel()
          : WorldDateTimeModel.fromJson(
              json['lastDateTime'] as Map<String, dynamic>),
      levels: (json['levels'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, LevelModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      templateLevels: (json['templateLevels'] as List<dynamic>?)
              ?.map(
                  (e) => TemplateLevelModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      playersCollection: (json['playersCollection'] as List<dynamic>?)
              ?.map(
                  (e) => PlayerProfileModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      playersCharacters: (json['playersCharacters'] as List<dynamic>?)
              ?.map((e) =>
                  PlayerCharacterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      dateTimeDelta: json['dateTimeDelta'] as int? ?? 0,
      loadedLevelParts: (json['loadedLevelParts'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LevelPartStatesEnumMap, e))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$_LiveGlobalGameBlocStateToJson(
        _$_LiveGlobalGameBlocState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentLevelId': instance.currentLevelId,
      'dateTime': instance.dateTime.toJson(),
      'lastDateTime': instance.lastDateTime.toJson(),
      'levels': instance.levels.map((k, e) => MapEntry(k, e.toJson())),
      'templateLevels': instance.templateLevels.map((e) => e.toJson()).toList(),
      'playersCollection':
          instance.playersCollection.map((e) => e.toJson()).toList(),
      'playersCharacters':
          instance.playersCharacters.map((e) => e.toJson()).toList(),
      'dateTimeDelta': instance.dateTimeDelta,
      'loadedLevelParts': instance.loadedLevelParts
          .map((e) => _$LevelPartStatesEnumMap[e]!)
          .toList(),
    };

const _$LevelPartStatesEnumMap = {
  LevelPartStates.level: 'level',
  LevelPartStates.players: 'players',
  LevelPartStates.resources: 'resources',
};
