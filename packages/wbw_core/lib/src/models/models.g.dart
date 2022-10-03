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
      currentLevel: json['currentLevel'] == null
          ? null
          : LevelModel.fromJson(json['currentLevel'] as Map<String, dynamic>),
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
      'currentLevel': instance.currentLevel?.toJson(),
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
      stringName: json['stringName'] as String,
      players:
          LevelPlayersModel.fromJson(json['players'] as Map<String, dynamic>),
      characters: LevelCharactersModel.fromJson(
          json['characters'] as Map<String, dynamic>),
      resources:
          ResourcesModel.fromJson(json['resources'] as Map<String, dynamic>),
      currentWord: json['currentWord'] == null
          ? const CurrentWordModel()
          : CurrentWordModel.fromJson(
              json['currentWord'] as Map<String, dynamic>),
      words: (json['words'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      latestWord: json['latestWord'] as String? ?? '',
    );

Map<String, dynamic> _$$_LevelModelToJson(_$_LevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stringName': instance.stringName,
      'players': instance.players.toJson(),
      'characters': instance.characters.toJson(),
      'resources': instance.resources.toJson(),
      'currentWord': instance.currentWord.toJson(),
      'words': instance.words,
      'latestWord': instance.latestWord,
    };

_$_TemplateLevelModel _$$_TemplateLevelModelFromJson(
        Map<String, dynamic> json) =>
    _$_TemplateLevelModel(
      id: json['id'] as String,
      stringName: json['stringName'] as String,
      resources:
          ResourcesModel.fromJson(json['resources'] as Map<String, dynamic>),
      fuelStorage: json['fuelStorage'] == null
          ? const FuelStorageModel()
          : FuelStorageModel.fromJson(
              json['fuelStorage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TemplateLevelModelToJson(
        _$_TemplateLevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stringName': instance.stringName,
      'resources': instance.resources.toJson(),
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
      color: json['color'] as int,
      asset:
          CharacterAssetModel.fromJson(json['asset'] as Map<String, dynamic>),
      position: json['position'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['position'] as Map<String, dynamic>),
      fuel: json['fuel'] == null
          ? const FuelStorageModel(value: 150)
          : FuelStorageModel.fromJson(json['fuel'] as Map<String, dynamic>),
      fuelNormalPower: (json['fuelNormalPower'] as num?)?.toDouble() ?? 50.5,
      requiredLiftForce: (json['requiredLiftForce'] as num?)?.toDouble() ?? 0.5,
    );

Map<String, dynamic> _$$_PlayerCharacterModelToJson(
        _$_PlayerCharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'color': instance.color,
      'asset': instance.asset.toJson(),
      'position': instance.position.toJson(),
      'fuel': instance.fuel.toJson(),
      'fuelNormalPower': instance.fuelNormalPower,
      'requiredLiftForce': instance.requiredLiftForce,
    };

_$_CharacterAssetModel _$$_CharacterAssetModelFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterAssetModel(
      srcPosition: SerializedVector2.fromJson(
          json['srcPosition'] as Map<String, dynamic>),
      srcSizeX: json['srcSizeX'] as int,
      srcSizeY: json['srcSizeY'] as int,
    );

Map<String, dynamic> _$$_CharacterAssetModelToJson(
        _$_CharacterAssetModel instance) =>
    <String, dynamic>{
      'srcPosition': instance.srcPosition.toJson(),
      'srcSizeX': instance.srcSizeX,
      'srcSizeY': instance.srcSizeY,
    };

_$_SerializedVector2 _$$_SerializedVector2FromJson(Map<String, dynamic> json) =>
    _$_SerializedVector2(
      x: (json['x'] as num?)?.toDouble() ?? 0,
      y: (json['y'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_SerializedVector2ToJson(
        _$_SerializedVector2 instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$_PlayerProfileModel _$$_PlayerProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerProfileModel(
      id: json['id'] as String,
      colorValue: json['colorValue'] as int,
      name: json['name'] as String,
      levelsHighscores: (json['levelsHighscores'] as Map<String, dynamic>?)
              ?.map(
            (k, e) => MapEntry(k,
                PlayerLevelHighscoreModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      highscore: json['highscore'] == null
          ? PlayerHighscoreModel.empty
          : PlayerHighscoreModel.fromJson(
              json['highscore'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlayerProfileModelToJson(
        _$_PlayerProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'colorValue': instance.colorValue,
      'name': instance.name,
      'levelsHighscores':
          instance.levelsHighscores.map((k, e) => MapEntry(k, e.toJson())),
      'highscore': instance.highscore.toJson(),
    };

_$_PlayerHighscoreModel _$$_PlayerHighscoreModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerHighscoreModel(
      maxWordsCount: json['maxWordsCount'] as int? ?? 0,
      maxLettersCount: json['maxLettersCount'] as int? ?? 0,
      totalWordsCount: json['totalWordsCount'] as int? ?? 0,
      totalLettersCount: json['totalLettersCount'] as int? ?? 0,
      score: json['score'] == null
          ? ScoreModel.zero
          : ScoreModel.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlayerHighscoreModelToJson(
        _$_PlayerHighscoreModel instance) =>
    <String, dynamic>{
      'maxWordsCount': instance.maxWordsCount,
      'maxLettersCount': instance.maxLettersCount,
      'totalWordsCount': instance.totalWordsCount,
      'totalLettersCount': instance.totalLettersCount,
      'score': instance.score.toJson(),
    };

_$_PlayerLevelHighscoreModel _$$_PlayerLevelHighscoreModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerLevelHighscoreModel(
      levelId: json['levelId'] as String,
      maxDistance: (json['maxDistance'] as num?)?.toDouble() ?? 0,
      totalDistance: (json['totalDistance'] as num?)?.toDouble() ?? 0,
      landingsCount: (json['landingsCount'] as num?)?.toDouble() ?? 0,
      flightTime: (json['flightTime'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PlayerLevelHighscoreModelToJson(
        _$_PlayerLevelHighscoreModel instance) =>
    <String, dynamic>{
      'levelId': instance.levelId,
      'maxDistance': instance.maxDistance,
      'totalDistance': instance.totalDistance,
      'landingsCount': instance.landingsCount,
      'flightTime': instance.flightTime,
    };

_$_ResourcesModel _$$_ResourcesModelFromJson(Map<String, dynamic> json) =>
    _$_ResourcesModel(
      tileMapName: json['tileMapName'] as String,
    );

Map<String, dynamic> _$$_ResourcesModelToJson(_$_ResourcesModel instance) =>
    <String, dynamic>{
      'tileMapName': instance.tileMapName,
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
