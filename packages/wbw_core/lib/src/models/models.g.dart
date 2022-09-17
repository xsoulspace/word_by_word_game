// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentWordModel _$$_CurrentWordModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentWordModel(
      leftPart: json['leftPart'] as String? ?? '',
      middlePart: json['middlePart'] as String? ?? '',
      rightPart: json['rightPart'] as String? ?? '',
      fullWord: json['fullWord'] as String? ?? '',
    );

Map<String, dynamic> _$$_CurrentWordModelToJson(_$_CurrentWordModel instance) =>
    <String, dynamic>{
      'leftPart': instance.leftPart,
      'middlePart': instance.middlePart,
      'rightPart': instance.rightPart,
      'fullWord': instance.fullWord,
    };

_$_FuelModel _$$_FuelModelFromJson(Map<String, dynamic> json) => _$_FuelModel(
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FuelModelToJson(_$_FuelModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_FuelStorageModel _$$_FuelStorageModelFromJson(Map<String, dynamic> json) =>
    _$_FuelStorageModel(
      value: (json['value'] as num?)?.toDouble() ?? 100,
    );

Map<String, dynamic> _$$_FuelStorageModelToJson(_$_FuelStorageModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_GameModel _$$_GameModelFromJson(Map<String, dynamic> json) => _$_GameModel(
      id: json['id'] as String,
      templateLevels: (json['templateLevels'] as List<dynamic>)
          .map((e) => TemplateLevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentLevelId: json['currentLevelId'] as String,
      levels: (json['levels'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, LevelModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      dateTime: json['dateTime'] == null
          ? const WorldDateTimeModel()
          : WorldDateTimeModel.fromJson(
              json['dateTime'] as Map<String, dynamic>),
      lastDateTime: json['lastDateTime'] == null
          ? const WorldDateTimeModel()
          : WorldDateTimeModel.fromJson(
              json['lastDateTime'] as Map<String, dynamic>),
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
    );

Map<String, dynamic> _$$_GameModelToJson(_$_GameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'templateLevels': instance.templateLevels.map((e) => e.toJson()).toList(),
      'currentLevelId': instance.currentLevelId,
      'levels': instance.levels.map((k, e) => MapEntry(k, e.toJson())),
      'dateTime': instance.dateTime.toJson(),
      'lastDateTime': instance.lastDateTime.toJson(),
      'playersCollection':
          instance.playersCollection.map((e) => e.toJson()).toList(),
      'playersCharacters':
          instance.playersCharacters.map((e) => e.toJson()).toList(),
    };

_$_LevelCharactersModel _$$_LevelCharactersModelFromJson(
        Map<String, dynamic> json) =>
    _$_LevelCharactersModel(
      playerCharacter: PlayerCharacterModel.fromJson(
          json['playerCharacter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LevelCharactersModelToJson(
        _$_LevelCharactersModel instance) =>
    <String, dynamic>{
      'playerCharacter': instance.playerCharacter.toJson(),
    };

_$_LevelModel _$$_LevelModelFromJson(Map<String, dynamic> json) =>
    _$_LevelModel(
      id: json['id'] as String,
      players:
          LevelPlayersModel.fromJson(json['players'] as Map<String, dynamic>),
      characters: LevelCharactersModel.fromJson(
          json['characters'] as Map<String, dynamic>),
      currentWord: json['currentWord'] == null
          ? const CurrentWordModel()
          : CurrentWordModel.fromJson(
              json['currentWord'] as Map<String, dynamic>),
      words: (json['words'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      latestWord: json['latestWord'] as String? ?? '',
      fuelStorage: json['fuelStorage'] == null
          ? const FuelStorageModel()
          : FuelStorageModel.fromJson(
              json['fuelStorage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LevelModelToJson(_$_LevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'players': instance.players.toJson(),
      'characters': instance.characters.toJson(),
      'currentWord': instance.currentWord.toJson(),
      'words': instance.words,
      'latestWord': instance.latestWord,
      'fuelStorage': instance.fuelStorage.toJson(),
    };

_$_TemplateLevelModel _$$_TemplateLevelModelFromJson(
        Map<String, dynamic> json) =>
    _$_TemplateLevelModel(
      id: json['id'] as String,
      fuelStorage: json['fuelStorage'] == null
          ? const FuelStorageModel()
          : FuelStorageModel.fromJson(
              json['fuelStorage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TemplateLevelModelToJson(
        _$_TemplateLevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fuelStorage': instance.fuelStorage.toJson(),
    };

_$_LevelPlayersModel _$$_LevelPlayersModelFromJson(Map<String, dynamic> json) =>
    _$_LevelPlayersModel(
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPlayerId: json['currentPlayerId'] as String,
    );

Map<String, dynamic> _$$_LevelPlayersModelToJson(
        _$_LevelPlayersModel instance) =>
    <String, dynamic>{
      'players': instance.players.map((e) => e.toJson()).toList(),
      'currentPlayerId': instance.currentPlayerId,
    };

_$_PlayerCharacterModel _$$_PlayerCharacterModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerCharacterModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_PlayerCharacterModelToJson(
        _$_PlayerCharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

_$_PlayerProfileModel _$$_PlayerProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerProfileModel(
      id: json['id'] as String,
      colorValue: json['colorValue'] as int,
      name: json['name'] as String,
      playedGames: (json['playedGames'] as List<dynamic>)
          .map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$_PlayerProfileModelToJson(
        _$_PlayerProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'colorValue': instance.colorValue,
      'name': instance.name,
      'playedGames': instance.playedGames.toList(),
    };

_$_ScoreModel _$$_ScoreModelFromJson(Map<String, dynamic> json) =>
    _$_ScoreModel(
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ScoreModelToJson(_$_ScoreModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_WorldDateTime _$$_WorldDateTimeFromJson(Map<String, dynamic> json) =>
    _$_WorldDateTime(
      second: json['second'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WorldDateTimeToJson(_$_WorldDateTime instance) =>
    <String, dynamic>{
      'second': instance.second,
    };
