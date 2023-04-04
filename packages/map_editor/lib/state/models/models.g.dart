// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CellDataModel _$$_CellDataModelFromJson(Map<String, dynamic> json) =>
    _$_CellDataModel();

Map<String, dynamic> _$$_CellDataModelToJson(_$_CellDataModel instance) =>
    <String, dynamic>{};

_$_CellPointModel _$$_CellPointModelFromJson(Map<String, dynamic> json) =>
    _$_CellPointModel(
      json['x'] as int,
      json['y'] as int,
    );

Map<String, dynamic> _$$_CellPointModelToJson(_$_CellPointModel instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };

_$_TileDataModel _$$_TileDataModelFromJson(Map<String, dynamic> json) =>
    _$_TileDataModel(
      style: $enumDecode(_$TileStyleEnumMap, json['style']),
      menu: $enumDecodeNullable(_$TileStyleEnumMap, json['menu']),
      menuSurface: json['menu_surf'] as String? ?? '',
      preview: json['preview'] as String? ?? '',
      graphics: json['graphics'] as String? ?? '',
      type: $enumDecodeNullable(_$GameObjectTypeEnumMap, json['type']) ??
          GameObjectType.tile,
    );

Map<String, dynamic> _$$_TileDataModelToJson(_$_TileDataModel instance) =>
    <String, dynamic>{
      'style': _$TileStyleEnumMap[instance.style]!,
      'menu': _$TileStyleEnumMap[instance.menu],
      'menu_surf': instance.menuSurface,
      'preview': instance.preview,
      'graphics': instance.graphics,
      'type': _$GameObjectTypeEnumMap[instance.type]!,
    };

const _$TileStyleEnumMap = {
  TileStyle.player: 'player',
  TileStyle.cursorHandle: 'cursorHandle',
  TileStyle.terrain: 'terrain',
  TileStyle.water: 'water',
  TileStyle.coin: 'coin',
  TileStyle.enemy: 'enemy',
  TileStyle.sky: 'sky',
  TileStyle.palmForeground: 'palm_fg',
  TileStyle.palmBackground: 'palm_bg',
};

const _$GameObjectTypeEnumMap = {
  GameObjectType.object: 'object',
  GameObjectType.tile: 'tile',
};
