// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saveable_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CanvasDataModelImpl _$$CanvasDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CanvasDataModelImpl(
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
          : CanvasDataModel.objectsFromJson(
              json['objects'] as Map<String, dynamic>),
      playerObject: json['playerObject'] == null
          ? RenderObjectModel.empty
          : RenderObjectModel.fromJson(
              json['playerObject'] as Map<String, dynamic>),
      skyYTilePosition: json['skyYTilePosition'] as int? ?? 0,
      gravity: json['gravity'] == null
          ? GravityModel.initial
          : GravityModel.fromJson(json['gravity'] as Map<String, dynamic>),
      technologies: (json['technologies'] as List<dynamic>?)
              ?.map((e) => TechnologyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tilesetType:
          $enumDecodeNullable(_$TilesetTypeEnumMap, json['tilesetType']) ??
              TilesetType.colourful,
    );

Map<String, dynamic> _$$CanvasDataModelImplToJson(
        _$CanvasDataModelImpl instance) =>
    <String, dynamic>{
      'id': CanvasDataModelId.toJsonString(instance.id),
      'name': LocalizedMap.toJsonValueMap(instance.name),
      'layers': instance.layers,
      'objects': CanvasDataModel.objectsToJson(instance.objects),
      'playerObject': instance.playerObject,
      'skyYTilePosition': instance.skyYTilePosition,
      'gravity': instance.gravity,
      'technologies': instance.technologies,
      'tilesetType': _$TilesetTypeEnumMap[instance.tilesetType]!,
    };

const _$TilesetTypeEnumMap = {
  TilesetType.colourful: 'colourful',
  TilesetType.whiteBlack: 'white_black',
  TilesetType.evening: 'evening',
};

_$GravityModelImpl _$$GravityModelImplFromJson(Map<String, dynamic> json) =>
    _$GravityModelImpl(
      yTilePosition: json['yTilePosition'] as int,
    );

Map<String, dynamic> _$$GravityModelImplToJson(_$GravityModelImpl instance) =>
    <String, dynamic>{
      'yTilePosition': instance.yTilePosition,
    };

_$LayerModelImpl _$$LayerModelImplFromJson(Map<String, dynamic> json) =>
    _$LayerModelImpl(
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

Map<String, dynamic> _$$LayerModelImplToJson(_$LayerModelImpl instance) =>
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

_$CellTileModelImpl _$$CellTileModelImplFromJson(Map<String, dynamic> json) =>
    _$CellTileModelImpl(
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

Map<String, dynamic> _$$CellTileModelImplToJson(_$CellTileModelImpl instance) =>
    <String, dynamic>{
      'tileId': instance.tileId,
      'tileNeighbours': instance.tileNeighbours,
      'objects': instance.objects,
      'npcs': instance.npcs,
    };

_$RenderObjectModelImpl _$$RenderObjectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RenderObjectModelImpl(
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

Map<String, dynamic> _$$RenderObjectModelImplToJson(
        _$RenderObjectModelImpl instance) =>
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

_$GidImpl _$$GidImplFromJson(Map<String, dynamic> json) => _$GidImpl(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$GidImplToJson(_$GidImpl instance) => <String, dynamic>{
      'value': instance.value,
    };

_$PlayerModelImpl _$$PlayerModelImplFromJson(Map<String, dynamic> json) =>
    _$PlayerModelImpl(
      id: Gid.fromJson(json['id'] as String),
    );

Map<String, dynamic> _$$PlayerModelImplToJson(_$PlayerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$TileNeighbourTitleImpl _$$TileNeighbourTitleImplFromJson(
        Map<String, dynamic> json) =>
    _$TileNeighbourTitleImpl(
      value: json['value'] as String,
    );

Map<String, dynamic> _$$TileNeighbourTitleImplToJson(
        _$TileNeighbourTitleImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$CellDataModelImpl _$$CellDataModelImplFromJson(Map<String, dynamic> json) =>
    _$CellDataModelImpl();

Map<String, dynamic> _$$CellDataModelImplToJson(_$CellDataModelImpl instance) =>
    <String, dynamic>{};

_$CellPointModelImpl _$$CellPointModelImplFromJson(Map<String, dynamic> json) =>
    _$CellPointModelImpl(
      json['x'] as int,
      json['y'] as int,
    );

Map<String, dynamic> _$$CellPointModelImplToJson(
        _$CellPointModelImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
