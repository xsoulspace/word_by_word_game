// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saveable_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CanvasDataModel _$CanvasDataModelFromJson(Map<String, dynamic> json) =>
    _CanvasDataModel(
      id: json['id'] == null
          ? CanvasDataModelId.empty
          : CanvasDataModelId.fromJson(json['id'] as String),
      name: json['name'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJson(json['name']),
      layers:
          (json['layers'] as List<dynamic>?)
              ?.map((e) => LayerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      objects: json['objects'] == null
          ? const {}
          : CanvasDataModel.objectsFromJson(
              json['objects'] as Map<String, dynamic>,
            ),
      playerObject: json['playerObject'] == null
          ? RenderObjectModel.empty
          : RenderObjectModel.fromJson(
              json['playerObject'] as Map<String, dynamic>,
            ),
      skyYTilePosition: (json['skyYTilePosition'] as num?)?.toInt() ?? 0,
      gravity: json['gravity'] == null
          ? GravityModel.initial
          : GravityModel.fromJson(json['gravity'] as Map<String, dynamic>),
      technologies:
          (json['technologies'] as List<dynamic>?)
              ?.map((e) => TechnologyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tilesetType:
          $enumDecodeNullable(_$TilesetTypeEnumMap, json['tilesetType']) ??
          TilesetType.whiteBlack,
    );

Map<String, dynamic> _$CanvasDataModelToJson(_CanvasDataModel instance) =>
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
  TilesetType.whiteBlack: 'white_black',
  TilesetType.evening: 'evening',
};

_GravityModel _$GravityModelFromJson(Map<String, dynamic> json) =>
    _GravityModel(yTilePosition: (json['yTilePosition'] as num).toInt());

Map<String, dynamic> _$GravityModelToJson(_GravityModel instance) =>
    <String, dynamic>{'yTilePosition': instance.yTilePosition};

_LayerModel _$LayerModelFromJson(Map<String, dynamic> json) => _LayerModel(
  id: LayerModelId.fromJson(json['id'] as String),
  title: json['title'] as String? ?? '',
  tiles: json['tiles'] == null
      ? const {}
      : LayerModel._tilesFromJson(json['tiles'] as Map<String, dynamic>),
  isCollidable: json['isCollidable'] as bool? ?? false,
  collisionConsequence:
      $enumDecodeNullable(
        _$CollisionConsequenceEnumMap,
        json['collisionConsequence'],
      ) ??
      CollisionConsequence.none,
  isVisible: json['isVisible'] as bool? ?? true,
);

Map<String, dynamic> _$LayerModelToJson(_LayerModel instance) =>
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

_CellTileModel _$CellTileModelFromJson(Map<String, dynamic> json) =>
    _CellTileModel(
      tileId: json['tileId'] == null
          ? TileId.empty
          : TileId.fromJson(json['tileId'] as String),
      tileNeighbours:
          (json['tileNeighbours'] as List<dynamic>?)
              ?.map(
                (e) => TileNeighbourTitle.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      objects:
          (json['objects'] as List<dynamic>?)
              ?.map((e) => Gid.fromJson(e as String))
              .toList() ??
          const [],
      npcs:
          (json['npcs'] as List<dynamic>?)
              ?.map((e) => Gid.fromJson(e as String))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CellTileModelToJson(_CellTileModel instance) =>
    <String, dynamic>{
      'tileId': instance.tileId,
      'tileNeighbours': instance.tileNeighbours,
      'objects': instance.objects,
      'npcs': instance.npcs,
    };

_RenderObjectModel _$RenderObjectModelFromJson(Map<String, dynamic> json) =>
    _RenderObjectModel(
      id: Gid.fromJson(json['id'] as String),
      tileId: TileId.fromJson(json['tileId'] as String),
      position: json['position'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['position'] as Map<String, dynamic>,
            ),
      distanceToOrigin: json['distanceToOrigin'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['distanceToOrigin'] as Map<String, dynamic>,
            ),
      distanceToTileLeftTopCorner: json['distanceToTileLeftTopCorner'] == null
          ? SerializedVector2.zero
          : SerializedVector2.fromJson(
              json['distanceToTileLeftTopCorner'] as Map<String, dynamic>,
            ),
      animationBehaviour:
          $enumDecodeNullable(
            _$TileBehaviourTypeEnumMap,
            json['animationBehaviour'],
          ) ??
          TileBehaviourType.idle,
    );

Map<String, dynamic> _$RenderObjectModelToJson(_RenderObjectModel instance) =>
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

_Gid _$GidFromJson(Map<String, dynamic> json) =>
    _Gid(value: json['value'] as String);

Map<String, dynamic> _$GidToJson(_Gid instance) => <String, dynamic>{
  'value': instance.value,
};

_PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) =>
    _PlayerModel(id: Gid.fromJson(json['id'] as String));

Map<String, dynamic> _$PlayerModelToJson(_PlayerModel instance) =>
    <String, dynamic>{'id': instance.id};

_TileNeighbourTitle _$TileNeighbourTitleFromJson(Map<String, dynamic> json) =>
    _TileNeighbourTitle(value: json['value'] as String);

Map<String, dynamic> _$TileNeighbourTitleToJson(_TileNeighbourTitle instance) =>
    <String, dynamic>{'value': instance.value};

_CellDataModel _$CellDataModelFromJson(Map<String, dynamic> json) =>
    _CellDataModel();

Map<String, dynamic> _$CellDataModelToJson(_CellDataModel instance) =>
    <String, dynamic>{};

_CellPointModel _$CellPointModelFromJson(Map<String, dynamic> json) =>
    _CellPointModel((json['x'] as num).toInt(), (json['y'] as num).toInt());

Map<String, dynamic> _$CellPointModelToJson(_CellPointModel instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};
