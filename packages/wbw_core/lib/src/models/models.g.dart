// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettingsModel _$$_AppSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_AppSettingsModel(
      locale: localeFromString(json['locale'] as String?),
      brightnessMode: $enumDecodeNullable(
              _$BrightnessModeEnumMap, json['brightnessMode']) ??
          BrightnessMode.system,
    );

Map<String, dynamic> _$$_AppSettingsModelToJson(_$_AppSettingsModel instance) =>
    <String, dynamic>{
      'locale': localeToString(instance.locale),
      'brightnessMode': _$BrightnessModeEnumMap[instance.brightnessMode]!,
    };

const _$BrightnessModeEnumMap = {
  BrightnessMode.system: 'system',
  BrightnessMode.light: 'light',
  BrightnessMode.dark: 'dark',
};

_$_CurrentWordModel _$$_CurrentWordModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentWordModel(
      inactiveIndexes: (json['inactiveIndexes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      fullWord: json['fullWord'] as String? ?? '',
    );

Map<String, dynamic> _$$_CurrentWordModelToJson(_$_CurrentWordModel instance) =>
    <String, dynamic>{
      'inactiveIndexes': instance.inactiveIndexes,
      'fullWord': instance.fullWord,
    };

_$_GameModel _$$_GameModelFromJson(Map<String, dynamic> json) => _$_GameModel(
      id: json['id'] as String,
      currentLevelId:
          CanvasDataModelId.fromJson(json['currentLevelId'] as String),
      currentLevel: json['currentLevel'] == null
          ? null
          : LevelModel.fromJson(json['currentLevel'] as Map<String, dynamic>),
      version: $enumDecodeNullable(_$GameVersionEnumMap, json['version']) ??
          kLatestGameVersion,
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
      savedLevels: json['savedLevels'] == null
          ? const {}
          : GameSaveModel._savedLevelsFromJson(
              json['savedLevels'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameModelToJson(_$_GameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentLevelId': instance.currentLevelId.toJson(),
      'currentLevel': instance.currentLevel?.toJson(),
      'version': _$GameVersionEnumMap[instance.version]!,
      'playersCollection':
          instance.playersCollection.map((e) => e.toJson()).toList(),
      'playersCharacters':
          instance.playersCharacters.map((e) => e.toJson()).toList(),
      'tutorialProgress': instance.tutorialProgress.toJson(),
      'savedLevels': GameSaveModel._savedLevelsToJson(instance.savedLevels),
    };

const _$GameVersionEnumMap = {
  GameVersion.$1: r'$1',
  GameVersion.$2: r'$2',
  GameVersion.$3: r'$3',
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
      players:
          LevelPlayersModel.fromJson(json['players'] as Map<String, dynamic>),
      characters: LevelCharactersModel.fromJson(
          json['characters'] as Map<String, dynamic>),
      tilesetType:
          $enumDecodeNullable(_$TilesetTypeEnumMap, json['tilesetType']) ??
              TilesetType.colourful,
      weathers: (json['weathers'] as List<dynamic>?)
              ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      wind: json['wind'] == null
          ? WindModel.zero
          : WindModel.fromJson(json['wind'] as Map<String, dynamic>),
      canvasDataId: json['canvasDataId'] == null
          ? CanvasDataModelId.empty
          : CanvasDataModelId.fromJson(json['canvasDataId'] as String),
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
      dateTime: json['dateTime'] == null
          ? WorldDateTimeModel.zero
          : WorldDateTimeModel.fromJson(
              json['dateTime'] as Map<String, dynamic>),
      lastDateTime: json['lastDateTime'] == null
          ? WorldDateTimeModel.zero
          : WorldDateTimeModel.fromJson(
              json['lastDateTime'] as Map<String, dynamic>),
      technologyTreeProgress: json['technologyTreeProgress'] == null
          ? TechnologyTreeProgressModel.empty
          : TechnologyTreeProgressModel.fromJson(
              json['technologyTreeProgress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LevelModelToJson(_$_LevelModel instance) =>
    <String, dynamic>{
      'players': instance.players.toJson(),
      'characters': instance.characters.toJson(),
      'tilesetType': _$TilesetTypeEnumMap[instance.tilesetType]!,
      'weathers': instance.weathers.map((e) => e.toJson()).toList(),
      'wind': instance.wind.toJson(),
      'canvasDataId': instance.canvasDataId.toJson(),
      'currentWord': instance.currentWord.toJson(),
      'words': instance.words,
      'latestWord': instance.latestWord,
      'phaseType': _$GamePhaseTypeEnumMap[instance.phaseType]!,
      'actionMultiplier':
          _$EnergyMultiplierTypeEnumMap[instance.actionMultiplier]!,
      'dateTime': instance.dateTime.toJson(),
      'lastDateTime': instance.lastDateTime.toJson(),
      'technologyTreeProgress': instance.technologyTreeProgress.toJson(),
    };

const _$TilesetTypeEnumMap = {
  TilesetType.colourful: 'colourful',
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
      id: json['id'] == null ? Gid.empty : Gid.fromJson(json['id'] as String),
      gid:
          json['gid'] == null ? Gid.empty : Gid.fromJson(json['gid'] as String),
      description: json['description'] as String? ?? '',
      color: json['color'] as int? ?? 0,
      localizedName: json['localizedName'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJson(
              json['localizedName'] as Map<String, dynamic>),
      characterIcon: json['characterIcon'] as String? ?? '',
      distanceToOrigin: json['distanceToOrigin'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['distanceToOrigin'] as Map<String, dynamic>),
      balloonPowers: json['balloonPowers'] == null
          ? BalloonLiftPowersModel.initial
          : BalloonLiftPowersModel.fromJson(
              json['balloonPowers'] as Map<String, dynamic>),
      balloonParams: json['balloonParams'] == null
          ? BalloonLiftParamsModel.initial
          : BalloonLiftParamsModel.fromJson(
              json['balloonParams'] as Map<String, dynamic>),
      isAnchored: json['isAnchored'] as bool? ?? true,
    );

Map<String, dynamic> _$$_PlayerCharacterModelToJson(
        _$_PlayerCharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'gid': instance.gid.toJson(),
      'description': instance.description,
      'color': instance.color,
      'localizedName': instance.localizedName.toJson(),
      'characterIcon': instance.characterIcon,
      'distanceToOrigin': instance.distanceToOrigin.toJson(),
      'balloonPowers': instance.balloonPowers.toJson(),
      'balloonParams': instance.balloonParams.toJson(),
      'isAnchored': instance.isAnchored,
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

_$_TechnologyModelId _$$_TechnologyModelIdFromJson(Map<String, dynamic> json) =>
    _$_TechnologyModelId(
      value: $enumDecode(_$TechnologyTypeEnumMap, json['value']),
    );

Map<String, dynamic> _$$_TechnologyModelIdToJson(
        _$_TechnologyModelId instance) =>
    <String, dynamic>{
      'value': _$TechnologyTypeEnumMap[instance.value]!,
    };

const _$TechnologyTypeEnumMap = {
  TechnologyType.safeLanding: 'safeLanding',
  TechnologyType.emergencyLanding: 'emergencyLanding',
  TechnologyType.ascending: 'ascending',
  TechnologyType.descending: 'descending',
};

_$_TechnologyTreeModel _$$_TechnologyTreeModelFromJson(
        Map<String, dynamic> json) =>
    _$_TechnologyTreeModel(
      technologies: json['technologies'] == null
          ? const {}
          : TechnologyTreeModel._technologiesFromJson(
              json['technologies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TechnologyTreeModelToJson(
        _$_TechnologyTreeModel instance) =>
    <String, dynamic>{
      'technologies':
          TechnologyTreeModel._technologiesToJson(instance.technologies),
    };

_$_TechnologyTreeProgressModel _$$_TechnologyTreeProgressModelFromJson(
        Map<String, dynamic> json) =>
    _$_TechnologyTreeProgressModel(
      technologies: json['technologies'] == null
          ? const {}
          : TechnologyTreeProgressModel._technologiesFromJson(
              json['technologies'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TechnologyTreeProgressModelToJson(
        _$_TechnologyTreeProgressModel instance) =>
    <String, dynamic>{
      'technologies': TechnologyTreeProgressModel._technologiesToJson(
          instance.technologies),
    };

_$_TechnologyProgressModel _$$_TechnologyProgressModelFromJson(
        Map<String, dynamic> json) =>
    _$_TechnologyProgressModel(
      id: TechnologyModelId.fromJson(json['id'] as Map<String, dynamic>),
      unlockCondition: TechnologyUnlockConditionModel.fromJson(
          json['unlockCondition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TechnologyProgressModelToJson(
        _$_TechnologyProgressModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unlockCondition': instance.unlockCondition,
    };

_$_TechnologyModel _$$_TechnologyModelFromJson(Map<String, dynamic> json) =>
    _$_TechnologyModel(
      id: TechnologyModelId.fromJson(json['id'] as Map<String, dynamic>),
      title: LocalizedMap.fromJson(json['title'] as Map<String, dynamic>),
      unlockCondition: TechnologyUnlockConditionModel.fromJson(
          json['unlockCondition'] as Map<String, dynamic>),
      parentTechnologyId: json['parentTechnologyId'] == null
          ? null
          : TechnologyModelId.fromJson(
              json['parentTechnologyId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TechnologyModelToJson(_$_TechnologyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'unlockCondition': instance.unlockCondition,
      'parentTechnologyId': instance.parentTechnologyId,
    };

_$_TechnologyUnlockConditionModel _$$_TechnologyUnlockConditionModelFromJson(
        Map<String, dynamic> json) =>
    _$_TechnologyUnlockConditionModel(
      languageWords: (json['languageWords'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$LanguagesEnumMap, k),
            (e as List<dynamic>)
                .map((e) => UsefulWordModel.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$_TechnologyUnlockConditionModelToJson(
        _$_TechnologyUnlockConditionModel instance) =>
    <String, dynamic>{
      'languageWords': instance.languageWords
          .map((k, e) => MapEntry(_$LanguagesEnumMap[k]!, e)),
    };

const _$LanguagesEnumMap = {
  Languages.ru: 'ru',
  Languages.en: 'en',
  Languages.it: 'it',
};

_$_UsefulWordModel _$$_UsefulWordModelFromJson(Map<String, dynamic> json) =>
    _$_UsefulWordModel(
      word: json['word'] as String,
      isUsed: json['isUsed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UsefulWordModelToJson(_$_UsefulWordModel instance) =>
    <String, dynamic>{
      'word': instance.word,
      'isUsed': instance.isUsed,
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
  TutorialUiItem.wordField: 'wordField',
  TutorialUiItem.actionPhaseFrame: 'actionPhaseFrame',
  TutorialUiItem.yourNameLabel: 'yourNameLabel',
  TutorialUiItem.yourScoreLabel: 'yourScoreLabel',
  TutorialUiItem.gameFuelIndicator: 'gameFuelIndicator',
  TutorialUiItem.selectRefuelOption: 'selectRefuelOption',
  TutorialUiItem.currentWind: 'currentWind',
  TutorialUiItem.currentWeather: 'currentWeather',
  TutorialUiItem.baloonPower: 'baloonPower',
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
  TutorialGameEffectName.requestWordFieldFocus: 'requestWordFieldFocus',
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
