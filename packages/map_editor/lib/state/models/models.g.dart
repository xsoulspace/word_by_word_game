// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TileDataModel _$$_TileDataModelFromJson(Map<String, dynamic> json) =>
    _$_TileDataModel(
      style: $enumDecode(_$TileStyleEnumMap, json['style']),
      menu: $enumDecodeNullable(_$TileStyleEnumMap, json['menu']),
      menuSurface: json['menu_surf'] as String? ?? '',
      preview: json['preview'] as String? ?? '',
      graphics: json['graphics'] as String? ?? '',
      type: $enumDecodeNullable(_$TileTypeEnumMap, json['type']) ??
          TileType.autotile,
    );

Map<String, dynamic> _$$_TileDataModelToJson(_$_TileDataModel instance) =>
    <String, dynamic>{
      'style': _$TileStyleEnumMap[instance.style]!,
      'menu': _$TileStyleEnumMap[instance.menu],
      'menu_surf': instance.menuSurface,
      'preview': instance.preview,
      'graphics': instance.graphics,
      'type': _$TileTypeEnumMap[instance.type]!,
    };

const _$TileStyleEnumMap = {
  TileStyle.player: 'player',
  TileStyle.cursorHandle: 'cursor_handle',
  TileStyle.terrain: 'terrain',
  TileStyle.water: 'water',
  TileStyle.coin: 'coin',
  TileStyle.enemy: 'enemy',
  TileStyle.sky: 'sky',
  TileStyle.palmForeground: 'palm_fg',
  TileStyle.palmBackground: 'palm_bg',
};

const _$TileTypeEnumMap = {
  TileType.autotile: 'autotile',
  TileType.object: 'object',
};
