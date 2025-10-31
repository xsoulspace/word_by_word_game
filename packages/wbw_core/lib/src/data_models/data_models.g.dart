// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) =>
    _AppSettingsModel(
      locale: localeFromString(json['locale'] as String?),
      brightnessMode:
          $enumDecodeNullable(
            _$BrightnessModeEnumMap,
            json['brightnessMode'],
          ) ??
          BrightnessMode.system,
    );

Map<String, dynamic> _$AppSettingsModelToJson(_AppSettingsModel instance) =>
    <String, dynamic>{
      'locale': localeToString(instance.locale),
      'brightnessMode': _$BrightnessModeEnumMap[instance.brightnessMode]!,
    };

const _$BrightnessModeEnumMap = {
  BrightnessMode.system: 'system',
  BrightnessMode.light: 'light',
  BrightnessMode.dark: 'dark',
};

_CurrentWordModel _$CurrentWordModelFromJson(Map<String, dynamic> json) =>
    _CurrentWordModel(
      inactiveIndexes:
          (json['inactiveIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      fullWord: json['fullWord'] as String? ?? '',
    );

Map<String, dynamic> _$CurrentWordModelToJson(_CurrentWordModel instance) =>
    <String, dynamic>{
      'inactiveIndexes': instance.inactiveIndexes,
      'fullWord': instance.fullWord,
    };

_GameModel _$GameModelFromJson(Map<String, dynamic> json) => _GameModel(
  id: json['id'] as String,
  currentLevelId: CanvasDataModelId.fromJson(json['currentLevelId']),
  currentLevel: json['currentLevel'] == null
      ? null
      : LevelModel.fromJson(json['currentLevel'] as Map<String, dynamic>),
  version:
      $enumDecodeNullable(_$GameVersionEnumMap, json['version']) ??
      kLatestGameVersion,
  playersCollection:
      (json['playersCollection'] as List<dynamic>?)
          ?.map((e) => PlayerProfileModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  playersCharacters:
      (json['playersCharacters'] as List<dynamic>?)
          ?.map((e) => PlayerCharacterModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  tutorialProgress: json['tutorialProgress'] == null
      ? TutorialCollectionsProgressModel.empty
      : TutorialCollectionsProgressModel.fromJson(
          json['tutorialProgress'] as Map<String, dynamic>,
        ),
  savedLevels: json['savedLevels'] == null
      ? const {}
      : GameSaveModel._savedLevelsFromJson(
          json['savedLevels'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$GameModelToJson(_GameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentLevelId': instance.currentLevelId.toJson(),
      'currentLevel': instance.currentLevel?.toJson(),
      'version': _$GameVersionEnumMap[instance.version]!,
      'playersCollection': instance.playersCollection
          .map((e) => e.toJson())
          .toList(),
      'playersCharacters': instance.playersCharacters
          .map((e) => e.toJson())
          .toList(),
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

_LevelCharactersModel _$LevelCharactersModelFromJson(
  Map<String, dynamic> json,
) => _LevelCharactersModel(
  playerCharacter: PlayerCharacterModel.fromJson(
    json['playerCharacter'] as Map<String, dynamic>,
  ),
  focusedObjectGid: json['focusedObjectGid'] == null
      ? Gid.empty
      : Gid.fromJson(json['focusedObjectGid'] as String),
);

Map<String, dynamic> _$LevelCharactersModelToJson(
  _LevelCharactersModel instance,
) => <String, dynamic>{
  'playerCharacter': instance.playerCharacter.toJson(),
  'focusedObjectGid': instance.focusedObjectGid.toJson(),
};

_LevelModel _$LevelModelFromJson(Map<String, dynamic> json) => _LevelModel(
  players: LevelPlayersModel.fromJson(json['players'] as Map<String, dynamic>),
  characters: LevelCharactersModel.fromJson(
    json['characters'] as Map<String, dynamic>,
  ),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  tilesetType:
      $enumDecodeNullable(_$TilesetTypeEnumMap, json['tilesetType']) ??
      TilesetType.whiteBlack,
  weathers:
      (json['weathers'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  wind: json['wind'] == null
      ? WindModel.zero
      : WindModel.fromJson(json['wind'] as Map<String, dynamic>),
  canvasDataId: json['canvasDataId'] == null
      ? CanvasDataModelId.empty
      : CanvasDataModelId.fromJson(json['canvasDataId']),
  currentWord: json['currentWord'] == null
      ? const CurrentWordModel()
      : CurrentWordModel.fromJson(json['currentWord'] as Map<String, dynamic>),
  words:
      (json['words'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const {},
  latestWord: json['latestWord'] as String? ?? '',
  phaseType:
      $enumDecodeNullable(_$GamePhaseTypeEnumMap, json['phaseType']) ??
      GamePhaseType.entryWord,
  actionMultiplier:
      $enumDecodeNullable(
        _$EnergyMultiplierTypeEnumMap,
        json['actionMultiplier'],
      ) ??
      EnergyMultiplierType.m1,
  dateTime: json['dateTime'] == null
      ? WorldDateTimeModel.zero
      : WorldDateTimeModel.fromJson(json['dateTime'] as Map<String, dynamic>),
  lastDateTime: json['lastDateTime'] == null
      ? WorldDateTimeModel.zero
      : WorldDateTimeModel.fromJson(
          json['lastDateTime'] as Map<String, dynamic>,
        ),
  technologyTreeProgress: json['technologyTreeProgress'] == null
      ? TechnologyTreeProgressModel.empty
      : TechnologyTreeProgressModel.fromJson(
          json['technologyTreeProgress'] as Map<String, dynamic>,
        ),
  featuresSettings: json['featuresSettings'] == null
      ? LevelFeaturesSettingsModel.allDisabled
      : LevelFeaturesSettingsModel.fromJson(json['featuresSettings']),
  wordsLanguage: json['wordsLanguage'] == null
      ? defaultLanguage
      : uiLanguageFromJson(json['wordsLanguage'] as String),
  playerStartPoint:
      $enumDecodeNullable(
        _$PlayerStartPointTypeEnumMap,
        json['playerStartPoint'],
      ) ??
      PlayerStartPointType.fromSpawnPoint,
  canvasObjects: json['canvasObjects'] == null
      ? const {}
      : CanvasDataModel.objectsFromJson(
          json['canvasObjects'] as Map<String, dynamic>,
        ),
  canvasLayers:
      (json['canvasLayers'] as List<dynamic>?)
          ?.map((e) => LayerModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$LevelModelToJson(
  _LevelModel instance,
) => <String, dynamic>{
  'players': instance.players.toJson(),
  'characters': instance.characters.toJson(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'tilesetType': _$TilesetTypeEnumMap[instance.tilesetType]!,
  'weathers': instance.weathers.map((e) => e.toJson()).toList(),
  'wind': instance.wind.toJson(),
  'canvasDataId': instance.canvasDataId.toJson(),
  'currentWord': instance.currentWord.toJson(),
  'words': instance.words,
  'latestWord': instance.latestWord,
  'phaseType': _$GamePhaseTypeEnumMap[instance.phaseType]!,
  'actionMultiplier': _$EnergyMultiplierTypeEnumMap[instance.actionMultiplier]!,
  'dateTime': instance.dateTime.toJson(),
  'lastDateTime': instance.lastDateTime.toJson(),
  'technologyTreeProgress': instance.technologyTreeProgress.toJson(),
  'featuresSettings': instance.featuresSettings.toJson(),
  'wordsLanguage': uiLanguageToJson(instance.wordsLanguage),
  'playerStartPoint': _$PlayerStartPointTypeEnumMap[instance.playerStartPoint]!,
  'canvasObjects': CanvasDataModel.objectsToJson(instance.canvasObjects),
  'canvasLayers': instance.canvasLayers.map((e) => e.toJson()).toList(),
};

const _$TilesetTypeEnumMap = {
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

const _$PlayerStartPointTypeEnumMap = {
  PlayerStartPointType.fromSamePlace: 'fromSamePlace',
  PlayerStartPointType.fromSavePoint: 'fromSavePoint',
  PlayerStartPointType.fromSpawnPoint: 'fromSpawnPoint',
};

_LevelPlayersModel _$LevelPlayersModelFromJson(Map<String, dynamic> json) =>
    _LevelPlayersModel(
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPlayerId: json['currentPlayerId'] as String,
    );

Map<String, dynamic> _$LevelPlayersModelToJson(_LevelPlayersModel instance) =>
    <String, dynamic>{
      'players': instance.players.map((e) => e.toJson()).toList(),
      'currentPlayerId': instance.currentPlayerId,
    };

_PlayerCharacterModel _$PlayerCharacterModelFromJson(
  Map<String, dynamic> json,
) => _PlayerCharacterModel(
  id: json['id'] == null ? Gid.empty : Gid.fromJson(json['id'] as String),
  gid: json['gid'] == null ? Gid.empty : Gid.fromJson(json['gid'] as String),
  description: json['description'] as String? ?? '',
  color: (json['color'] as num?)?.toInt() ?? 0,
  localizedName: json['localizedName'] == null
      ? LocalizedMap.empty
      : LocalizedMap.fromJson(json['localizedName']),
  characterIcon: json['characterIcon'] as String? ?? '',
  distanceToOrigin: json['distanceToOrigin'] == null
      ? SerializedVector2.zero
      : SerializedVector2.fromJson(
          json['distanceToOrigin'] as Map<String, dynamic>,
        ),
  checkpointDistanceToOrigin: json['checkpointDistanceToOrigin'] == null
      ? SerializedVector2.zero
      : SerializedVector2.fromJson(
          json['checkpointDistanceToOrigin'] as Map<String, dynamic>,
        ),
  balloonPowers: json['balloonPowers'] == null
      ? BalloonLiftPowersModel.initial
      : BalloonLiftPowersModel.fromJson(
          json['balloonPowers'] as Map<String, dynamic>,
        ),
  balloonParams: json['balloonParams'] == null
      ? BalloonLiftParamsModel.initial
      : BalloonLiftParamsModel.fromJson(
          json['balloonParams'] as Map<String, dynamic>,
        ),
  isAnchored: json['isAnchored'] as bool? ?? true,
);

Map<String, dynamic> _$PlayerCharacterModelToJson(
  _PlayerCharacterModel instance,
) => <String, dynamic>{
  'id': instance.id.toJson(),
  'gid': instance.gid.toJson(),
  'description': instance.description,
  'color': instance.color,
  'localizedName': LocalizedMap.toJsonValueMap(instance.localizedName),
  'characterIcon': instance.characterIcon,
  'distanceToOrigin': instance.distanceToOrigin.toJson(),
  'checkpointDistanceToOrigin': instance.checkpointDistanceToOrigin.toJson(),
  'balloonPowers': instance.balloonPowers.toJson(),
  'balloonParams': instance.balloonParams.toJson(),
  'isAnchored': instance.isAnchored,
};

_SerializedVector2 _$SerializedVector2FromJson(Map<String, dynamic> json) =>
    _SerializedVector2(
      x: (json['x'] as num?)?.toDouble() ?? 0,
      y: (json['y'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$SerializedVector2ToJson(_SerializedVector2 instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

_PlayerProfileModel _$PlayerProfileModelFromJson(Map<String, dynamic> json) =>
    _PlayerProfileModel(
      id: json['id'] as String,
      colorValue: (json['colorValue'] as num).toInt(),
      name: json['name'] as String,
      levelsHighscores: json['levelsHighscores'] == null
          ? const {}
          : PlayerProfileModel._highscoreFromJson(
              json['levelsHighscores'] as Map<String, dynamic>,
            ),
      highscore: json['highscore'] == null
          ? PlayerHighscoreModel.empty
          : PlayerHighscoreModel.fromJson(
              json['highscore'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PlayerProfileModelToJson(_PlayerProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'colorValue': instance.colorValue,
      'name': instance.name,
      'levelsHighscores': PlayerProfileModel._highscoreToJson(
        instance.levelsHighscores,
      ),
      'highscore': instance.highscore.toJson(),
    };

_PlayerHighscoreModel _$PlayerHighscoreModelFromJson(
  Map<String, dynamic> json,
) => _PlayerHighscoreModel(
  maxWordsCount: (json['maxWordsCount'] as num?)?.toInt() ?? 0,
  maxLettersCount: (json['maxLettersCount'] as num?)?.toInt() ?? 0,
  totalWordsCount: (json['totalWordsCount'] as num?)?.toInt() ?? 0,
  totalLettersCount: (json['totalLettersCount'] as num?)?.toInt() ?? 0,
  score: json['score'] == null
      ? ScoreModel.zero
      : ScoreModel.fromJson(json['score'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PlayerHighscoreModelToJson(
  _PlayerHighscoreModel instance,
) => <String, dynamic>{
  'maxWordsCount': instance.maxWordsCount,
  'maxLettersCount': instance.maxLettersCount,
  'totalWordsCount': instance.totalWordsCount,
  'totalLettersCount': instance.totalLettersCount,
  'score': instance.score.toJson(),
};

_PlayerLevelHighscoreModel _$PlayerLevelHighscoreModelFromJson(
  Map<String, dynamic> json,
) => _PlayerLevelHighscoreModel(
  levelId: CanvasDataModelId.fromJson(json['levelId']),
  maxDistance: (json['maxDistance'] as num?)?.toDouble() ?? 0,
  totalDistance: (json['totalDistance'] as num?)?.toDouble() ?? 0,
  landingsCount: (json['landingsCount'] as num?)?.toDouble() ?? 0,
  flightTime: (json['flightTime'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$PlayerLevelHighscoreModelToJson(
  _PlayerLevelHighscoreModel instance,
) => <String, dynamic>{
  'levelId': instance.levelId.toJson(),
  'maxDistance': instance.maxDistance,
  'totalDistance': instance.totalDistance,
  'landingsCount': instance.landingsCount,
  'flightTime': instance.flightTime,
};

_ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) =>
    _ScoreModel(value: (json['value'] as num).toDouble());

Map<String, dynamic> _$ScoreModelToJson(_ScoreModel instance) =>
    <String, dynamic>{'value': instance.value};

_TechnologyTreeProgressModel _$TechnologyTreeProgressModelFromJson(
  Map<String, dynamic> json,
) => _TechnologyTreeProgressModel(
  technologies: json['technologies'] == null
      ? const {}
      : TechnologyTreeProgressModel._technologiesFromJson(
          json['technologies'] as Map<String, dynamic>,
        ),
  investedResearchScore: json['investedResearchScore'] == null
      ? ScoreModel.zero
      : ScoreModel.fromJson(
          json['investedResearchScore'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$TechnologyTreeProgressModelToJson(
  _TechnologyTreeProgressModel instance,
) => <String, dynamic>{
  'technologies': TechnologyTreeProgressModel._technologiesToJson(
    instance.technologies,
  ),
  'investedResearchScore': instance.investedResearchScore.toJson(),
};

_TechnologyProgressModel _$TechnologyProgressModelFromJson(
  Map<String, dynamic> json,
) => _TechnologyProgressModel(
  id: TechnologyModelId.fromJson(json['id']),
  unlockCondition: TechnologyUnlockConditionModel.fromJson(
    json['unlockCondition'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$TechnologyProgressModelToJson(
  _TechnologyProgressModel instance,
) => <String, dynamic>{
  'id': instance.id.toJson(),
  'unlockCondition': instance.unlockCondition.toJson(),
};

_TechnologyModel _$TechnologyModelFromJson(Map<String, dynamic> json) =>
    _TechnologyModel(
      id: TechnologyModelId.fromJson(json['id']),
      title: LocalizedMap.fromJson(json['title']),
      unlockCondition: TechnologyUnlockConditionModel.fromJson(
        json['unlockCondition'] as Map<String, dynamic>,
      ),
      index: (json['index'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TechnologyModelToJson(_TechnologyModel instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'title': instance.title.toJson(),
      'unlockCondition': instance.unlockCondition.toJson(),
      'index': instance.index,
    };

_TechnologyUnlockConditionModel _$TechnologyUnlockConditionModelFromJson(
  Map<String, dynamic> json,
) => _TechnologyUnlockConditionModel(
  languageWords: languageWordsMapFromJson(
    json['languageWords'] as Map<String, dynamic>,
  ),
  wordsUnlockThreshold: (json['wordsUnlockThreshold'] as num?)?.toInt() ?? 0,
  investedResearchPoints:
      (json['investedResearchPoints'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$TechnologyUnlockConditionModelToJson(
  _TechnologyUnlockConditionModel instance,
) => <String, dynamic>{
  'languageWords': languageWordsMapToJson(instance.languageWords),
  'wordsUnlockThreshold': instance.wordsUnlockThreshold,
  'investedResearchPoints': instance.investedResearchPoints,
};

_UsefulWordModel _$UsefulWordModelFromJson(Map<String, dynamic> json) =>
    _UsefulWordModel(
      word: json['word'] as String,
      isUsed: json['isUsed'] as bool? ?? false,
    );

Map<String, dynamic> _$UsefulWordModelToJson(_UsefulWordModel instance) =>
    <String, dynamic>{'word': instance.word, 'isUsed': instance.isUsed};

_TutorialEventModel _$TutorialEventModelFromJson(Map<String, dynamic> json) =>
    _TutorialEventModel(
      localizedMap: LocalizedMap.fromJson(json['localizedMap']),
      completeActions: (json['completeActions'] as List<dynamic>)
          .map(
            (e) =>
                TutorialUiActionEventModel.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      gamePreEffects:
          (json['gamePreEffects'] as List<dynamic>?)
              ?.map(
                (e) =>
                    TutorialGameEffectModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      gamePostEffects:
          (json['gamePostEffects'] as List<dynamic>?)
              ?.map(
                (e) =>
                    TutorialGameEffectModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      anchorUiItem: $enumDecodeNullable(
        _$TutorialUiItemEnumMap,
        json['anchorUiItem'],
      ),
    );

Map<String, dynamic> _$TutorialEventModelToJson(
  _TutorialEventModel instance,
) => <String, dynamic>{
  'localizedMap': instance.localizedMap.toJson(),
  'completeActions': instance.completeActions.map((e) => e.toJson()).toList(),
  'gamePreEffects': instance.gamePreEffects.map((e) => e.toJson()).toList(),
  'gamePostEffects': instance.gamePostEffects.map((e) => e.toJson()).toList(),
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

_TutorialGameEffectModel _$TutorialGameEffectModelFromJson(
  Map<String, dynamic> json,
) => _TutorialGameEffectModel(
  name: $enumDecode(_$TutorialGameEffectNameEnumMap, json['name']),
);

Map<String, dynamic> _$TutorialGameEffectModelToJson(
  _TutorialGameEffectModel instance,
) => <String, dynamic>{'name': _$TutorialGameEffectNameEnumMap[instance.name]!};

const _$TutorialGameEffectNameEnumMap = {
  TutorialGameEffectName.pauseGame: 'pauseGame',
  TutorialGameEffectName.resumeGame: 'resumeGame',
  TutorialGameEffectName.requestWordFieldFocus: 'requestWordFieldFocus',
  TutorialGameEffectName.completeCurrentTutorial: 'completeCurrentTutorial',
};

_TutorialUiActionEventModel _$TutorialUiActionEventModelFromJson(
  Map<String, dynamic> json,
) => _TutorialUiActionEventModel(
  action: $enumDecode(_$TutorialCompleteActionEnumMap, json['action']),
  uiItem: $enumDecodeNullable(_$TutorialUiItemEnumMap, json['uiItem']),
  isCompleted: json['isCompleted'] as bool? ?? false,
  boolConsquenses:
      (json['boolConsquenses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          $enumDecode(_$PrimitiveBoolEnumMap, k),
          (e as List<dynamic>)
              .map(
                (e) =>
                    TutorialGameEffectModel.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      ) ??
      const {},
);

Map<String, dynamic> _$TutorialUiActionEventModelToJson(
  _TutorialUiActionEventModel instance,
) => <String, dynamic>{
  'action': _$TutorialCompleteActionEnumMap[instance.action]!,
  'uiItem': _$TutorialUiItemEnumMap[instance.uiItem],
  'isCompleted': instance.isCompleted,
  'boolConsquenses': instance.boolConsquenses.map(
    (k, e) =>
        MapEntry(_$PrimitiveBoolEnumMap[k]!, e.map((e) => e.toJson()).toList()),
  ),
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

_TutorialEventsCollectionModel _$TutorialEventsCollectionModelFromJson(
  Map<String, dynamic> json,
) => _TutorialEventsCollectionModel(
  events: (json['events'] as List<dynamic>)
      .map((e) => TutorialEventModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  name: $enumDecode(_$TutorialCollectionsNameEnumMap, json['name']),
  currentIndex: (json['currentIndex'] as num).toInt(),
);

Map<String, dynamic> _$TutorialEventsCollectionModelToJson(
  _TutorialEventsCollectionModel instance,
) => <String, dynamic>{
  'events': instance.events.map((e) => e.toJson()).toList(),
  'name': _$TutorialCollectionsNameEnumMap[instance.name]!,
  'currentIndex': instance.currentIndex,
};

const _$TutorialCollectionsNameEnumMap = {
  TutorialCollectionsName.levelIntroduction: 'levelIntroduction',
  TutorialCollectionsName.archive: 'archive',
};

_TutorialCollectionsProgressModel _$TutorialCollectionsProgressModelFromJson(
  Map<String, dynamic> json,
) => _TutorialCollectionsProgressModel(
  indexes: (json['indexes'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
      $enumDecode(_$TutorialCollectionsNameEnumMap, k),
      (e as num).toInt(),
    ),
  ),
);

Map<String, dynamic> _$TutorialCollectionsProgressModelToJson(
  _TutorialCollectionsProgressModel instance,
) => <String, dynamic>{
  'indexes': instance.indexes.map(
    (k, e) => MapEntry(_$TutorialCollectionsNameEnumMap[k]!, e),
  ),
};

_TutorialCollectionsDataModel _$TutorialCollectionsDataModelFromJson(
  Map<String, dynamic> json,
) => _TutorialCollectionsDataModel(
  events: (json['events'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
      $enumDecode(_$TutorialCollectionsNameEnumMap, k),
      (e as List<dynamic>)
          .map((e) => TutorialEventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  ),
);

Map<String, dynamic> _$TutorialCollectionsDataModelToJson(
  _TutorialCollectionsDataModel instance,
) => <String, dynamic>{
  'events': instance.events.map(
    (k, e) => MapEntry(_$TutorialCollectionsNameEnumMap[k]!, e),
  ),
};

_WorldDateTime _$WorldDateTimeFromJson(Map<String, dynamic> json) =>
    _WorldDateTime(second: (json['second'] as num?)?.toInt() ?? 0);

Map<String, dynamic> _$WorldDateTimeToJson(_WorldDateTime instance) =>
    <String, dynamic>{'second': instance.second};
