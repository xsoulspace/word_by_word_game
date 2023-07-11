// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PresetTileModel _$$_PresetTileModelFromJson(Map<String, dynamic> json) =>
    _$_PresetTileModel(
      id: TileId.fromJson(json['id'] as String),
      type: $enumDecode(_$TileTypeEnumMap, json['type']),
      category: $enumDecode(_$DataCategoryTypeEnumMap, json['category']),
      graphics: PresetTileGraphicsModel.fromJson(
          json['graphics'] as Map<String, dynamic>),
      properties: json['properties'] == null
          ? PresetTilePropertiesModel.empty
          : PresetTilePropertiesModel.fromJson(
              json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PresetTileModelToJson(_$_PresetTileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TileTypeEnumMap[instance.type]!,
      'category': _$DataCategoryTypeEnumMap[instance.category]!,
      'graphics': instance.graphics,
      'properties': instance.properties,
    };

const _$TileTypeEnumMap = {
  TileType.autotile: 'autotile',
  TileType.object: 'object',
};

const _$DataCategoryTypeEnumMap = {
  DataCategoryType.terrain: 'terrain',
  DataCategoryType.water: 'water',
  DataCategoryType.palms: 'palms',
  DataCategoryType.players: 'players',
};

_$_PresetTilePropertiesModel _$$_PresetTilePropertiesModelFromJson(
        Map<String, dynamic> json) =>
    _$_PresetTilePropertiesModel(
      title: json['title'] as String? ?? '',
      thumbnailPath: json['thumbnail_path'] as String? ?? '',
      description: json['description'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJsonValueMap(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PresetTilePropertiesModelToJson(
        _$_PresetTilePropertiesModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail_path': instance.thumbnailPath,
      'description': LocalizedMap.toJsonValueMap(instance.description),
    };

_$_PresetTileGraphicsModel _$$_PresetTileGraphicsModelFromJson(
        Map<String, dynamic> json) =>
    _$_PresetTileGraphicsModel(
      type: $enumDecode(_$TileGraphicsTypeEnumMap, json['type']),
      path: json['path'] as String? ?? '',
      animated: json['animated'] as bool? ?? false,
      behaviours: (json['behaviours'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TileBehaviourTypeEnumMap, e))
              .toList() ??
          const [],
      neighborsAssociativeMap: (json['neighbors_associative_map']
                  as Map<String, dynamic>?)
              ?.map(
            (k, e) => MapEntry(k,
                NeighborsAssociationModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_PresetTileGraphicsModelToJson(
        _$_PresetTileGraphicsModel instance) =>
    <String, dynamic>{
      'type': _$TileGraphicsTypeEnumMap[instance.type]!,
      'path': instance.path,
      'animated': instance.animated,
      'behaviours': instance.behaviours
          .map((e) => _$TileBehaviourTypeEnumMap[e]!)
          .toList(),
      'neighbors_associative_map': instance.neighborsAssociativeMap,
    };

const _$TileGraphicsTypeEnumMap = {
  TileGraphicsType.directional: 'directional',
  TileGraphicsType.character: 'character',
};

const _$TileBehaviourTypeEnumMap = {
  TileBehaviourType.idle: 'idle',
  TileBehaviourType.idleLeft: 'idleLeft',
  TileBehaviourType.idleRight: 'idleRight',
  TileBehaviourType.flyLeft: 'flyLeft',
  TileBehaviourType.flyRight: 'flyRight',
};

_$_NeighborsAssociationModel _$$_NeighborsAssociationModelFromJson(
        Map<String, dynamic> json) =>
    _$_NeighborsAssociationModel(
      useWhenFilled: (json['use_when_filled'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      useWhenNotFilled: (json['use_when_not_filled'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_NeighborsAssociationModelToJson(
        _$_NeighborsAssociationModel instance) =>
    <String, dynamic>{
      'use_when_filled': instance.useWhenFilled,
      'use_when_not_filled': instance.useWhenNotFilled,
    };

_$_TilesPresetDataModel _$$_TilesPresetDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_TilesPresetDataModel(
      tiles: json['tiles'] == null
          ? const {}
          : TilesPresetDataModel._tilesFromJson(
              json['tiles'] as Map<String, dynamic>),
      objects: json['objects'] == null
          ? const {}
          : TilesPresetDataModel._tilesFromJson(
              json['objects'] as Map<String, dynamic>),
      npcs: json['npcs'] == null
          ? const {}
          : TilesPresetDataModel._tilesFromJson(
              json['npcs'] as Map<String, dynamic>),
      players: json['players'] == null
          ? const {}
          : TilesPresetDataModel._tilesFromJson(
              json['players'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TilesPresetDataModelToJson(
        _$_TilesPresetDataModel instance) =>
    <String, dynamic>{
      'tiles': TilesPresetDataModel._tilesToJson(instance.tiles),
      'objects': TilesPresetDataModel._tilesToJson(instance.objects),
      'npcs': TilesPresetDataModel._tilesToJson(instance.npcs),
      'players': TilesPresetDataModel._tilesToJson(instance.players),
    };
