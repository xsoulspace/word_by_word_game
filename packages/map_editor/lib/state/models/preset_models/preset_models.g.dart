// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresetTileModelImpl _$$PresetTileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PresetTileModelImpl(
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

Map<String, dynamic> _$$PresetTileModelImplToJson(
        _$PresetTileModelImpl instance) =>
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
  TileType.playerObject: 'player_object',
};

const _$DataCategoryTypeEnumMap = {
  DataCategoryType.terrain: 'terrain',
  DataCategoryType.marker: 'marker',
  DataCategoryType.water: 'water',
  DataCategoryType.plants: 'plants',
  DataCategoryType.players: 'players',
  DataCategoryType.other: 'other',
  DataCategoryType.buildings: 'buildings',
};

_$PresetTilePropertiesModelImpl _$$PresetTilePropertiesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PresetTilePropertiesModelImpl(
      title: json['title'] as String? ?? '',
      thumbnailPath: json['thumbnail_path'] as String? ?? '',
      description: json['description'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJsonValueMap(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PresetTilePropertiesModelImplToJson(
        _$PresetTilePropertiesModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'thumbnail_path': instance.thumbnailPath,
      'description': LocalizedMap.toJsonValueMap(instance.description),
    };

_$PresetTileGraphicsModelImpl _$$PresetTileGraphicsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PresetTileGraphicsModelImpl(
      type: $enumDecode(_$TileGraphicsTypeEnumMap, json['type']),
      animated: json['animated'] as bool? ?? false,
      behaviours: (json['behaviours'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TileBehaviourTypeEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PresetTileGraphicsModelImplToJson(
        _$PresetTileGraphicsModelImpl instance) =>
    <String, dynamic>{
      'type': _$TileGraphicsTypeEnumMap[instance.type]!,
      'animated': instance.animated,
      'behaviours': instance.behaviours
          .map((e) => _$TileBehaviourTypeEnumMap[e]!)
          .toList(),
    };

const _$TileGraphicsTypeEnumMap = {
  TileGraphicsType.directional: 'directional',
  TileGraphicsType.character: 'character',
  TileGraphicsType.standalone: 'standalone',
};

const _$TileBehaviourTypeEnumMap = {
  TileBehaviourType.idle: 'idle',
  TileBehaviourType.idleLeft: 'idle_left',
  TileBehaviourType.idleRight: 'idle_right',
  TileBehaviourType.flyLeft: 'fly_left',
  TileBehaviourType.flyRight: 'fly_right',
};

_$TilesetPresetDataModelImpl _$$TilesetPresetDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TilesetPresetDataModelImpl(
      tiles: json['tiles'] == null
          ? const {}
          : TilesetPresetDataModel._tilesFromJson(
              json['tiles'] as Map<String, dynamic>),
      objects: json['objects'] == null
          ? const {}
          : TilesetPresetDataModel._tilesFromJson(
              json['objects'] as Map<String, dynamic>),
      npcs: json['npcs'] == null
          ? const {}
          : TilesetPresetDataModel._tilesFromJson(
              json['npcs'] as Map<String, dynamic>),
      players: json['players'] == null
          ? const {}
          : TilesetPresetDataModel._tilesFromJson(
              json['players'] as Map<String, dynamic>),
      other: json['other'] == null
          ? const {}
          : TilesetPresetDataModel._tilesFromJson(
              json['other'] as Map<String, dynamic>),
      autotileRules: (json['autotile_rules'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$SpriteTileNameEnumMap, k),
                (e as List<dynamic>).map((e) => e as String).toList()),
          ) ??
          _nameCodes,
      name: json['name'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJsonValueMap(json['name'] as Map<String, dynamic>),
      type: $enumDecodeNullable(_$TilesetTypeEnumMap, json['type']) ??
          TilesetType.whiteBlack,
      theme: json['theme'] == null
          ? TilesetThemeModel.empty
          : TilesetThemeModel.fromJson(json['theme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TilesetPresetDataModelImplToJson(
        _$TilesetPresetDataModelImpl instance) =>
    <String, dynamic>{
      'tiles': TilesetPresetDataModel._tilesToJson(instance.tiles),
      'objects': TilesetPresetDataModel._tilesToJson(instance.objects),
      'npcs': TilesetPresetDataModel._tilesToJson(instance.npcs),
      'players': TilesetPresetDataModel._tilesToJson(instance.players),
      'other': TilesetPresetDataModel._tilesToJson(instance.other),
      'autotile_rules': instance.autotileRules
          .map((k, e) => MapEntry(_$SpriteTileNameEnumMap[k]!, e)),
      'name': LocalizedMap.toJsonValueMap(instance.name),
      'type': _$TilesetTypeEnumMap[instance.type]!,
      'theme': instance.theme,
    };

const _$SpriteTileNameEnumMap = {
  SpriteTileName.topLeft: 'topLeft',
  SpriteTileName.topLeftSmooth: 'topLeftSmooth',
  SpriteTileName.topLeftCorner: 'topLeftCorner',
  SpriteTileName.topCenter: 'topCenter',
  SpriteTileName.topRight: 'topRight',
  SpriteTileName.topRightSmooth: 'topRightSmooth',
  SpriteTileName.topRightCorner: 'topRightCorner',
  SpriteTileName.middleLeft: 'middleLeft',
  SpriteTileName.middleRight: 'middleRight',
  SpriteTileName.x: 'x',
  SpriteTileName.bottomLeft: 'bottomLeft',
  SpriteTileName.bottomCenter: 'bottomCenter',
  SpriteTileName.bottomRight: 'bottomRight',
};

const _$TilesetTypeEnumMap = {
  TilesetType.whiteBlack: 'white_black',
  TilesetType.evening: 'evening',
};

_$TilesetThemeModelImpl _$$TilesetThemeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TilesetThemeModelImpl(
      backgroundSkyColorHex: json['backgroundSkyColorHex'] as String,
    );

Map<String, dynamic> _$$TilesetThemeModelImplToJson(
        _$TilesetThemeModelImpl instance) =>
    <String, dynamic>{
      'backgroundSkyColorHex': instance.backgroundSkyColorHex,
    };
