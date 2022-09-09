// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorldDataModel _$$_WorldDataModelFromJson(Map<String, dynamic> json) =>
    _$_WorldDataModel(
      datetime: json['datetime'] == null
          ? const WorldDateTimeModel()
          : WorldDateTimeModel.fromJson(
              json['datetime'] as Map<String, dynamic>),
      locations: (json['locations'] as List<dynamic>?)
              ?.map(
                  (e) => WorldLocationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      players: (json['players'] as List<dynamic>?)
              ?.map((e) => PlayerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_WorldDataModelToJson(_$_WorldDataModel instance) =>
    <String, dynamic>{
      'datetime': instance.datetime.toJson(),
      'locations': instance.locations.map((e) => e.toJson()).toList(),
      'players': instance.players.map((e) => e.toJson()).toList(),
    };

_$_WorldLocationModel _$$_WorldLocationModelFromJson(
        Map<String, dynamic> json) =>
    _$_WorldLocationModel(
      id: json['id'] as String,
      type: $enumDecode(_$WorldLocationTypeEnumMap, json['type']),
      resources: WorldLocationResourcesModel.fromJson(
          json['resources'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WorldLocationModelToJson(
        _$_WorldLocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$WorldLocationTypeEnumMap[instance.type]!,
      'resources': instance.resources.toJson(),
    };

const _$WorldLocationTypeEnumMap = {
  WorldLocationType.moon: 'moon',
  WorldLocationType.earth: 'earth',
};

_$_WorldLocationResourcesModel _$$_WorldLocationResourcesModelFromJson(
        Map<String, dynamic> json) =>
    _$_WorldLocationResourcesModel(
      people: (json['people'] as List<dynamic>)
          .map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      money: (json['money'] as num).toDouble(),
      food: (json['food'] as num).toDouble(),
      oxygen: (json['oxygen'] as num).toDouble(),
      water: (json['water'] as num).toDouble(),
      elements: (json['elements'] as List<dynamic>)
          .map((e) => WorldElementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorldLocationResourcesModelToJson(
        _$_WorldLocationResourcesModel instance) =>
    <String, dynamic>{
      'people': instance.people.map((e) => e.toJson()).toList(),
      'money': instance.money,
      'food': instance.food,
      'oxygen': instance.oxygen,
      'water': instance.water,
      'elements': instance.elements.map((e) => e.toJson()).toList(),
    };

_$_PersonModel _$$_PersonModelFromJson(Map<String, dynamic> json) =>
    _$_PersonModel(
      id: json['id'] as String,
      name: json['name'] as String,
      health: json['health'] as int,
      ageInSeconds: json['ageInSeconds'] as int,
      demands:
          PersonDemandsModel.fromJson(json['demands'] as Map<String, dynamic>),
      skills: (json['skills'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$SkillTypeEnumMap, k),
            CraftingSkillValueModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_PersonModelToJson(_$_PersonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'health': instance.health,
      'ageInSeconds': instance.ageInSeconds,
      'demands': instance.demands.toJson(),
      'skills': instance.skills
          .map((k, e) => MapEntry(_$SkillTypeEnumMap[k]!, e.toJson())),
    };

const _$SkillTypeEnumMap = {
  SkillType.science: 'science',
  SkillType.design: 'design',
  SkillType.engineering: 'engineering',
  SkillType.crafting: 'crafting',
  SkillType.cooking: 'cooking',
  SkillType.painting: 'painting',
  SkillType.blogging: 'blogging',
  SkillType.photography: 'photography',
  SkillType.writing: 'writing',
  SkillType.entertaining: 'entertaining',
  SkillType.marketing: 'marketing',
  SkillType.trading: 'trading',
  SkillType.creativity: 'creativity',
  SkillType.techMind: 'techMind',
};

_$_PersonDemandsModel _$$_PersonDemandsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonDemandsModel(
      food: (json['food'] as num).toDouble(),
      oxygen: (json['oxygen'] as num).toDouble(),
      water: (json['water'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PersonDemandsModelToJson(
        _$_PersonDemandsModel instance) =>
    <String, dynamic>{
      'food': instance.food,
      'oxygen': instance.oxygen,
      'water': instance.water,
    };

_$_WorldDateTime _$$_WorldDateTimeFromJson(Map<String, dynamic> json) =>
    _$_WorldDateTime(
      second: json['second'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WorldDateTimeToJson(_$_WorldDateTime instance) =>
    <String, dynamic>{
      'second': instance.second,
    };

_$_WorldDate _$$_WorldDateFromJson(Map<String, dynamic> json) => _$_WorldDate(
      year: json['year'] as int? ?? 0,
      month: json['month'] as int? ?? 0,
      day: json['day'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WorldDateToJson(_$_WorldDate instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };

_$_PlayerModel _$$_PlayerModelFromJson(Map<String, dynamic> json) =>
    _$_PlayerModel(
      id: json['id'] as String,
      type: $enumDecodeNullable(_$PlayerTypeEnumMap, json['type']) ??
          PlayerType.ai,
    );

Map<String, dynamic> _$$_PlayerModelToJson(_$_PlayerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$PlayerTypeEnumMap[instance.type]!,
    };

const _$PlayerTypeEnumMap = {
  PlayerType.ai: 'ai',
  PlayerType.userControlled: 'userControlled',
};

_$_WorldElementModel _$$_WorldElementModelFromJson(Map<String, dynamic> json) =>
    _$_WorldElementModel(
      type: $enumDecode(_$WorldElementTypeEnumMap, json['type']),
      durability: (json['durability'] as num?)?.toDouble() ?? 100.0,
      maxDurability: (json['maxDurability'] as num?)?.toDouble() ?? 100.0,
      position: json['position'] == null
          ? const WorldElementPositionModel()
          : WorldElementPositionModel.fromJson(
              json['position'] as Map<String, dynamic>),
      degradationElements:
          (json['degradationElements'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    $enumDecode(_$WorldElementTypeEnumMap, k),
                    ElementDegradationValueModel.fromJson(
                        e as Map<String, dynamic>)),
              ) ??
              const {},
      requiredElementsToCraft: (json['requiredElementsToCraft']
                  as Map<String, dynamic>?)
              ?.map(
            (k, e) => MapEntry($enumDecode(_$WorldElementTypeEnumMap, k),
                CraftingElementValueModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      requiredSkillsToCraft: (json['requiredSkillsToCraft']
                  as Map<String, dynamic>?)
              ?.map(
            (k, e) => MapEntry($enumDecode(_$SkillTypeEnumMap, k),
                CraftingSkillValueModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      rewardSkillsFromCraft: (json['rewardSkillsFromCraft']
                  as Map<String, dynamic>?)
              ?.map(
            (k, e) => MapEntry($enumDecode(_$SkillTypeEnumMap, k),
                CraftingSkillValueModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
      attributes: worldElementModelAttributesFromJson(
          json['attributes'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_WorldElementModelToJson(
        _$_WorldElementModel instance) =>
    <String, dynamic>{
      'type': _$WorldElementTypeEnumMap[instance.type]!,
      'durability': instance.durability,
      'maxDurability': instance.maxDurability,
      'position': instance.position.toJson(),
      'degradationElements': instance.degradationElements
          .map((k, e) => MapEntry(_$WorldElementTypeEnumMap[k]!, e.toJson())),
      'requiredElementsToCraft': instance.requiredElementsToCraft
          .map((k, e) => MapEntry(_$WorldElementTypeEnumMap[k]!, e.toJson())),
      'requiredSkillsToCraft': instance.requiredSkillsToCraft
          .map((k, e) => MapEntry(_$SkillTypeEnumMap[k]!, e.toJson())),
      'rewardSkillsFromCraft': instance.rewardSkillsFromCraft
          .map((k, e) => MapEntry(_$SkillTypeEnumMap[k]!, e.toJson())),
      'attributes': worldElementModelAttributesToJson(instance.attributes),
    };

const _$WorldElementTypeEnumMap = {
  WorldElementType.water: 'water',
  WorldElementType.oxygen: 'oxygen',
  WorldElementType.food: 'food',
  WorldElementType.steel: 'steel',
  WorldElementType.electronics: 'electronics',
  WorldElementType.photo: 'photo',
  WorldElementType.video: 'video',
  WorldElementType.writing: 'writing',
};

_$_WorldElementPositionModel _$$_WorldElementPositionModelFromJson(
        Map<String, dynamic> json) =>
    _$_WorldElementPositionModel(
      x: json['x'] as int? ?? 0,
      y: json['y'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WorldElementPositionModelToJson(
        _$_WorldElementPositionModel instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$_ElementDegradationValueModel _$$_ElementDegradationValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_ElementDegradationValueModel(
      worldElementType:
          $enumDecode(_$WorldElementTypeEnumMap, json['worldElementType']),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ElementDegradationValueModelToJson(
        _$_ElementDegradationValueModel instance) =>
    <String, dynamic>{
      'worldElementType': _$WorldElementTypeEnumMap[instance.worldElementType]!,
      'rate': instance.rate,
    };

_$_CraftingElementValueModel _$$_CraftingElementValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_CraftingElementValueModel(
      type: $enumDecode(_$WorldElementTypeEnumMap, json['type']),
      minValue: (json['minValue'] as num).toDouble(),
      maxValue: (json['maxValue'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_CraftingElementValueModelToJson(
        _$_CraftingElementValueModel instance) =>
    <String, dynamic>{
      'type': _$WorldElementTypeEnumMap[instance.type]!,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
    };

_$_CraftingSkillValueModel _$$_CraftingSkillValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_CraftingSkillValueModel(
      type: $enumDecode(_$SkillTypeEnumMap, json['type']),
      skillLevel: json['skillLevel'] as int? ?? 1,
      modifier: (json['modifier'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$$_CraftingSkillValueModelToJson(
        _$_CraftingSkillValueModel instance) =>
    <String, dynamic>{
      'type': _$SkillTypeEnumMap[instance.type]!,
      'skillLevel': instance.skillLevel,
      'modifier': instance.modifier,
    };

_$_WritingWorldElementAttributes _$$_WritingWorldElementAttributesFromJson(
        Map<String, dynamic> json) =>
    _$_WritingWorldElementAttributes(
      elementType: $enumDecode(_$WorldElementTypeEnumMap, json['elementType']),
      genre: $enumDecode(_$WritingGenreEnumMap, json['genre']),
      graphicsUsage:
          $enumDecode(_$WritingGraphicsUsageEnumMap, json['graphicsUsage']),
      volume: $enumDecode(_$WritingVolumeEnumMap, json['volume']),
    );

Map<String, dynamic> _$$_WritingWorldElementAttributesToJson(
        _$_WritingWorldElementAttributes instance) =>
    <String, dynamic>{
      'elementType': _$WorldElementTypeEnumMap[instance.elementType]!,
      'genre': _$WritingGenreEnumMap[instance.genre]!,
      'graphicsUsage': _$WritingGraphicsUsageEnumMap[instance.graphicsUsage]!,
      'volume': _$WritingVolumeEnumMap[instance.volume]!,
    };

const _$WritingGenreEnumMap = {
  WritingGenre.scientific: 'scientific',
  WritingGenre.scienceFiction: 'scienceFiction',
  WritingGenre.scienceFantasy: 'scienceFantasy',
};

const _$WritingGraphicsUsageEnumMap = {
  WritingGraphicsUsage.none: 'none',
  WritingGraphicsUsage.rarely: 'rarely',
  WritingGraphicsUsage.onEveryPage: 'onEveryPage',
};

const _$WritingVolumeEnumMap = {
  WritingVolume.short: 'short',
  WritingVolume.medium: 'medium',
  WritingVolume.long: 'long',
};
