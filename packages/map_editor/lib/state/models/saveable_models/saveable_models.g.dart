// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saveable_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CanvasDataReferenceModel _$$_CanvasDataReferenceModelFromJson(
        Map<String, dynamic> json) =>
    _$_CanvasDataReferenceModel(
      id: json['id'] == null
          ? CanvasDataModelId.empty
          : CanvasDataModelId.fromJson(json['id'] as String),
      name: json['name'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CanvasDataReferenceModelToJson(
        _$_CanvasDataReferenceModel instance) =>
    <String, dynamic>{
      'id': CanvasDataModelId.toJsonString(instance.id),
      'name': LocalizedMap.toJsonValueMap(instance.name),
    };

_$_CanvasDataModel _$$_CanvasDataModelFromJson(Map<String, dynamic> json) =>
    _$_CanvasDataModel(
      id: json['id'] == null
          ? CanvasDataModelId.empty
          : CanvasDataModelId.fromJson(json['id'] as String),
      name: json['name'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJsonValueMap(json['name'] as Map<String, dynamic>),
      layers: (json['layers'] as List<dynamic>?)
              ?.map((e) => LayerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      objects: json['objects'] == null
          ? const {}
          : CanvasDataModel._objectsFromJson(
              json['objects'] as Map<String, dynamic>),
      playerObject: json['playerObject'] == null
          ? RenderObjectModel.empty
          : RenderObjectModel.fromJson(
              json['playerObject'] as Map<String, dynamic>),
      skyYPosition: (json['skyYPosition'] as num?)?.toDouble() ?? 0,
      gravityYPosition: (json['gravityYPosition'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_CanvasDataModelToJson(_$_CanvasDataModel instance) =>
    <String, dynamic>{
      'id': CanvasDataModelId.toJsonString(instance.id),
      'name': LocalizedMap.toJsonValueMap(instance.name),
      'layers': instance.layers,
      'objects': CanvasDataModel._objectsToJson(instance.objects),
      'playerObject': instance.playerObject,
      'skyYPosition': instance.skyYPosition,
      'gravityYPosition': instance.gravityYPosition,
    };

_$_LayerModel _$$_LayerModelFromJson(Map<String, dynamic> json) =>
    _$_LayerModel(
      id: LayerModelId.fromJson(json['id'] as String),
      title: json['title'] as String? ?? '',
      tiles: json['tiles'] == null
          ? const {}
          : LayerModel._tilesFromJson(json['tiles'] as Map<String, dynamic>),
      isCollidable: json['isCollidable'] as bool? ?? false,
      collisionConsequence: $enumDecodeNullable(
              _$CollisionConsequenceEnumMap, json['collisionConsequence']) ??
          CollisionConsequence.none,
      isVisible: json['isVisible'] as bool? ?? true,
    );

Map<String, dynamic> _$$_LayerModelToJson(_$_LayerModel instance) =>
    <String, dynamic>{
      'id': LayerModelId.toJsonString(instance.id),
      'title': instance.title,
      'tiles': LayerModel._tilesToJson(instance.tiles),
      'isCollidable': instance.isCollidable,
      'collisionConsequence':
          _$CollisionConsequenceEnumMap[instance.collisionConsequence]!,
      'isVisible': instance.isVisible,
    };

const _$CollisionConsequenceEnumMap = {
  CollisionConsequence.none: 'none',
  CollisionConsequence.win: 'win',
  CollisionConsequence.lose: 'lose',
};

_$_CellTileModel _$$_CellTileModelFromJson(Map<String, dynamic> json) =>
    _$_CellTileModel(
      tileId: json['tileId'] == null
          ? TileId.empty
          : TileId.fromJson(json['tileId'] as String),
      tileNeighbours: (json['tileNeighbours'] as List<dynamic>?)
              ?.map(
                  (e) => TileNeighbourTitle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      objects: (json['objects'] as List<dynamic>?)
              ?.map((e) => Gid.fromJson(e as String))
              .toList() ??
          const [],
      npcs: (json['npcs'] as List<dynamic>?)
              ?.map((e) => Gid.fromJson(e as String))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CellTileModelToJson(_$_CellTileModel instance) =>
    <String, dynamic>{
      'tileId': instance.tileId,
      'tileNeighbours': instance.tileNeighbours,
      'objects': instance.objects,
      'npcs': instance.npcs,
    };

_$_RenderObjectModel _$$_RenderObjectModelFromJson(Map<String, dynamic> json) =>
    _$_RenderObjectModel(
      id: Gid.fromJson(json['id'] as String),
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
      animationBehaviour: $enumDecodeNullable(
              _$TileBehaviourTypeEnumMap, json['animationBehaviour']) ??
          TileBehaviourType.idle,
    );

Map<String, dynamic> _$$_RenderObjectModelToJson(
        _$_RenderObjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tileId': instance.tileId,
      'position': instance.position,
      'distanceToOrigin': instance.distanceToOrigin,
      'distanceToTileLeftTopCorner': instance.distanceToTileLeftTopCorner,
      'animationBehaviour':
          _$TileBehaviourTypeEnumMap[instance.animationBehaviour]!,
    };

const _$TileBehaviourTypeEnumMap = {
  TileBehaviourType.idle: 'idle',
  TileBehaviourType.idleLeft: 'idle_left',
  TileBehaviourType.idleRight: 'idle_right',
  TileBehaviourType.flyLeft: 'fly_left',
  TileBehaviourType.flyRight: 'fly_right',
};

_$_Gid _$$_GidFromJson(Map<String, dynamic> json) => _$_Gid(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_GidToJson(_$_Gid instance) => <String, dynamic>{
      'value': instance.value,
    };

_$_PlayerModel _$$_PlayerModelFromJson(Map<String, dynamic> json) =>
    _$_PlayerModel(
      id: Gid.fromJson(json['id'] as String),
    );

Map<String, dynamic> _$$_PlayerModelToJson(_$_PlayerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_TileNeighbourTitle _$$_TileNeighbourTitleFromJson(
        Map<String, dynamic> json) =>
    _$_TileNeighbourTitle(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_TileNeighbourTitleToJson(
        _$_TileNeighbourTitle instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

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
