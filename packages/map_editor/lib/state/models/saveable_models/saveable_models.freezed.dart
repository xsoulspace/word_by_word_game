// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saveable_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CanvasDataModel _$CanvasDataModelFromJson(Map<String, dynamic> json) {
  return _CanvasDataModel.fromJson(json);
}

/// @nodoc
mixin _$CanvasDataModel {
  List<LayerModel> get layers => throw _privateConstructorUsedError;

  /// Moving or idle obstacle, decoration - objects,
  /// like the birds, trees etc.
  ///
  /// The main idea, that any objet should be accessed from top to bottom
  /// This way there will be easy way to loop all objects or change just
  /// one object.
  @JsonKey(
      fromJson: CanvasDataModel._objectsFromJson,
      toJson: CanvasDataModel._objectsToJson)
  Map<Gid, RenderObjectModel> get objects => throw _privateConstructorUsedError;

  /// As player is unique - it should be used separately from [objects].
  RenderObjectModel get playerObject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CanvasDataModelCopyWith<CanvasDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanvasDataModelCopyWith<$Res> {
  factory $CanvasDataModelCopyWith(
          CanvasDataModel value, $Res Function(CanvasDataModel) then) =
      _$CanvasDataModelCopyWithImpl<$Res, CanvasDataModel>;
  @useResult
  $Res call(
      {List<LayerModel> layers,
      @JsonKey(fromJson: CanvasDataModel._objectsFromJson, toJson: CanvasDataModel._objectsToJson)
          Map<Gid, RenderObjectModel> objects,
      RenderObjectModel playerObject});

  $RenderObjectModelCopyWith<$Res> get playerObject;
}

/// @nodoc
class _$CanvasDataModelCopyWithImpl<$Res, $Val extends CanvasDataModel>
    implements $CanvasDataModelCopyWith<$Res> {
  _$CanvasDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layers = null,
    Object? objects = null,
    Object? playerObject = null,
  }) {
    return _then(_value.copyWith(
      layers: null == layers
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as List<LayerModel>,
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<Gid, RenderObjectModel>,
      playerObject: null == playerObject
          ? _value.playerObject
          : playerObject // ignore: cast_nullable_to_non_nullable
              as RenderObjectModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RenderObjectModelCopyWith<$Res> get playerObject {
    return $RenderObjectModelCopyWith<$Res>(_value.playerObject, (value) {
      return _then(_value.copyWith(playerObject: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CanvasDataModelCopyWith<$Res>
    implements $CanvasDataModelCopyWith<$Res> {
  factory _$$_CanvasDataModelCopyWith(
          _$_CanvasDataModel value, $Res Function(_$_CanvasDataModel) then) =
      __$$_CanvasDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LayerModel> layers,
      @JsonKey(fromJson: CanvasDataModel._objectsFromJson, toJson: CanvasDataModel._objectsToJson)
          Map<Gid, RenderObjectModel> objects,
      RenderObjectModel playerObject});

  @override
  $RenderObjectModelCopyWith<$Res> get playerObject;
}

/// @nodoc
class __$$_CanvasDataModelCopyWithImpl<$Res>
    extends _$CanvasDataModelCopyWithImpl<$Res, _$_CanvasDataModel>
    implements _$$_CanvasDataModelCopyWith<$Res> {
  __$$_CanvasDataModelCopyWithImpl(
      _$_CanvasDataModel _value, $Res Function(_$_CanvasDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layers = null,
    Object? objects = null,
    Object? playerObject = null,
  }) {
    return _then(_$_CanvasDataModel(
      layers: null == layers
          ? _value._layers
          : layers // ignore: cast_nullable_to_non_nullable
              as List<LayerModel>,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as Map<Gid, RenderObjectModel>,
      playerObject: null == playerObject
          ? _value.playerObject
          : playerObject // ignore: cast_nullable_to_non_nullable
              as RenderObjectModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CanvasDataModel extends _CanvasDataModel {
  const _$_CanvasDataModel(
      {final List<LayerModel> layers = const [],
      @JsonKey(fromJson: CanvasDataModel._objectsFromJson, toJson: CanvasDataModel._objectsToJson)
          final Map<Gid, RenderObjectModel> objects = const {},
      this.playerObject = RenderObjectModel.empty})
      : _layers = layers,
        _objects = objects,
        super._();

  factory _$_CanvasDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CanvasDataModelFromJson(json);

  final List<LayerModel> _layers;
  @override
  @JsonKey()
  List<LayerModel> get layers {
    if (_layers is EqualUnmodifiableListView) return _layers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layers);
  }

  /// Moving or idle obstacle, decoration - objects,
  /// like the birds, trees etc.
  ///
  /// The main idea, that any objet should be accessed from top to bottom
  /// This way there will be easy way to loop all objects or change just
  /// one object.
  final Map<Gid, RenderObjectModel> _objects;

  /// Moving or idle obstacle, decoration - objects,
  /// like the birds, trees etc.
  ///
  /// The main idea, that any objet should be accessed from top to bottom
  /// This way there will be easy way to loop all objects or change just
  /// one object.
  @override
  @JsonKey(
      fromJson: CanvasDataModel._objectsFromJson,
      toJson: CanvasDataModel._objectsToJson)
  Map<Gid, RenderObjectModel> get objects {
    if (_objects is EqualUnmodifiableMapView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objects);
  }

  /// As player is unique - it should be used separately from [objects].
  @override
  @JsonKey()
  final RenderObjectModel playerObject;

  @override
  String toString() {
    return 'CanvasDataModel(layers: $layers, objects: $objects, playerObject: $playerObject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CanvasDataModel &&
            const DeepCollectionEquality().equals(other._layers, _layers) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            (identical(other.playerObject, playerObject) ||
                other.playerObject == playerObject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_layers),
      const DeepCollectionEquality().hash(_objects),
      playerObject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CanvasDataModelCopyWith<_$_CanvasDataModel> get copyWith =>
      __$$_CanvasDataModelCopyWithImpl<_$_CanvasDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CanvasDataModelToJson(
      this,
    );
  }
}

abstract class _CanvasDataModel extends CanvasDataModel {
  const factory _CanvasDataModel(
      {final List<LayerModel> layers,
      @JsonKey(fromJson: CanvasDataModel._objectsFromJson, toJson: CanvasDataModel._objectsToJson)
          final Map<Gid, RenderObjectModel> objects,
      final RenderObjectModel playerObject}) = _$_CanvasDataModel;
  const _CanvasDataModel._() : super._();

  factory _CanvasDataModel.fromJson(Map<String, dynamic> json) =
      _$_CanvasDataModel.fromJson;

  @override
  List<LayerModel> get layers;
  @override

  /// Moving or idle obstacle, decoration - objects,
  /// like the birds, trees etc.
  ///
  /// The main idea, that any objet should be accessed from top to bottom
  /// This way there will be easy way to loop all objects or change just
  /// one object.
  @JsonKey(
      fromJson: CanvasDataModel._objectsFromJson,
      toJson: CanvasDataModel._objectsToJson)
  Map<Gid, RenderObjectModel> get objects;
  @override

  /// As player is unique - it should be used separately from [objects].
  RenderObjectModel get playerObject;
  @override
  @JsonKey(ignore: true)
  _$$_CanvasDataModelCopyWith<_$_CanvasDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LayerModel _$LayerModelFromJson(Map<String, dynamic> json) {
  return _LayerModel.fromJson(json);
}

/// @nodoc
mixin _$LayerModel {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
  Map<CellPointModel, CellTileModel> get tiles =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayerModelCopyWith<LayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayerModelCopyWith<$Res> {
  factory $LayerModelCopyWith(
          LayerModel value, $Res Function(LayerModel) then) =
      _$LayerModelCopyWithImpl<$Res, LayerModel>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
          Map<CellPointModel, CellTileModel> tiles});
}

/// @nodoc
class _$LayerModelCopyWithImpl<$Res, $Val extends LayerModel>
    implements $LayerModelCopyWith<$Res> {
  _$LayerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tiles = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tiles: null == tiles
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<CellPointModel, CellTileModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LayerModelCopyWith<$Res>
    implements $LayerModelCopyWith<$Res> {
  factory _$$_LayerModelCopyWith(
          _$_LayerModel value, $Res Function(_$_LayerModel) then) =
      __$$_LayerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
          Map<CellPointModel, CellTileModel> tiles});
}

/// @nodoc
class __$$_LayerModelCopyWithImpl<$Res>
    extends _$LayerModelCopyWithImpl<$Res, _$_LayerModel>
    implements _$$_LayerModelCopyWith<$Res> {
  __$$_LayerModelCopyWithImpl(
      _$_LayerModel _value, $Res Function(_$_LayerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tiles = null,
  }) {
    return _then(_$_LayerModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tiles: null == tiles
          ? _value._tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<CellPointModel, CellTileModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LayerModel extends _LayerModel {
  const _$_LayerModel(
      {this.title = '',
      @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
          final Map<CellPointModel, CellTileModel> tiles = const {}})
      : _tiles = tiles,
        super._();

  factory _$_LayerModel.fromJson(Map<String, dynamic> json) =>
      _$$_LayerModelFromJson(json);

  @override
  @JsonKey()
  final String title;
  final Map<CellPointModel, CellTileModel> _tiles;
  @override
  @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
  Map<CellPointModel, CellTileModel> get tiles {
    if (_tiles is EqualUnmodifiableMapView) return _tiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tiles);
  }

  @override
  String toString() {
    return 'LayerModel(title: $title, tiles: $tiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LayerModel &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tiles, _tiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_tiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LayerModelCopyWith<_$_LayerModel> get copyWith =>
      __$$_LayerModelCopyWithImpl<_$_LayerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LayerModelToJson(
      this,
    );
  }
}

abstract class _LayerModel extends LayerModel {
  const factory _LayerModel(
      {final String title,
      @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
          final Map<CellPointModel, CellTileModel> tiles}) = _$_LayerModel;
  const _LayerModel._() : super._();

  factory _LayerModel.fromJson(Map<String, dynamic> json) =
      _$_LayerModel.fromJson;

  @override
  String get title;
  @override
  @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
  Map<CellPointModel, CellTileModel> get tiles;
  @override
  @JsonKey(ignore: true)
  _$$_LayerModelCopyWith<_$_LayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CellTileModel _$CellTileModelFromJson(Map<String, dynamic> json) {
  return _CellTileModel.fromJson(json);
}

/// @nodoc
mixin _$CellTileModel {
  /// to remove tile just set [TileId.empty] and recalculate [tileNeighbours]
  TileId get tileId => throw _privateConstructorUsedError;
  List<TileNeighbourTitle> get tileNeighbours =>
      throw _privateConstructorUsedError;
  List<Gid> get objects => throw _privateConstructorUsedError;
  List<Gid> get npcs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CellTileModelCopyWith<CellTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellTileModelCopyWith<$Res> {
  factory $CellTileModelCopyWith(
          CellTileModel value, $Res Function(CellTileModel) then) =
      _$CellTileModelCopyWithImpl<$Res, CellTileModel>;
  @useResult
  $Res call(
      {TileId tileId,
      List<TileNeighbourTitle> tileNeighbours,
      List<Gid> objects,
      List<Gid> npcs});

  $TileIdCopyWith<$Res> get tileId;
}

/// @nodoc
class _$CellTileModelCopyWithImpl<$Res, $Val extends CellTileModel>
    implements $CellTileModelCopyWith<$Res> {
  _$CellTileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? tileNeighbours = null,
    Object? objects = null,
    Object? npcs = null,
  }) {
    return _then(_value.copyWith(
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as TileId,
      tileNeighbours: null == tileNeighbours
          ? _value.tileNeighbours
          : tileNeighbours // ignore: cast_nullable_to_non_nullable
              as List<TileNeighbourTitle>,
      objects: null == objects
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Gid>,
      npcs: null == npcs
          ? _value.npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<Gid>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TileIdCopyWith<$Res> get tileId {
    return $TileIdCopyWith<$Res>(_value.tileId, (value) {
      return _then(_value.copyWith(tileId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CellTileModelCopyWith<$Res>
    implements $CellTileModelCopyWith<$Res> {
  factory _$$_CellTileModelCopyWith(
          _$_CellTileModel value, $Res Function(_$_CellTileModel) then) =
      __$$_CellTileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TileId tileId,
      List<TileNeighbourTitle> tileNeighbours,
      List<Gid> objects,
      List<Gid> npcs});

  @override
  $TileIdCopyWith<$Res> get tileId;
}

/// @nodoc
class __$$_CellTileModelCopyWithImpl<$Res>
    extends _$CellTileModelCopyWithImpl<$Res, _$_CellTileModel>
    implements _$$_CellTileModelCopyWith<$Res> {
  __$$_CellTileModelCopyWithImpl(
      _$_CellTileModel _value, $Res Function(_$_CellTileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? tileNeighbours = null,
    Object? objects = null,
    Object? npcs = null,
  }) {
    return _then(_$_CellTileModel(
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as TileId,
      tileNeighbours: null == tileNeighbours
          ? _value._tileNeighbours
          : tileNeighbours // ignore: cast_nullable_to_non_nullable
              as List<TileNeighbourTitle>,
      objects: null == objects
          ? _value._objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<Gid>,
      npcs: null == npcs
          ? _value._npcs
          : npcs // ignore: cast_nullable_to_non_nullable
              as List<Gid>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CellTileModel extends _CellTileModel {
  const _$_CellTileModel(
      {this.tileId = TileId.empty,
      final List<TileNeighbourTitle> tileNeighbours = const [],
      final List<Gid> objects = const [],
      final List<Gid> npcs = const []})
      : _tileNeighbours = tileNeighbours,
        _objects = objects,
        _npcs = npcs,
        super._();

  factory _$_CellTileModel.fromJson(Map<String, dynamic> json) =>
      _$$_CellTileModelFromJson(json);

  /// to remove tile just set [TileId.empty] and recalculate [tileNeighbours]
  @override
  @JsonKey()
  final TileId tileId;
  final List<TileNeighbourTitle> _tileNeighbours;
  @override
  @JsonKey()
  List<TileNeighbourTitle> get tileNeighbours {
    if (_tileNeighbours is EqualUnmodifiableListView) return _tileNeighbours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tileNeighbours);
  }

  final List<Gid> _objects;
  @override
  @JsonKey()
  List<Gid> get objects {
    if (_objects is EqualUnmodifiableListView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

  final List<Gid> _npcs;
  @override
  @JsonKey()
  List<Gid> get npcs {
    if (_npcs is EqualUnmodifiableListView) return _npcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_npcs);
  }

  @override
  String toString() {
    return 'CellTileModel(tileId: $tileId, tileNeighbours: $tileNeighbours, objects: $objects, npcs: $npcs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CellTileModel &&
            (identical(other.tileId, tileId) || other.tileId == tileId) &&
            const DeepCollectionEquality()
                .equals(other._tileNeighbours, _tileNeighbours) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            const DeepCollectionEquality().equals(other._npcs, _npcs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tileId,
      const DeepCollectionEquality().hash(_tileNeighbours),
      const DeepCollectionEquality().hash(_objects),
      const DeepCollectionEquality().hash(_npcs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellTileModelCopyWith<_$_CellTileModel> get copyWith =>
      __$$_CellTileModelCopyWithImpl<_$_CellTileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellTileModelToJson(
      this,
    );
  }
}

abstract class _CellTileModel extends CellTileModel {
  const factory _CellTileModel(
      {final TileId tileId,
      final List<TileNeighbourTitle> tileNeighbours,
      final List<Gid> objects,
      final List<Gid> npcs}) = _$_CellTileModel;
  const _CellTileModel._() : super._();

  factory _CellTileModel.fromJson(Map<String, dynamic> json) =
      _$_CellTileModel.fromJson;

  @override

  /// to remove tile just set [TileId.empty] and recalculate [tileNeighbours]
  TileId get tileId;
  @override
  List<TileNeighbourTitle> get tileNeighbours;
  @override
  List<Gid> get objects;
  @override
  List<Gid> get npcs;
  @override
  @JsonKey(ignore: true)
  _$$_CellTileModelCopyWith<_$_CellTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RenderObjectModel _$RenderObjectModelFromJson(Map<String, dynamic> json) {
  return _RenderObjectModel.fromJson(json);
}

/// @nodoc
mixin _$RenderObjectModel {
  /// Since tileId can be used several times
  /// It cannot be used as gid.
  ///
  /// Instead, the new gid should be created
  /// for every new [RenderObjectModel].
  Gid get id => throw _privateConstructorUsedError;
  TileId get tileId => throw _privateConstructorUsedError;
  SerializedVector2 get position => throw _privateConstructorUsedError;
  SerializedVector2 get distanceToOrigin => throw _privateConstructorUsedError;
  SerializedVector2 get distanceToTileLeftTopCorner =>
      throw _privateConstructorUsedError;

  /// To get/set correct animation use this property.
  ///
  /// For example, for flying objects use [TileBehaviourType.flyRight]
  TileBehaviourType get animationBehaviour =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RenderObjectModelCopyWith<RenderObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RenderObjectModelCopyWith<$Res> {
  factory $RenderObjectModelCopyWith(
          RenderObjectModel value, $Res Function(RenderObjectModel) then) =
      _$RenderObjectModelCopyWithImpl<$Res, RenderObjectModel>;
  @useResult
  $Res call(
      {Gid id,
      TileId tileId,
      SerializedVector2 position,
      SerializedVector2 distanceToOrigin,
      SerializedVector2 distanceToTileLeftTopCorner,
      TileBehaviourType animationBehaviour});

  $GidCopyWith<$Res> get id;
  $TileIdCopyWith<$Res> get tileId;
  $SerializedVector2CopyWith<$Res> get position;
  $SerializedVector2CopyWith<$Res> get distanceToOrigin;
  $SerializedVector2CopyWith<$Res> get distanceToTileLeftTopCorner;
}

/// @nodoc
class _$RenderObjectModelCopyWithImpl<$Res, $Val extends RenderObjectModel>
    implements $RenderObjectModelCopyWith<$Res> {
  _$RenderObjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tileId = null,
    Object? position = null,
    Object? distanceToOrigin = null,
    Object? distanceToTileLeftTopCorner = null,
    Object? animationBehaviour = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Gid,
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as TileId,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      distanceToOrigin: null == distanceToOrigin
          ? _value.distanceToOrigin
          : distanceToOrigin // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      distanceToTileLeftTopCorner: null == distanceToTileLeftTopCorner
          ? _value.distanceToTileLeftTopCorner
          : distanceToTileLeftTopCorner // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      animationBehaviour: null == animationBehaviour
          ? _value.animationBehaviour
          : animationBehaviour // ignore: cast_nullable_to_non_nullable
              as TileBehaviourType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GidCopyWith<$Res> get id {
    return $GidCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TileIdCopyWith<$Res> get tileId {
    return $TileIdCopyWith<$Res>(_value.tileId, (value) {
      return _then(_value.copyWith(tileId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SerializedVector2CopyWith<$Res> get position {
    return $SerializedVector2CopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SerializedVector2CopyWith<$Res> get distanceToOrigin {
    return $SerializedVector2CopyWith<$Res>(_value.distanceToOrigin, (value) {
      return _then(_value.copyWith(distanceToOrigin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SerializedVector2CopyWith<$Res> get distanceToTileLeftTopCorner {
    return $SerializedVector2CopyWith<$Res>(_value.distanceToTileLeftTopCorner,
        (value) {
      return _then(_value.copyWith(distanceToTileLeftTopCorner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RenderObjectModelCopyWith<$Res>
    implements $RenderObjectModelCopyWith<$Res> {
  factory _$$_RenderObjectModelCopyWith(_$_RenderObjectModel value,
          $Res Function(_$_RenderObjectModel) then) =
      __$$_RenderObjectModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Gid id,
      TileId tileId,
      SerializedVector2 position,
      SerializedVector2 distanceToOrigin,
      SerializedVector2 distanceToTileLeftTopCorner,
      TileBehaviourType animationBehaviour});

  @override
  $GidCopyWith<$Res> get id;
  @override
  $TileIdCopyWith<$Res> get tileId;
  @override
  $SerializedVector2CopyWith<$Res> get position;
  @override
  $SerializedVector2CopyWith<$Res> get distanceToOrigin;
  @override
  $SerializedVector2CopyWith<$Res> get distanceToTileLeftTopCorner;
}

/// @nodoc
class __$$_RenderObjectModelCopyWithImpl<$Res>
    extends _$RenderObjectModelCopyWithImpl<$Res, _$_RenderObjectModel>
    implements _$$_RenderObjectModelCopyWith<$Res> {
  __$$_RenderObjectModelCopyWithImpl(
      _$_RenderObjectModel _value, $Res Function(_$_RenderObjectModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tileId = null,
    Object? position = null,
    Object? distanceToOrigin = null,
    Object? distanceToTileLeftTopCorner = null,
    Object? animationBehaviour = null,
  }) {
    return _then(_$_RenderObjectModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Gid,
      tileId: null == tileId
          ? _value.tileId
          : tileId // ignore: cast_nullable_to_non_nullable
              as TileId,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      distanceToOrigin: null == distanceToOrigin
          ? _value.distanceToOrigin
          : distanceToOrigin // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      distanceToTileLeftTopCorner: null == distanceToTileLeftTopCorner
          ? _value.distanceToTileLeftTopCorner
          : distanceToTileLeftTopCorner // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
      animationBehaviour: null == animationBehaviour
          ? _value.animationBehaviour
          : animationBehaviour // ignore: cast_nullable_to_non_nullable
              as TileBehaviourType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RenderObjectModel implements _RenderObjectModel {
  const _$_RenderObjectModel(
      {required this.id,
      required this.tileId,
      this.position = SerializedVector2.zero,
      this.distanceToOrigin = SerializedVector2.zero,
      this.distanceToTileLeftTopCorner = SerializedVector2.zero,
      this.animationBehaviour = TileBehaviourType.idle});

  factory _$_RenderObjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_RenderObjectModelFromJson(json);

  /// Since tileId can be used several times
  /// It cannot be used as gid.
  ///
  /// Instead, the new gid should be created
  /// for every new [RenderObjectModel].
  @override
  final Gid id;
  @override
  final TileId tileId;
  @override
  @JsonKey()
  final SerializedVector2 position;
  @override
  @JsonKey()
  final SerializedVector2 distanceToOrigin;
  @override
  @JsonKey()
  final SerializedVector2 distanceToTileLeftTopCorner;

  /// To get/set correct animation use this property.
  ///
  /// For example, for flying objects use [TileBehaviourType.flyRight]
  @override
  @JsonKey()
  final TileBehaviourType animationBehaviour;

  @override
  String toString() {
    return 'RenderObjectModel(id: $id, tileId: $tileId, position: $position, distanceToOrigin: $distanceToOrigin, distanceToTileLeftTopCorner: $distanceToTileLeftTopCorner, animationBehaviour: $animationBehaviour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RenderObjectModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tileId, tileId) || other.tileId == tileId) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.distanceToOrigin, distanceToOrigin) ||
                other.distanceToOrigin == distanceToOrigin) &&
            (identical(other.distanceToTileLeftTopCorner,
                    distanceToTileLeftTopCorner) ||
                other.distanceToTileLeftTopCorner ==
                    distanceToTileLeftTopCorner) &&
            (identical(other.animationBehaviour, animationBehaviour) ||
                other.animationBehaviour == animationBehaviour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tileId, position,
      distanceToOrigin, distanceToTileLeftTopCorner, animationBehaviour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RenderObjectModelCopyWith<_$_RenderObjectModel> get copyWith =>
      __$$_RenderObjectModelCopyWithImpl<_$_RenderObjectModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RenderObjectModelToJson(
      this,
    );
  }
}

abstract class _RenderObjectModel implements RenderObjectModel {
  const factory _RenderObjectModel(
      {required final Gid id,
      required final TileId tileId,
      final SerializedVector2 position,
      final SerializedVector2 distanceToOrigin,
      final SerializedVector2 distanceToTileLeftTopCorner,
      final TileBehaviourType animationBehaviour}) = _$_RenderObjectModel;

  factory _RenderObjectModel.fromJson(Map<String, dynamic> json) =
      _$_RenderObjectModel.fromJson;

  @override

  /// Since tileId can be used several times
  /// It cannot be used as gid.
  ///
  /// Instead, the new gid should be created
  /// for every new [RenderObjectModel].
  Gid get id;
  @override
  TileId get tileId;
  @override
  SerializedVector2 get position;
  @override
  SerializedVector2 get distanceToOrigin;
  @override
  SerializedVector2 get distanceToTileLeftTopCorner;
  @override

  /// To get/set correct animation use this property.
  ///
  /// For example, for flying objects use [TileBehaviourType.flyRight]
  TileBehaviourType get animationBehaviour;
  @override
  @JsonKey(ignore: true)
  _$$_RenderObjectModelCopyWith<_$_RenderObjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Gid {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GidCopyWith<Gid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GidCopyWith<$Res> {
  factory $GidCopyWith(Gid value, $Res Function(Gid) then) =
      _$GidCopyWithImpl<$Res, Gid>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$GidCopyWithImpl<$Res, $Val extends Gid> implements $GidCopyWith<$Res> {
  _$GidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GidCopyWith<$Res> implements $GidCopyWith<$Res> {
  factory _$$_GidCopyWith(_$_Gid value, $Res Function(_$_Gid) then) =
      __$$_GidCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_GidCopyWithImpl<$Res> extends _$GidCopyWithImpl<$Res, _$_Gid>
    implements _$$_GidCopyWith<$Res> {
  __$$_GidCopyWithImpl(_$_Gid _value, $Res Function(_$_Gid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Gid(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_Gid extends _Gid {
  const _$_Gid({required this.value}) : super._();

  @override
  final String value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GidCopyWith<_$_Gid> get copyWith =>
      __$$_GidCopyWithImpl<_$_Gid>(this, _$identity);
}

abstract class _Gid extends Gid {
  const factory _Gid({required final String value}) = _$_Gid;
  const _Gid._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_GidCopyWith<_$_Gid> get copyWith => throw _privateConstructorUsedError;
}

LevelSaveModel _$LevelSaveModelFromJson(Map<String, dynamic> json) {
  return _LevelSaveModel.fromJson(json);
}

/// @nodoc
mixin _$LevelSaveModel {
  CanvasDataModel get canvasData => throw _privateConstructorUsedError;
  PlayerModel get player => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelSaveModelCopyWith<LevelSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelSaveModelCopyWith<$Res> {
  factory $LevelSaveModelCopyWith(
          LevelSaveModel value, $Res Function(LevelSaveModel) then) =
      _$LevelSaveModelCopyWithImpl<$Res, LevelSaveModel>;
  @useResult
  $Res call({CanvasDataModel canvasData, PlayerModel player});

  $CanvasDataModelCopyWith<$Res> get canvasData;
  $PlayerModelCopyWith<$Res> get player;
}

/// @nodoc
class _$LevelSaveModelCopyWithImpl<$Res, $Val extends LevelSaveModel>
    implements $LevelSaveModelCopyWith<$Res> {
  _$LevelSaveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canvasData = null,
    Object? player = null,
  }) {
    return _then(_value.copyWith(
      canvasData: null == canvasData
          ? _value.canvasData
          : canvasData // ignore: cast_nullable_to_non_nullable
              as CanvasDataModel,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as PlayerModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelCopyWith<$Res> get canvasData {
    return $CanvasDataModelCopyWith<$Res>(_value.canvasData, (value) {
      return _then(_value.copyWith(canvasData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerModelCopyWith<$Res> get player {
    return $PlayerModelCopyWith<$Res>(_value.player, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LevelSaveModelCopyWith<$Res>
    implements $LevelSaveModelCopyWith<$Res> {
  factory _$$_LevelSaveModelCopyWith(
          _$_LevelSaveModel value, $Res Function(_$_LevelSaveModel) then) =
      __$$_LevelSaveModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CanvasDataModel canvasData, PlayerModel player});

  @override
  $CanvasDataModelCopyWith<$Res> get canvasData;
  @override
  $PlayerModelCopyWith<$Res> get player;
}

/// @nodoc
class __$$_LevelSaveModelCopyWithImpl<$Res>
    extends _$LevelSaveModelCopyWithImpl<$Res, _$_LevelSaveModel>
    implements _$$_LevelSaveModelCopyWith<$Res> {
  __$$_LevelSaveModelCopyWithImpl(
      _$_LevelSaveModel _value, $Res Function(_$_LevelSaveModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canvasData = null,
    Object? player = null,
  }) {
    return _then(_$_LevelSaveModel(
      canvasData: null == canvasData
          ? _value.canvasData
          : canvasData // ignore: cast_nullable_to_non_nullable
              as CanvasDataModel,
      player: null == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as PlayerModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LevelSaveModel implements _LevelSaveModel {
  const _$_LevelSaveModel(
      {this.canvasData = CanvasDataModel.empty,
      this.player = PlayerModel.empty});

  factory _$_LevelSaveModel.fromJson(Map<String, dynamic> json) =>
      _$$_LevelSaveModelFromJson(json);

  @override
  @JsonKey()
  final CanvasDataModel canvasData;
  @override
  @JsonKey()
  final PlayerModel player;

  @override
  String toString() {
    return 'LevelSaveModel(canvasData: $canvasData, player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LevelSaveModel &&
            (identical(other.canvasData, canvasData) ||
                other.canvasData == canvasData) &&
            (identical(other.player, player) || other.player == player));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, canvasData, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LevelSaveModelCopyWith<_$_LevelSaveModel> get copyWith =>
      __$$_LevelSaveModelCopyWithImpl<_$_LevelSaveModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelSaveModelToJson(
      this,
    );
  }
}

abstract class _LevelSaveModel implements LevelSaveModel {
  const factory _LevelSaveModel(
      {final CanvasDataModel canvasData,
      final PlayerModel player}) = _$_LevelSaveModel;

  factory _LevelSaveModel.fromJson(Map<String, dynamic> json) =
      _$_LevelSaveModel.fromJson;

  @override
  CanvasDataModel get canvasData;
  @override
  PlayerModel get player;
  @override
  @JsonKey(ignore: true)
  _$$_LevelSaveModelCopyWith<_$_LevelSaveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) {
  return _PlayerModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerModel {
  /// to get access to [RenderObjectModel]
  /// just use [CanvasDataModel.player] with gid verification
  Gid get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerModelCopyWith<PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerModelCopyWith<$Res> {
  factory $PlayerModelCopyWith(
          PlayerModel value, $Res Function(PlayerModel) then) =
      _$PlayerModelCopyWithImpl<$Res, PlayerModel>;
  @useResult
  $Res call({Gid id});

  $GidCopyWith<$Res> get id;
}

/// @nodoc
class _$PlayerModelCopyWithImpl<$Res, $Val extends PlayerModel>
    implements $PlayerModelCopyWith<$Res> {
  _$PlayerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Gid,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GidCopyWith<$Res> get id {
    return $GidCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlayerModelCopyWith<$Res>
    implements $PlayerModelCopyWith<$Res> {
  factory _$$_PlayerModelCopyWith(
          _$_PlayerModel value, $Res Function(_$_PlayerModel) then) =
      __$$_PlayerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Gid id});

  @override
  $GidCopyWith<$Res> get id;
}

/// @nodoc
class __$$_PlayerModelCopyWithImpl<$Res>
    extends _$PlayerModelCopyWithImpl<$Res, _$_PlayerModel>
    implements _$$_PlayerModelCopyWith<$Res> {
  __$$_PlayerModelCopyWithImpl(
      _$_PlayerModel _value, $Res Function(_$_PlayerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PlayerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Gid,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlayerModel extends _PlayerModel {
  const _$_PlayerModel({required this.id}) : super._();

  factory _$_PlayerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerModelFromJson(json);

  /// to get access to [RenderObjectModel]
  /// just use [CanvasDataModel.player] with gid verification
  @override
  final Gid id;

  @override
  String toString() {
    return 'PlayerModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      __$$_PlayerModelCopyWithImpl<_$_PlayerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerModelToJson(
      this,
    );
  }
}

abstract class _PlayerModel extends PlayerModel {
  const factory _PlayerModel({required final Gid id}) = _$_PlayerModel;
  const _PlayerModel._() : super._();

  factory _PlayerModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerModel.fromJson;

  @override

  /// to get access to [RenderObjectModel]
  /// just use [CanvasDataModel.player] with gid verification
  Gid get id;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TileNeighbourTitle _$TileNeighbourTitleFromJson(Map<String, dynamic> json) {
  return _TileNeighbourTitle.fromJson(json);
}

/// @nodoc
mixin _$TileNeighbourTitle {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) secured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? secured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? secured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TileNeighbourTitle value) secured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TileNeighbourTitle value)? secured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TileNeighbourTitle value)? secured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TileNeighbourTitleCopyWith<TileNeighbourTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileNeighbourTitleCopyWith<$Res> {
  factory $TileNeighbourTitleCopyWith(
          TileNeighbourTitle value, $Res Function(TileNeighbourTitle) then) =
      _$TileNeighbourTitleCopyWithImpl<$Res, TileNeighbourTitle>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$TileNeighbourTitleCopyWithImpl<$Res, $Val extends TileNeighbourTitle>
    implements $TileNeighbourTitleCopyWith<$Res> {
  _$TileNeighbourTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TileNeighbourTitleCopyWith<$Res>
    implements $TileNeighbourTitleCopyWith<$Res> {
  factory _$$_TileNeighbourTitleCopyWith(_$_TileNeighbourTitle value,
          $Res Function(_$_TileNeighbourTitle) then) =
      __$$_TileNeighbourTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_TileNeighbourTitleCopyWithImpl<$Res>
    extends _$TileNeighbourTitleCopyWithImpl<$Res, _$_TileNeighbourTitle>
    implements _$$_TileNeighbourTitleCopyWith<$Res> {
  __$$_TileNeighbourTitleCopyWithImpl(
      _$_TileNeighbourTitle _value, $Res Function(_$_TileNeighbourTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_TileNeighbourTitle(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TileNeighbourTitle extends _TileNeighbourTitle {
  const _$_TileNeighbourTitle({required this.value}) : super._();

  factory _$_TileNeighbourTitle.fromJson(Map<String, dynamic> json) =>
      _$$_TileNeighbourTitleFromJson(json);

  @override
  final String value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TileNeighbourTitleCopyWith<_$_TileNeighbourTitle> get copyWith =>
      __$$_TileNeighbourTitleCopyWithImpl<_$_TileNeighbourTitle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) secured,
  }) {
    return secured(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? secured,
  }) {
    return secured?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? secured,
    required TResult orElse(),
  }) {
    if (secured != null) {
      return secured(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TileNeighbourTitle value) secured,
  }) {
    return secured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TileNeighbourTitle value)? secured,
  }) {
    return secured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TileNeighbourTitle value)? secured,
    required TResult orElse(),
  }) {
    if (secured != null) {
      return secured(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TileNeighbourTitleToJson(
      this,
    );
  }
}

abstract class _TileNeighbourTitle extends TileNeighbourTitle {
  const factory _TileNeighbourTitle({required final String value}) =
      _$_TileNeighbourTitle;
  const _TileNeighbourTitle._() : super._();

  factory _TileNeighbourTitle.fromJson(Map<String, dynamic> json) =
      _$_TileNeighbourTitle.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_TileNeighbourTitleCopyWith<_$_TileNeighbourTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

CellDataModel _$CellDataModelFromJson(Map<String, dynamic> json) {
  return _CellDataModel.fromJson(json);
}

/// @nodoc
mixin _$CellDataModel {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellDataModelCopyWith<$Res> {
  factory $CellDataModelCopyWith(
          CellDataModel value, $Res Function(CellDataModel) then) =
      _$CellDataModelCopyWithImpl<$Res, CellDataModel>;
}

/// @nodoc
class _$CellDataModelCopyWithImpl<$Res, $Val extends CellDataModel>
    implements $CellDataModelCopyWith<$Res> {
  _$CellDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CellDataModelCopyWith<$Res> {
  factory _$$_CellDataModelCopyWith(
          _$_CellDataModel value, $Res Function(_$_CellDataModel) then) =
      __$$_CellDataModelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CellDataModelCopyWithImpl<$Res>
    extends _$CellDataModelCopyWithImpl<$Res, _$_CellDataModel>
    implements _$$_CellDataModelCopyWith<$Res> {
  __$$_CellDataModelCopyWithImpl(
      _$_CellDataModel _value, $Res Function(_$_CellDataModel) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CellDataModel implements _CellDataModel {
  const _$_CellDataModel();

  factory _$_CellDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CellDataModelFromJson(json);

  @override
  String toString() {
    return 'CellDataModel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CellDataModel);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellDataModelToJson(
      this,
    );
  }
}

abstract class _CellDataModel implements CellDataModel {
  const factory _CellDataModel() = _$_CellDataModel;

  factory _CellDataModel.fromJson(Map<String, dynamic> json) =
      _$_CellDataModel.fromJson;
}

CellPointModel _$CellPointModelFromJson(Map<String, dynamic> json) {
  return _CellPointModel.fromJson(json);
}

/// @nodoc
mixin _$CellPointModel {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CellPointModelCopyWith<CellPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellPointModelCopyWith<$Res> {
  factory $CellPointModelCopyWith(
          CellPointModel value, $Res Function(CellPointModel) then) =
      _$CellPointModelCopyWithImpl<$Res, CellPointModel>;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$CellPointModelCopyWithImpl<$Res, $Val extends CellPointModel>
    implements $CellPointModelCopyWith<$Res> {
  _$CellPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CellPointModelCopyWith<$Res>
    implements $CellPointModelCopyWith<$Res> {
  factory _$$_CellPointModelCopyWith(
          _$_CellPointModel value, $Res Function(_$_CellPointModel) then) =
      __$$_CellPointModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$_CellPointModelCopyWithImpl<$Res>
    extends _$CellPointModelCopyWithImpl<$Res, _$_CellPointModel>
    implements _$$_CellPointModelCopyWith<$Res> {
  __$$_CellPointModelCopyWithImpl(
      _$_CellPointModel _value, $Res Function(_$_CellPointModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_CellPointModel(
      null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CellPointModel extends _CellPointModel {
  const _$_CellPointModel(this.x, this.y) : super._();

  factory _$_CellPointModel.fromJson(Map<String, dynamic> json) =>
      _$$_CellPointModelFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CellPointModelCopyWith<_$_CellPointModel> get copyWith =>
      __$$_CellPointModelCopyWithImpl<_$_CellPointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CellPointModelToJson(
      this,
    );
  }
}

abstract class _CellPointModel extends CellPointModel {
  const factory _CellPointModel(final int x, final int y) = _$_CellPointModel;
  const _CellPointModel._() : super._();

  factory _CellPointModel.fromJson(Map<String, dynamic> json) =
      _$_CellPointModel.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_CellPointModelCopyWith<_$_CellPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}
