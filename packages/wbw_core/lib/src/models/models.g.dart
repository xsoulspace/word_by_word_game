// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsModel _$$_AppSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingsModel(
      locale: localeFromString(json['locale'] as String?),
    );

Map<String, dynamic> _$$_AppSettingsModelToJson(_$_AppSettingsModel instance) =>
    <String, dynamic>{
      'locale': localeToString(instance.locale),
    };

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
      value:
          (json['value'] as num?)?.toDouble() ?? FuelStorageModel.defaultValue,
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
      currentLevelId:
          CanvasDataModelId.fromJson(json['currentLevelId'] as String),
      currentLevel: json['currentLevel'] == null
          ? null
          : LevelModel.fromJson(json['currentLevel'] as Map<String, dynamic>),
      version: $enumDecodeNullable(_$GameVersionEnumMap, json['version']) ??
          kPreviousGameVersion,
      levels: json['levels'] == null
          ? const {}
          : GameModel._levelsFromJson(json['levels'] as Map<String, dynamic>),
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
      tutorialProgress: json['tutorialProgress'] == null
          ? TutorialCollectionsProgressModel.empty
          : TutorialCollectionsProgressModel.fromJson(
              json['tutorialProgress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameModelToJson(_$_GameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'templateLevels': instance.templateLevels.map((e) => e.toJson()).toList(),
      'currentLevelId': instance.currentLevelId.toJson(),
      'currentLevel': instance.currentLevel?.toJson(),
      'version': _$GameVersionEnumMap[instance.version]!,
      'levels': GameModel._levelsToJson(instance.levels),
      'dateTime': instance.dateTime.toJson(),
      'lastDateTime': instance.lastDateTime.toJson(),
      'playersCollection':
          instance.playersCollection.map((e) => e.toJson()).toList(),
      'playersCharacters':
          instance.playersCharacters.map((e) => e.toJson()).toList(),
      'tutorialProgress': instance.tutorialProgress.toJson(),
    };

const _$GameVersionEnumMap = {
  GameVersion.$1: r'$1',
  GameVersion.$2: r'$2',
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
      id: CanvasDataModelId.fromJson(json['id'] as String),
      players:
          LevelPlayersModel.fromJson(json['players'] as Map<String, dynamic>),
      characters: LevelCharactersModel.fromJson(
          json['characters'] as Map<String, dynamic>),
      canvasData: json['canvasData'] == null
          ? CanvasDataModel.empty
          : CanvasDataModel.fromJson(
              json['canvasData'] as Map<String, dynamic>),
      name: json['name'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJson(json['name'] as Map<String, dynamic>),
      currentWord: json['currentWord'] == null
          ? const CurrentWordModel()
          : CurrentWordModel.fromJson(
              json['currentWord'] as Map<String, dynamic>),
      words: (json['words'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      latestWord: json['latestWord'] as String? ?? '',
      phaseType:
          $enumDecodeNullable(_$GamePhaseTypeEnumMap, json['phaseType']) ??
              GamePhaseType.entryWord,
      actionMultiplier: $enumDecodeNullable(
              _$EnergyMultiplierTypeEnumMap, json['actionMultiplier']) ??
          EnergyMultiplierType.m1,
    );

Map<String, dynamic> _$$_LevelModelToJson(_$_LevelModel instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'players': instance.players.toJson(),
      'characters': instance.characters.toJson(),
      'canvasData': instance.canvasData.toJson(),
      'name': instance.name.toJson(),
      'currentWord': instance.currentWord.toJson(),
      'words': instance.words,
      'latestWord': instance.latestWord,
      'phaseType': _$GamePhaseTypeEnumMap[instance.phaseType]!,
      'actionMultiplier':
          _$EnergyMultiplierTypeEnumMap[instance.actionMultiplier]!,
    };

const _$GamePhaseTypeEnumMap = {
  GamePhaseType.entryWord: 'entryWord',
  GamePhaseType.selectFuel: 'selectFuel',
};

const _$EnergyMultiplierTypeEnumMap = {
  EnergyMultiplierType.m1: 'm1',
  EnergyMultiplierType.m2: 'm2',
  EnergyMultiplierType.m3: 'm3',
};

_$_TemplateLevelModel _$$_TemplateLevelModelFromJson(
        Map<String, dynamic> json) =>
    _$_TemplateLevelModel(
      canvasData: json['canvasData'] == null
          ? CanvasDataModel.empty
          : CanvasDataModel.fromJson(
              json['canvasData'] as Map<String, dynamic>),
      fuelStorage: json['fuelStorage'] == null
          ? const FuelStorageModel()
          : FuelStorageModel.fromJson(
              json['fuelStorage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TemplateLevelModelToJson(
        _$_TemplateLevelModel instance) =>
    <String, dynamic>{
      'canvasData': instance.canvasData.toJson(),
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

_$_LocalDictionaryModel _$$_LocalDictionaryModelFromJson(
        Map<String, dynamic> json) =>
    _$_LocalDictionaryModel(
      words:
          (json['words'] as List<dynamic>?)?.map((e) => e as String).toSet() ??
              const {},
    );

Map<String, dynamic> _$$_LocalDictionaryModelToJson(
        _$_LocalDictionaryModel instance) =>
    <String, dynamic>{
      'words': instance.words.toList(),
    };

_$_PlayerCharacterModel _$$_PlayerCharacterModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerCharacterModel(
      id: json['id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      color: json['color'] as int? ?? 0,
      asset: json['asset'] == null
          ? CharacterAssetModel.empty
          : CharacterAssetModel.fromJson(json['asset'] as Map<String, dynamic>),
      localizedName: json['localizedName'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJson(
              json['localizedName'] as Map<String, dynamic>),
      characterIcon: json['characterIcon'] as String? ?? '',
      position: json['position'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['position'] as Map<String, dynamic>),
      fuel: json['fuel'] == null
          ? const FuelStorageModel()
          : FuelStorageModel.fromJson(json['fuel'] as Map<String, dynamic>),
      fuelNormalPower: (json['fuelNormalPower'] as num?)?.toDouble() ?? 50.5,
      requiredLiftForce: (json['requiredLiftForce'] as num?)?.toDouble() ?? 0.5,
    );

Map<String, dynamic> _$$_PlayerCharacterModelToJson(
        _$_PlayerCharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'color': instance.color,
      'asset': instance.asset.toJson(),
      'localizedName': instance.localizedName.toJson(),
      'characterIcon': instance.characterIcon,
      'position': instance.position.toJson(),
      'fuel': instance.fuel.toJson(),
      'fuelNormalPower': instance.fuelNormalPower,
      'requiredLiftForce': instance.requiredLiftForce,
    };

_$_CharacterAssetModel _$$_CharacterAssetModelFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterAssetModel(
      srcPosition: json['srcPosition'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['srcPosition'] as Map<String, dynamic>),
      srcSizeX: json['srcSizeX'] as int? ?? 0,
      srcSizeY: json['srcSizeY'] as int? ?? 0,
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
      levelsHighscores: json['levelsHighscores'] == null
          ? const {}
          : PlayerProfileModel._highscoreFromJson(
              json['levelsHighscores'] as Map<String, dynamic>),
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
          PlayerProfileModel._highscoreToJson(instance.levelsHighscores),
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
      levelId: CanvasDataModelId.fromJson(json['levelId'] as String),
      maxDistance: (json['maxDistance'] as num?)?.toDouble() ?? 0,
      totalDistance: (json['totalDistance'] as num?)?.toDouble() ?? 0,
      landingsCount: (json['landingsCount'] as num?)?.toDouble() ?? 0,
      flightTime: (json['flightTime'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PlayerLevelHighscoreModelToJson(
        _$_PlayerLevelHighscoreModel instance) =>
    <String, dynamic>{
      'levelId': instance.levelId.toJson(),
      'maxDistance': instance.maxDistance,
      'totalDistance': instance.totalDistance,
      'landingsCount': instance.landingsCount,
      'flightTime': instance.flightTime,
    };

_$_ScoreModel _$$_ScoreModelFromJson(Map<String, dynamic> json) =>
    _$_ScoreModel(
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ScoreModelToJson(_$_ScoreModel instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_TutorialEventModel _$$_TutorialEventModelFromJson(
        Map<String, dynamic> json) =>
    _$_TutorialEventModel(
      localizedMap:
          LocalizedMap.fromJson(json['localizedMap'] as Map<String, dynamic>),
      completeActions: (json['completeActions'] as List<dynamic>)
          .map((e) =>
              TutorialUiActionEventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gamePreEffects: (json['gamePreEffects'] as List<dynamic>?)
              ?.map((e) =>
                  TutorialGameEffectModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gamePostEffects: (json['gamePostEffects'] as List<dynamic>?)
              ?.map((e) =>
                  TutorialGameEffectModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      anchorUiItem:
          $enumDecodeNullable(_$TutorialUiItemEnumMap, json['anchorUiItem']),
    );

Map<String, dynamic> _$$_TutorialEventModelToJson(
        _$_TutorialEventModel instance) =>
    <String, dynamic>{
      'localizedMap': instance.localizedMap.toJson(),
      'completeActions':
          instance.completeActions.map((e) => e.toJson()).toList(),
      'gamePreEffects': instance.gamePreEffects.map((e) => e.toJson()).toList(),
      'gamePostEffects':
          instance.gamePostEffects.map((e) => e.toJson()).toList(),
      'anchorUiItem': _$TutorialUiItemEnumMap[instance.anchorUiItem],
    };

const _$TutorialUiItemEnumMap = {
  TutorialUiItem.pauseIconButton: 'pauseIconButton',
  TutorialUiItem.addToDictionaryButton: 'addToDictionaryButton',
  TutorialUiItem.confirmWordButton: 'confirmWordButton',
  TutorialUiItem.removeLetterButton: 'removeLetterButton',
  TutorialUiItem.suggestWordButton: 'suggestWordButton',
  TutorialUiItem.enterWordLeft: 'enterWordLeft',
  TutorialUiItem.enterWordRight: 'enterWordRight',
  TutorialUiItem.actionPhaseFrame: 'actionPhaseFrame',
  TutorialUiItem.enterWordPhaseFrame: 'enterWordPhaseFrame',
  TutorialUiItem.applyAndEndTurnButton: 'applyAndEndTurnButton',
  TutorialUiItem.yourNameLabel: 'yourNameLabel',
  TutorialUiItem.yourScoreLabel: 'yourScoreLabel',
  TutorialUiItem.gameFuelIndicator: 'gameFuelIndicator',
  TutorialUiItem.selectRefuelOption: 'selectRefuelOption',
  TutorialUiItem.tutorialBoolDialog: 'tutorialBoolDialog',
  TutorialUiItem.tutorialOkDialog: 'tutorialOkDialog',
  TutorialUiItem.anchoredIdleDialog: 'anchoredIdleDialog',
  TutorialUiItem.anchoredOkDialog: 'anchoredOkDialog',
};

_$_TutorialGameEffectModel _$$_TutorialGameEffectModelFromJson(
        Map<String, dynamic> json) =>
    _$_TutorialGameEffectModel(
      name: $enumDecode(_$TutorialGameEffectNameEnumMap, json['name']),
    );

Map<String, dynamic> _$$_TutorialGameEffectModelToJson(
        _$_TutorialGameEffectModel instance) =>
    <String, dynamic>{
      'name': _$TutorialGameEffectNameEnumMap[instance.name]!,
    };

const _$TutorialGameEffectNameEnumMap = {
  TutorialGameEffectName.pauseGame: 'pauseGame',
  TutorialGameEffectName.resumeGame: 'resumeGame',
  TutorialGameEffectName.completeCurrentTutorial: 'completeCurrentTutorial',
};

_$_TutorialUiActionEventModel _$$_TutorialUiActionEventModelFromJson(
        Map<String, dynamic> json) =>
    _$_TutorialUiActionEventModel(
      action: $enumDecode(_$TutorialCompleteActionEnumMap, json['action']),
      uiItem: $enumDecodeNullable(_$TutorialUiItemEnumMap, json['uiItem']),
      isCompleted: json['isCompleted'] as bool? ?? false,
      boolConsquenses: (json['boolConsquenses'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$PrimitiveBoolEnumMap, k),
                (e as List<dynamic>)
                    .map((e) => TutorialGameEffectModel.fromJson(
                        e as Map<String, dynamic>))
                    .toList()),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_TutorialUiActionEventModelToJson(
        _$_TutorialUiActionEventModel instance) =>
    <String, dynamic>{
      'action': _$TutorialCompleteActionEnumMap[instance.action]!,
      'uiItem': _$TutorialUiItemEnumMap[instance.uiItem],
      'isCompleted': instance.isCompleted,
      'boolConsquenses': instance.boolConsquenses.map((k, e) => MapEntry(
          _$PrimitiveBoolEnumMap[k]!, e.map((e) => e.toJson()).toList())),
    };

const _$TutorialCompleteActionEnumMap = {
  TutorialCompleteAction.onClick: 'onClick',
  TutorialCompleteAction.onEdit: 'onEdit',
  TutorialCompleteAction.idle: 'idle',
  TutorialCompleteAction.onBoolOptionSelected: 'onBoolOptionSelected',
};

const _$PrimitiveBoolEnumMap = {
  PrimitiveBool.kTrue: 'kTrue',
  PrimitiveBool.kFalse: 'kFalse',
};

_$_TutorialEventsCollectionModel _$$_TutorialEventsCollectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_TutorialEventsCollectionModel(
      events: (json['events'] as List<dynamic>)
          .map((e) => TutorialEventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: $enumDecode(_$TutorialCollectionsNameEnumMap, json['name']),
      currentIndex: json['currentIndex'] as int,
    );

Map<String, dynamic> _$$_TutorialEventsCollectionModelToJson(
        _$_TutorialEventsCollectionModel instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      'name': _$TutorialCollectionsNameEnumMap[instance.name]!,
      'currentIndex': instance.currentIndex,
    };

const _$TutorialCollectionsNameEnumMap = {
  TutorialCollectionsName.levelIntroduction: 'levelIntroduction',
  TutorialCollectionsName.archive: 'archive',
};

_$_TutorialCollectionsProgressModel
    _$$_TutorialCollectionsProgressModelFromJson(Map<String, dynamic> json) =>
        _$_TutorialCollectionsProgressModel(
          indexes: (json['indexes'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                $enumDecode(_$TutorialCollectionsNameEnumMap, k), e as int),
          ),
        );

Map<String, dynamic> _$$_TutorialCollectionsProgressModelToJson(
        _$_TutorialCollectionsProgressModel instance) =>
    <String, dynamic>{
      'indexes': instance.indexes
          .map((k, e) => MapEntry(_$TutorialCollectionsNameEnumMap[k]!, e)),
    };

_$_TutorialCollectionsDataModel _$$_TutorialCollectionsDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_TutorialCollectionsDataModel(
      events: (json['events'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$TutorialCollectionsNameEnumMap, k),
            (e as List<dynamic>)
                .map((e) =>
                    TutorialEventModel.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_TutorialCollectionsDataModelToJson(
        _$_TutorialCollectionsDataModel instance) =>
    <String, dynamic>{
      'events': instance.events
          .map((k, e) => MapEntry(_$TutorialCollectionsNameEnumMap[k]!, e)),
    };

_$_WorldDateTime _$$_WorldDateTimeFromJson(Map<String, dynamic> json) =>
    _$_WorldDateTime(
      second: json['second'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WorldDateTimeToJson(_$_WorldDateTime instance) =>
    <String, dynamic>{
      'second': instance.second,
    };
