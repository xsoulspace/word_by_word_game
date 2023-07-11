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

_$_EditorGameObjectModel _$$_EditorGameObjectModelFromJson(
        Map<String, dynamic> json) =>
    _$_EditorGameObjectModel(
      id: Gid.fromJson(json['id'] as Map<String, dynamic>),
      tileId: TileId.fromJson(json['tileId'] as String),
      position: json['position'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['position'] as Map<String, dynamic>),
      distanceToOrigin: json['distanceToOrigin'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['distanceToOrigin'] as Map<String, dynamic>),
      distanceToTileLeftTopCorner: json['distanceToTileLeftTopCorner'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['distanceToTileLeftTopCorner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EditorGameObjectModelToJson(
        _$_EditorGameObjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tileId': instance.tileId,
      'position': instance.position,
      'distanceToOrigin': instance.distanceToOrigin,
      'distanceToTileLeftTopCorner': instance.distanceToTileLeftTopCorner,
    };

_$_Gid _$$_GidFromJson(Map<String, dynamic> json) => _$_Gid(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_GidToJson(_$_Gid instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_PlayerObjectModel _$$_PlayerObjectModelFromJson(Map<String, dynamic> json) =>
    _$_PlayerObjectModel(
      canvasObject: RenderCanvasObjectModel.fromJson(
          json['canvasObject'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlayerObjectModelToJson(
        _$_PlayerObjectModel instance) =>
    <String, dynamic>{
      'canvasObject': instance.canvasObject,
    };

_$_RenderCanvasObjectModel _$$_RenderCanvasObjectModelFromJson(
        Map<String, dynamic> json) =>
    _$_RenderCanvasObjectModel(
      id: Gid.fromJson(json['id'] as Map<String, dynamic>),
      tileId: TileId.fromJson(json['tileId'] as String),
      position: json['position'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['position'] as Map<String, dynamic>),
      distanceToOrigin: json['distanceToOrigin'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['distanceToOrigin'] as Map<String, dynamic>),
      distanceToTileLeftTopCorner: json['distanceToTileLeftTopCorner'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['distanceToTileLeftTopCorner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RenderCanvasObjectModelToJson(
        _$_RenderCanvasObjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tileId': instance.tileId,
      'position': instance.position,
      'distanceToOrigin': instance.distanceToOrigin,
      'distanceToTileLeftTopCorner': instance.distanceToTileLeftTopCorner,
    };

_$_RenderCanvasTileModel _$$_RenderCanvasTileModelFromJson(
        Map<String, dynamic> json) =>
    _$_RenderCanvasTileModel(
      tileId: TileId.fromJson(json['tileId'] as String),
      hasTerrain: json['hasTerrain'] as bool? ?? false,
      hasWater: json['hasWater'] as bool? ?? false,
      isWaterTop: json['isWaterTop'] as bool? ?? false,
      objects: (json['objects'] as List<dynamic>?)
              ?.map((e) => Gid.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RenderCanvasTileModelToJson(
        _$_RenderCanvasTileModel instance) =>
    <String, dynamic>{
      'tileId': instance.tileId,
      'hasTerrain': instance.hasTerrain,
      'hasWater': instance.hasWater,
      'isWaterTop': instance.isWaterTop,
      'objects': instance.objects,
    };
