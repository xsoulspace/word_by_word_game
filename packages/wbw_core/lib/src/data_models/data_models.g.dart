// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsModelImpl _$$AppSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsModelImpl(
      locale: localeFromString(json['locale'] as String?),
      brightnessMode: $enumDecodeNullable(
              _$BrightnessModeEnumMap, json['brightnessMode']) ??
          BrightnessMode.system,
    );

Map<String, dynamic> _$$AppSettingsModelImplToJson(
        _$AppSettingsModelImpl instance) =>
    <String, dynamic>{
      'locale': localeToString(instance.locale),
      'brightnessMode': _$BrightnessModeEnumMap[instance.brightnessMode]!,
    };

const _$BrightnessModeEnumMap = {
  BrightnessMode.system: 'system',
  BrightnessMode.light: 'light',
  BrightnessMode.dark: 'dark',
};

_$CurrentWordModelImpl _$$CurrentWordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWordModelImpl(
      inactiveIndexes: (json['inactiveIndexes'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      fullWord: json['fullWord'] as String? ?? '',
    );

Map<String, dynamic> _$$CurrentWordModelImplToJson(
        _$CurrentWordModelImpl instance) =>
    <String, dynamic>{
      'inactiveIndexes': instance.inactiveIndexes,
      'fullWord': instance.fullWord,
    };

_$GameModelImpl _$$GameModelImplFromJson(Map<String, dynamic> json) =>
    _$GameModelImpl(
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

Map<String, dynamic> _$$GameModelImplToJson(_$GameModelImpl instance) =>
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
  GameVersion.$4: r'$4',
  GameVersion.$5: r'$5',
};

_$LevelCharactersModelImpl _$$LevelCharactersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LevelCharactersModelImpl(
      playerCharacter: PlayerCharacterModel.fromJson(
          json['playerCharacter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LevelCharactersModelImplToJson(
        _$LevelCharactersModelImpl instance) =>
    <String, dynamic>{
      'playerCharacter': instance.playerCharacter.toJson(),
    };

_$LevelModelImpl _$$LevelModelImplFromJson(Map<String, dynamic> json) =>
    _$LevelModelImpl(
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
      featuresSettings: json['featuresSettings'] == null
          ? LevelFeaturesSettingsModel.empty
          : LevelFeaturesSettingsModel.fromJson(
              json['featuresSettings'] as Map<String, dynamic>),
      wordsLanguage:
          $enumDecodeNullable(_$LanguagesEnumMap, json['wordsLanguage']) ??
              Languages.en,
      playerStartPoint: $enumDecodeNullable(
              _$PlayerStartPointTypeEnumMap, json['playerStartPoint']) ??
          PlayerStartPointType.fromSpawnPoint,
      canvasObjects: json['canvasObjects'] == null
          ? const {}
          : CanvasDataModel.objectsFromJson(
              json['canvasObjects'] as Map<String, dynamic>),
      canvasLayers: (json['canvasLayers'] as List<dynamic>?)
              ?.map((e) => LayerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LevelModelImplToJson(_$LevelModelImpl instance) =>
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
      'featuresSettings': instance.featuresSettings.toJson(),
      'wordsLanguage': _$LanguagesEnumMap[instance.wordsLanguage]!,
      'playerStartPoint':
          _$PlayerStartPointTypeEnumMap[instance.playerStartPoint]!,
      'canvasObjects': CanvasDataModel.objectsToJson(instance.canvasObjects),
      'canvasLayers': instance.canvasLayers.map((e) => e.toJson()).toList(),
    };

const _$TilesetTypeEnumMap = {
  TilesetType.colourful: 'colourful',
  TilesetType.whiteBlack: 'white_black',
  TilesetType.evening: 'evening',
};

const _$GamePhaseTypeEnumMap = {
  GamePhaseType.entryWord: 'entryWord',
  GamePhaseType.selectAction: 'selectAction',
};

const _$EnergyMultiplierTypeEnumMap = {
  EnergyMultiplierType.m1: 'm1',
  EnergyMultiplierType.m2: 'm2',
  EnergyMultiplierType.m3: 'm3',
};

const _$LanguagesEnumMap = {
  Languages.ru: 'ru',
  Languages.en: 'en',
  Languages.it: 'it',
};

const _$PlayerStartPointTypeEnumMap = {
  PlayerStartPointType.fromSamePlace: 'fromSamePlace',
  PlayerStartPointType.fromSavePoint: 'fromSavePoint',
  PlayerStartPointType.fromSpawnPoint: 'fromSpawnPoint',
};

_$LevelFeaturesSettingsModelImpl _$$LevelFeaturesSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LevelFeaturesSettingsModelImpl(
      isTechnologiesEnabled: json['isTechnologiesEnabled'] as bool? ?? false,
      isWindDirectionChangeEnabled:
          json['isWindDirectionChangeEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$LevelFeaturesSettingsModelImplToJson(
        _$LevelFeaturesSettingsModelImpl instance) =>
    <String, dynamic>{
      'isTechnologiesEnabled': instance.isTechnologiesEnabled,
      'isWindDirectionChangeEnabled': instance.isWindDirectionChangeEnabled,
    };

_$LevelPlayersModelImpl _$$LevelPlayersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LevelPlayersModelImpl(
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPlayerId: json['currentPlayerId'] as String,
    );

Map<String, dynamic> _$$LevelPlayersModelImplToJson(
        _$LevelPlayersModelImpl instance) =>
    <String, dynamic>{
      'players': instance.players.map((e) => e.toJson()).toList(),
      'currentPlayerId': instance.currentPlayerId,
    };

_$PlayerCharacterModelImpl _$$PlayerCharacterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayerCharacterModelImpl(
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

Map<String, dynamic> _$$PlayerCharacterModelImplToJson(
        _$PlayerCharacterModelImpl instance) =>
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

_$SerializedVector2Impl _$$SerializedVector2ImplFromJson(
        Map<String, dynamic> json) =>
    _$SerializedVector2Impl(
      x: (json['x'] as num?)?.toDouble() ?? 0,
      y: (json['y'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$SerializedVector2ImplToJson(
        _$SerializedVector2Impl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$PlayerProfileModelImpl _$$PlayerProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayerProfileModelImpl(
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

Map<String, dynamic> _$$PlayerProfileModelImplToJson(
        _$PlayerProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'colorValue': instance.colorValue,
      'name': instance.name,
      'levelsHighscores':
          PlayerProfileModel._highscoreToJson(instance.levelsHighscores),
      'highscore': instance.highscore.toJson(),
    };

_$PlayerHighscoreModelImpl _$$PlayerHighscoreModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayerHighscoreModelImpl(
      maxWordsCount: json['maxWordsCount'] as int? ?? 0,
      maxLettersCount: json['maxLettersCount'] as int? ?? 0,
      totalWordsCount: json['totalWordsCount'] as int? ?? 0,
      totalLettersCount: json['totalLettersCount'] as int? ?? 0,
      score: json['score'] == null
          ? ScoreModel.zero
          : ScoreModel.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlayerHighscoreModelImplToJson(
        _$PlayerHighscoreModelImpl instance) =>
    <String, dynamic>{
      'maxWordsCount': instance.maxWordsCount,
      'maxLettersCount': instance.maxLettersCount,
      'totalWordsCount': instance.totalWordsCount,
      'totalLettersCount': instance.totalLettersCount,
      'score': instance.score.toJson(),
    };

_$PlayerLevelHighscoreModelImpl _$$PlayerLevelHighscoreModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayerLevelHighscoreModelImpl(
      levelId: CanvasDataModelId.fromJson(json['levelId'] as String),
      maxDistance: (json['maxDistance'] as num?)?.toDouble() ?? 0,
      totalDistance: (json['totalDistance'] as num?)?.toDouble() ?? 0,
      landingsCount: (json['landingsCount'] as num?)?.toDouble() ?? 0,
      flightTime: (json['flightTime'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$PlayerLevelHighscoreModelImplToJson(
        _$PlayerLevelHighscoreModelImpl instance) =>
    <String, dynamic>{
      'levelId': instance.levelId.toJson(),
      'maxDistance': instance.maxDistance,
      'totalDistance': instance.totalDistance,
      'landingsCount': instance.landingsCount,
      'flightTime': instance.flightTime,
    };

_$ScoreModelImpl _$$ScoreModelImplFromJson(Map<String, dynamic> json) =>
    _$ScoreModelImpl(
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$ScoreModelImplToJson(_$ScoreModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$TechnologyTreeProgressModelImpl _$$TechnologyTreeProgressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TechnologyTreeProgressModelImpl(
      technologies: json['technologies'] == null
          ? const {}
          : TechnologyTreeProgressModel._technologiesFromJson(
              json['technologies'] as Map<String, dynamic>),
      researchingTechnologyId: json['researchingTechnologyId'] == null
          ? null
          : TechnologyModelId.fromJson(json['researchingTechnologyId']),
    );

Map<String, dynamic> _$$TechnologyTreeProgressModelImplToJson(
        _$TechnologyTreeProgressModelImpl instance) =>
    <String, dynamic>{
      'technologies': TechnologyTreeProgressModel._technologiesToJson(
          instance.technologies),
      'researchingTechnologyId': instance.researchingTechnologyId?.toJson(),
    };

_$TechnologyProgressModelImpl _$$TechnologyProgressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TechnologyProgressModelImpl(
      id: TechnologyModelId.fromJson(json['id']),
      unlockCondition: TechnologyUnlockConditionModel.fromJson(
          json['unlockCondition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TechnologyProgressModelImplToJson(
        _$TechnologyProgressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'unlockCondition': instance.unlockCondition.toJson(),
    };

_$TechnologyModelImpl _$$TechnologyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TechnologyModelImpl(
      id: TechnologyModelId.fromJson(json['id']),
      title: LocalizedMap.fromJson(json['title'] as Map<String, dynamic>),
      unlockCondition: TechnologyUnlockConditionModel.fromJson(
          json['unlockCondition'] as Map<String, dynamic>),
      index: json['index'] as int? ?? 0,
      parentTechnologyId: json['parentTechnologyId'] == null
          ? null
          : TechnologyModelId.fromJson(json['parentTechnologyId']),
    );

Map<String, dynamic> _$$TechnologyModelImplToJson(
        _$TechnologyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title.toJson(),
      'unlockCondition': instance.unlockCondition.toJson(),
      'index': instance.index,
      'parentTechnologyId': instance.parentTechnologyId?.toJson(),
    };

_$TechnologyUnlockConditionModelImpl
    _$$TechnologyUnlockConditionModelImplFromJson(Map<String, dynamic> json) =>
        _$TechnologyUnlockConditionModelImpl(
          languageWords: (json['languageWords'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                $enumDecode(_$LanguagesEnumMap, k),
                (e as List<dynamic>)
                    .map((e) =>
                        UsefulWordModel.fromJson(e as Map<String, dynamic>))
                    .toList()),
          ),
          wordsUnlockThreshold: json['wordsUnlockThreshold'] as int? ?? 0,
          investedResearchPoints:
              (json['investedResearchPoints'] as num?)?.toDouble() ?? 0.0,
        );

Map<String, dynamic> _$$TechnologyUnlockConditionModelImplToJson(
        _$TechnologyUnlockConditionModelImpl instance) =>
    <String, dynamic>{
      'languageWords': instance.languageWords.map((k, e) =>
          MapEntry(_$LanguagesEnumMap[k]!, e.map((e) => e.toJson()).toList())),
      'wordsUnlockThreshold': instance.wordsUnlockThreshold,
      'investedResearchPoints': instance.investedResearchPoints,
    };

_$UsefulWordModelImpl _$$UsefulWordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UsefulWordModelImpl(
      word: json['word'] as String,
      isUsed: json['isUsed'] as bool? ?? false,
    );

Map<String, dynamic> _$$UsefulWordModelImplToJson(
        _$UsefulWordModelImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'isUsed': instance.isUsed,
    };

_$TutorialEventModelImpl _$$TutorialEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialEventModelImpl(
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

Map<String, dynamic> _$$TutorialEventModelImplToJson(
        _$TutorialEventModelImpl instance) =>
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

_$TutorialGameEffectModelImpl _$$TutorialGameEffectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialGameEffectModelImpl(
      name: $enumDecode(_$TutorialGameEffectNameEnumMap, json['name']),
    );

Map<String, dynamic> _$$TutorialGameEffectModelImplToJson(
        _$TutorialGameEffectModelImpl instance) =>
    <String, dynamic>{
      'name': _$TutorialGameEffectNameEnumMap[instance.name]!,
    };

const _$TutorialGameEffectNameEnumMap = {
  TutorialGameEffectName.pauseGame: 'pauseGame',
  TutorialGameEffectName.resumeGame: 'resumeGame',
  TutorialGameEffectName.requestWordFieldFocus: 'requestWordFieldFocus',
  TutorialGameEffectName.completeCurrentTutorial: 'completeCurrentTutorial',
};

_$TutorialUiActionEventModelImpl _$$TutorialUiActionEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialUiActionEventModelImpl(
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

Map<String, dynamic> _$$TutorialUiActionEventModelImplToJson(
        _$TutorialUiActionEventModelImpl instance) =>
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

_$TutorialEventsCollectionModelImpl
    _$$TutorialEventsCollectionModelImplFromJson(Map<String, dynamic> json) =>
        _$TutorialEventsCollectionModelImpl(
          events: (json['events'] as List<dynamic>)
              .map(
                  (e) => TutorialEventModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          name: $enumDecode(_$TutorialCollectionsNameEnumMap, json['name']),
          currentIndex: json['currentIndex'] as int,
        );

Map<String, dynamic> _$$TutorialEventsCollectionModelImplToJson(
        _$TutorialEventsCollectionModelImpl instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      'name': _$TutorialCollectionsNameEnumMap[instance.name]!,
      'currentIndex': instance.currentIndex,
    };

const _$TutorialCollectionsNameEnumMap = {
  TutorialCollectionsName.levelIntroduction: 'levelIntroduction',
  TutorialCollectionsName.archive: 'archive',
};

_$TutorialCollectionsProgressModelImpl
    _$$TutorialCollectionsProgressModelImplFromJson(
            Map<String, dynamic> json) =>
        _$TutorialCollectionsProgressModelImpl(
          indexes: (json['indexes'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                $enumDecode(_$TutorialCollectionsNameEnumMap, k), e as int),
          ),
        );

Map<String, dynamic> _$$TutorialCollectionsProgressModelImplToJson(
        _$TutorialCollectionsProgressModelImpl instance) =>
    <String, dynamic>{
      'indexes': instance.indexes
          .map((k, e) => MapEntry(_$TutorialCollectionsNameEnumMap[k]!, e)),
    };

_$TutorialCollectionsDataModelImpl _$$TutorialCollectionsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialCollectionsDataModelImpl(
      events: (json['events'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$TutorialCollectionsNameEnumMap, k),
            (e as List<dynamic>)
                .map((e) =>
                    TutorialEventModel.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$TutorialCollectionsDataModelImplToJson(
        _$TutorialCollectionsDataModelImpl instance) =>
    <String, dynamic>{
      'events': instance.events
          .map((k, e) => MapEntry(_$TutorialCollectionsNameEnumMap[k]!, e)),
    };

_$WorldDateTimeImpl _$$WorldDateTimeImplFromJson(Map<String, dynamic> json) =>
    _$WorldDateTimeImpl(
      second: json['second'] as int? ?? 0,
    );

Map<String, dynamic> _$$WorldDateTimeImplToJson(_$WorldDateTimeImpl instance) =>
    <String, dynamic>{
      'second': instance.second,
    };
