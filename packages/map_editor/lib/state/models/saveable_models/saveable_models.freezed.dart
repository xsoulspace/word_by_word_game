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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CanvasDataModelId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CanvasDataModelIdCopyWith<CanvasDataModelId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CanvasDataModelIdCopyWith<$Res> {
  factory $CanvasDataModelIdCopyWith(
          CanvasDataModelId value, $Res Function(CanvasDataModelId) then) =
      _$CanvasDataModelIdCopyWithImpl<$Res, CanvasDataModelId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$CanvasDataModelIdCopyWithImpl<$Res, $Val extends CanvasDataModelId>
    implements $CanvasDataModelIdCopyWith<$Res> {
  _$CanvasDataModelIdCopyWithImpl(this._value, this._then);

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
abstract class _$$CanvasDataModelIdImplCopyWith<$Res>
    implements $CanvasDataModelIdCopyWith<$Res> {
  factory _$$CanvasDataModelIdImplCopyWith(_$CanvasDataModelIdImpl value,
          $Res Function(_$CanvasDataModelIdImpl) then) =
      __$$CanvasDataModelIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$CanvasDataModelIdImplCopyWithImpl<$Res>
    extends _$CanvasDataModelIdCopyWithImpl<$Res, _$CanvasDataModelIdImpl>
    implements _$$CanvasDataModelIdImplCopyWith<$Res> {
  __$$CanvasDataModelIdImplCopyWithImpl(_$CanvasDataModelIdImpl _value,
      $Res Function(_$CanvasDataModelIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CanvasDataModelIdImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CanvasDataModelIdImpl extends _CanvasDataModelId {
  const _$CanvasDataModelIdImpl({required this.value}) : super._();

  @override
  final String value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CanvasDataModelIdImplCopyWith<_$CanvasDataModelIdImpl> get copyWith =>
      __$$CanvasDataModelIdImplCopyWithImpl<_$CanvasDataModelIdImpl>(
          this, _$identity);
}

abstract class _CanvasDataModelId extends CanvasDataModelId {
  const factory _CanvasDataModelId({required final String value}) =
      _$CanvasDataModelIdImpl;
  const _CanvasDataModelId._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CanvasDataModelIdImplCopyWith<_$CanvasDataModelIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CanvasDataModel _$CanvasDataModelFromJson(Map<String, dynamic> json) {
  return _CanvasDataModel.fromJson(json);
}

/// @nodoc
mixin _$CanvasDataModel {
  @JsonKey(
      fromJson: CanvasDataModelId.fromJson,
      toJson: CanvasDataModelId.toJsonString)
  CanvasDataModelId get id => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  LocalizedMap get name => throw _privateConstructorUsedError;
  List<LayerModel> get layers => throw _privateConstructorUsedError;

  /// Moving or idle obstacle, decoration - objects,
  /// like the birds, trees etc.
  ///
  /// The main idea, that any objet should be accessed from top to bottom
  /// This way there will be easy way to loop all objects or change just
  /// one object.
  @JsonKey(
      fromJson: CanvasDataModel.objectsFromJson,
      toJson: CanvasDataModel.objectsToJson)
  Map<Gid, RenderObjectModel> get objects => throw _privateConstructorUsedError;

  /// As player is unique - it should be used separately from [objects].
  RenderObjectModel get playerObject => throw _privateConstructorUsedError;

  /// can be negative and positive. Should be absolute tile index.
  int get skyYTilePosition => throw _privateConstructorUsedError;

  /// can be negative and positive. Should be absolute tile index.
  GravityModel get gravity => throw _privateConstructorUsedError;
  List<TechnologyModel> get technologies => throw _privateConstructorUsedError;
  TilesetType get tilesetType => throw _privateConstructorUsedError;

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
      {@JsonKey(
          fromJson: CanvasDataModelId.fromJson,
          toJson: CanvasDataModelId.toJsonString)
      CanvasDataModelId id,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      LocalizedMap name,
      List<LayerModel> layers,
      @JsonKey(
          fromJson: CanvasDataModel.objectsFromJson,
          toJson: CanvasDataModel.objectsToJson)
      Map<Gid, RenderObjectModel> objects,
      RenderObjectModel playerObject,
      int skyYTilePosition,
      GravityModel gravity,
      List<TechnologyModel> technologies,
      TilesetType tilesetType});

  $CanvasDataModelIdCopyWith<$Res> get id;
  $LocalizedMapCopyWith<$Res> get name;
  $RenderObjectModelCopyWith<$Res> get playerObject;
  $GravityModelCopyWith<$Res> get gravity;
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
    Object? id = null,
    Object? name = null,
    Object? layers = null,
    Object? objects = null,
    Object? playerObject = null,
    Object? skyYTilePosition = null,
    Object? gravity = null,
    Object? technologies = null,
    Object? tilesetType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
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
      skyYTilePosition: null == skyYTilePosition
          ? _value.skyYTilePosition
          : skyYTilePosition // ignore: cast_nullable_to_non_nullable
              as int,
      gravity: null == gravity
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as GravityModel,
      technologies: null == technologies
          ? _value.technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<TechnologyModel>,
      tilesetType: null == tilesetType
          ? _value.tilesetType
          : tilesetType // ignore: cast_nullable_to_non_nullable
              as TilesetType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CanvasDataModelIdCopyWith<$Res> get id {
    return $CanvasDataModelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalizedMapCopyWith<$Res> get name {
    return $LocalizedMapCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RenderObjectModelCopyWith<$Res> get playerObject {
    return $RenderObjectModelCopyWith<$Res>(_value.playerObject, (value) {
      return _then(_value.copyWith(playerObject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GravityModelCopyWith<$Res> get gravity {
    return $GravityModelCopyWith<$Res>(_value.gravity, (value) {
      return _then(_value.copyWith(gravity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CanvasDataModelImplCopyWith<$Res>
    implements $CanvasDataModelCopyWith<$Res> {
  factory _$$CanvasDataModelImplCopyWith(_$CanvasDataModelImpl value,
          $Res Function(_$CanvasDataModelImpl) then) =
      __$$CanvasDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: CanvasDataModelId.fromJson,
          toJson: CanvasDataModelId.toJsonString)
      CanvasDataModelId id,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      LocalizedMap name,
      List<LayerModel> layers,
      @JsonKey(
          fromJson: CanvasDataModel.objectsFromJson,
          toJson: CanvasDataModel.objectsToJson)
      Map<Gid, RenderObjectModel> objects,
      RenderObjectModel playerObject,
      int skyYTilePosition,
      GravityModel gravity,
      List<TechnologyModel> technologies,
      TilesetType tilesetType});

  @override
  $CanvasDataModelIdCopyWith<$Res> get id;
  @override
  $LocalizedMapCopyWith<$Res> get name;
  @override
  $RenderObjectModelCopyWith<$Res> get playerObject;
  @override
  $GravityModelCopyWith<$Res> get gravity;
}

/// @nodoc
class __$$CanvasDataModelImplCopyWithImpl<$Res>
    extends _$CanvasDataModelCopyWithImpl<$Res, _$CanvasDataModelImpl>
    implements _$$CanvasDataModelImplCopyWith<$Res> {
  __$$CanvasDataModelImplCopyWithImpl(
      _$CanvasDataModelImpl _value, $Res Function(_$CanvasDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? layers = null,
    Object? objects = null,
    Object? playerObject = null,
    Object? skyYTilePosition = null,
    Object? gravity = null,
    Object? technologies = null,
    Object? tilesetType = null,
  }) {
    return _then(_$CanvasDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CanvasDataModelId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizedMap,
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
      skyYTilePosition: null == skyYTilePosition
          ? _value.skyYTilePosition
          : skyYTilePosition // ignore: cast_nullable_to_non_nullable
              as int,
      gravity: null == gravity
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as GravityModel,
      technologies: null == technologies
          ? _value._technologies
          : technologies // ignore: cast_nullable_to_non_nullable
              as List<TechnologyModel>,
      tilesetType: null == tilesetType
          ? _value.tilesetType
          : tilesetType // ignore: cast_nullable_to_non_nullable
              as TilesetType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CanvasDataModelImpl extends _CanvasDataModel {
  const _$CanvasDataModelImpl(
      {@JsonKey(
          fromJson: CanvasDataModelId.fromJson,
          toJson: CanvasDataModelId.toJsonString)
      this.id = CanvasDataModelId.empty,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      this.name = LocalizedMap.empty,
      final List<LayerModel> layers = const [],
      @JsonKey(
          fromJson: CanvasDataModel.objectsFromJson,
          toJson: CanvasDataModel.objectsToJson)
      final Map<Gid, RenderObjectModel> objects = const {},
      this.playerObject = RenderObjectModel.empty,
      this.skyYTilePosition = 0,
      this.gravity = GravityModel.initial,
      final List<TechnologyModel> technologies = const [],
      this.tilesetType = TilesetType.colourful})
      : _layers = layers,
        _objects = objects,
        _technologies = technologies,
        super._();

  factory _$CanvasDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CanvasDataModelImplFromJson(json);

  @override
  @JsonKey(
      fromJson: CanvasDataModelId.fromJson,
      toJson: CanvasDataModelId.toJsonString)
  final CanvasDataModelId id;
  @override
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  final LocalizedMap name;
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
      fromJson: CanvasDataModel.objectsFromJson,
      toJson: CanvasDataModel.objectsToJson)
  Map<Gid, RenderObjectModel> get objects {
    if (_objects is EqualUnmodifiableMapView) return _objects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_objects);
  }

  /// As player is unique - it should be used separately from [objects].
  @override
  @JsonKey()
  final RenderObjectModel playerObject;

  /// can be negative and positive. Should be absolute tile index.
  @override
  @JsonKey()
  final int skyYTilePosition;

  /// can be negative and positive. Should be absolute tile index.
  @override
  @JsonKey()
  final GravityModel gravity;
  final List<TechnologyModel> _technologies;
  @override
  @JsonKey()
  List<TechnologyModel> get technologies {
    if (_technologies is EqualUnmodifiableListView) return _technologies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_technologies);
  }

  @override
  @JsonKey()
  final TilesetType tilesetType;

  @override
  String toString() {
    return 'CanvasDataModel(id: $id, name: $name, layers: $layers, objects: $objects, playerObject: $playerObject, skyYTilePosition: $skyYTilePosition, gravity: $gravity, technologies: $technologies, tilesetType: $tilesetType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CanvasDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._layers, _layers) &&
            const DeepCollectionEquality().equals(other._objects, _objects) &&
            (identical(other.playerObject, playerObject) ||
                other.playerObject == playerObject) &&
            (identical(other.skyYTilePosition, skyYTilePosition) ||
                other.skyYTilePosition == skyYTilePosition) &&
            (identical(other.gravity, gravity) || other.gravity == gravity) &&
            const DeepCollectionEquality()
                .equals(other._technologies, _technologies) &&
            (identical(other.tilesetType, tilesetType) ||
                other.tilesetType == tilesetType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_layers),
      const DeepCollectionEquality().hash(_objects),
      playerObject,
      skyYTilePosition,
      gravity,
      const DeepCollectionEquality().hash(_technologies),
      tilesetType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CanvasDataModelImplCopyWith<_$CanvasDataModelImpl> get copyWith =>
      __$$CanvasDataModelImplCopyWithImpl<_$CanvasDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CanvasDataModelImplToJson(
      this,
    );
  }
}

abstract class _CanvasDataModel extends CanvasDataModel {
  const factory _CanvasDataModel(
      {@JsonKey(
          fromJson: CanvasDataModelId.fromJson,
          toJson: CanvasDataModelId.toJsonString)
      final CanvasDataModelId id,
      @JsonKey(
          fromJson: LocalizedMap.fromJsonValueMap,
          toJson: LocalizedMap.toJsonValueMap)
      final LocalizedMap name,
      final List<LayerModel> layers,
      @JsonKey(
          fromJson: CanvasDataModel.objectsFromJson,
          toJson: CanvasDataModel.objectsToJson)
      final Map<Gid, RenderObjectModel> objects,
      final RenderObjectModel playerObject,
      final int skyYTilePosition,
      final GravityModel gravity,
      final List<TechnologyModel> technologies,
      final TilesetType tilesetType}) = _$CanvasDataModelImpl;
  const _CanvasDataModel._() : super._();

  factory _CanvasDataModel.fromJson(Map<String, dynamic> json) =
      _$CanvasDataModelImpl.fromJson;

  @override
  @JsonKey(
      fromJson: CanvasDataModelId.fromJson,
      toJson: CanvasDataModelId.toJsonString)
  CanvasDataModelId get id;
  @override
  @JsonKey(
      fromJson: LocalizedMap.fromJsonValueMap,
      toJson: LocalizedMap.toJsonValueMap)
  LocalizedMap get name;
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
      fromJson: CanvasDataModel.objectsFromJson,
      toJson: CanvasDataModel.objectsToJson)
  Map<Gid, RenderObjectModel> get objects;
  @override

  /// As player is unique - it should be used separately from [objects].
  RenderObjectModel get playerObject;
  @override

  /// can be negative and positive. Should be absolute tile index.
  int get skyYTilePosition;
  @override

  /// can be negative and positive. Should be absolute tile index.
  GravityModel get gravity;
  @override
  List<TechnologyModel> get technologies;
  @override
  TilesetType get tilesetType;
  @override
  @JsonKey(ignore: true)
  _$$CanvasDataModelImplCopyWith<_$CanvasDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GravityModel _$GravityModelFromJson(Map<String, dynamic> json) {
  return _GravityModel.fromJson(json);
}

/// @nodoc
mixin _$GravityModel {
  ///absolute tile position. may be negative and positive
  int get yTilePosition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GravityModelCopyWith<GravityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GravityModelCopyWith<$Res> {
  factory $GravityModelCopyWith(
          GravityModel value, $Res Function(GravityModel) then) =
      _$GravityModelCopyWithImpl<$Res, GravityModel>;
  @useResult
  $Res call({int yTilePosition});
}

/// @nodoc
class _$GravityModelCopyWithImpl<$Res, $Val extends GravityModel>
    implements $GravityModelCopyWith<$Res> {
  _$GravityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yTilePosition = null,
  }) {
    return _then(_value.copyWith(
      yTilePosition: null == yTilePosition
          ? _value.yTilePosition
          : yTilePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GravityModelImplCopyWith<$Res>
    implements $GravityModelCopyWith<$Res> {
  factory _$$GravityModelImplCopyWith(
          _$GravityModelImpl value, $Res Function(_$GravityModelImpl) then) =
      __$$GravityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int yTilePosition});
}

/// @nodoc
class __$$GravityModelImplCopyWithImpl<$Res>
    extends _$GravityModelCopyWithImpl<$Res, _$GravityModelImpl>
    implements _$$GravityModelImplCopyWith<$Res> {
  __$$GravityModelImplCopyWithImpl(
      _$GravityModelImpl _value, $Res Function(_$GravityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yTilePosition = null,
  }) {
    return _then(_$GravityModelImpl(
      yTilePosition: null == yTilePosition
          ? _value.yTilePosition
          : yTilePosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GravityModelImpl extends _GravityModel {
  const _$GravityModelImpl({required this.yTilePosition}) : super._();

  factory _$GravityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GravityModelImplFromJson(json);

  ///absolute tile position. may be negative and positive
  @override
  final int yTilePosition;

  @override
  String toString() {
    return 'GravityModel(yTilePosition: $yTilePosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GravityModelImpl &&
            (identical(other.yTilePosition, yTilePosition) ||
                other.yTilePosition == yTilePosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, yTilePosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GravityModelImplCopyWith<_$GravityModelImpl> get copyWith =>
      __$$GravityModelImplCopyWithImpl<_$GravityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GravityModelImplToJson(
      this,
    );
  }
}

abstract class _GravityModel extends GravityModel {
  const factory _GravityModel({required final int yTilePosition}) =
      _$GravityModelImpl;
  const _GravityModel._() : super._();

  factory _GravityModel.fromJson(Map<String, dynamic> json) =
      _$GravityModelImpl.fromJson;

  @override

  ///absolute tile position. may be negative and positive
  int get yTilePosition;
  @override
  @JsonKey(ignore: true)
  _$$GravityModelImplCopyWith<_$GravityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LayerModelId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LayerModelIdCopyWith<LayerModelId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayerModelIdCopyWith<$Res> {
  factory $LayerModelIdCopyWith(
          LayerModelId value, $Res Function(LayerModelId) then) =
      _$LayerModelIdCopyWithImpl<$Res, LayerModelId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$LayerModelIdCopyWithImpl<$Res, $Val extends LayerModelId>
    implements $LayerModelIdCopyWith<$Res> {
  _$LayerModelIdCopyWithImpl(this._value, this._then);

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
abstract class _$$LayerModelIdImplCopyWith<$Res>
    implements $LayerModelIdCopyWith<$Res> {
  factory _$$LayerModelIdImplCopyWith(
          _$LayerModelIdImpl value, $Res Function(_$LayerModelIdImpl) then) =
      __$$LayerModelIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$LayerModelIdImplCopyWithImpl<$Res>
    extends _$LayerModelIdCopyWithImpl<$Res, _$LayerModelIdImpl>
    implements _$$LayerModelIdImplCopyWith<$Res> {
  __$$LayerModelIdImplCopyWithImpl(
      _$LayerModelIdImpl _value, $Res Function(_$LayerModelIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$LayerModelIdImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LayerModelIdImpl extends _LayerModelId {
  const _$LayerModelIdImpl({required this.value}) : super._();

  @override
  final String value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayerModelIdImplCopyWith<_$LayerModelIdImpl> get copyWith =>
      __$$LayerModelIdImplCopyWithImpl<_$LayerModelIdImpl>(this, _$identity);
}

abstract class _LayerModelId extends LayerModelId {
  const factory _LayerModelId({required final String value}) =
      _$LayerModelIdImpl;
  const _LayerModelId._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$LayerModelIdImplCopyWith<_$LayerModelIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LayerModel _$LayerModelFromJson(Map<String, dynamic> json) {
  return _LayerModel.fromJson(json);
}

/// @nodoc
mixin _$LayerModel {
  @JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
  LayerModelId get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
  Map<CellPointModel, CellTileModel> get tiles =>
      throw _privateConstructorUsedError;

  /// determines is tiles in this layer should be
  /// treated as hitboxes
  bool get isCollidable => throw _privateConstructorUsedError;
  CollisionConsequence get collisionConsequence =>
      throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;

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
      {@JsonKey(
          fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
      LayerModelId id,
      String title,
      @JsonKey(
          fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
      Map<CellPointModel, CellTileModel> tiles,
      bool isCollidable,
      CollisionConsequence collisionConsequence,
      bool isVisible});

  $LayerModelIdCopyWith<$Res> get id;
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
    Object? id = null,
    Object? title = null,
    Object? tiles = null,
    Object? isCollidable = null,
    Object? collisionConsequence = null,
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as LayerModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tiles: null == tiles
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<CellPointModel, CellTileModel>,
      isCollidable: null == isCollidable
          ? _value.isCollidable
          : isCollidable // ignore: cast_nullable_to_non_nullable
              as bool,
      collisionConsequence: null == collisionConsequence
          ? _value.collisionConsequence
          : collisionConsequence // ignore: cast_nullable_to_non_nullable
              as CollisionConsequence,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LayerModelIdCopyWith<$Res> get id {
    return $LayerModelIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LayerModelImplCopyWith<$Res>
    implements $LayerModelCopyWith<$Res> {
  factory _$$LayerModelImplCopyWith(
          _$LayerModelImpl value, $Res Function(_$LayerModelImpl) then) =
      __$$LayerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
      LayerModelId id,
      String title,
      @JsonKey(
          fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
      Map<CellPointModel, CellTileModel> tiles,
      bool isCollidable,
      CollisionConsequence collisionConsequence,
      bool isVisible});

  @override
  $LayerModelIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$LayerModelImplCopyWithImpl<$Res>
    extends _$LayerModelCopyWithImpl<$Res, _$LayerModelImpl>
    implements _$$LayerModelImplCopyWith<$Res> {
  __$$LayerModelImplCopyWithImpl(
      _$LayerModelImpl _value, $Res Function(_$LayerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? tiles = null,
    Object? isCollidable = null,
    Object? collisionConsequence = null,
    Object? isVisible = null,
  }) {
    return _then(_$LayerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as LayerModelId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tiles: null == tiles
          ? _value._tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as Map<CellPointModel, CellTileModel>,
      isCollidable: null == isCollidable
          ? _value.isCollidable
          : isCollidable // ignore: cast_nullable_to_non_nullable
              as bool,
      collisionConsequence: null == collisionConsequence
          ? _value.collisionConsequence
          : collisionConsequence // ignore: cast_nullable_to_non_nullable
              as CollisionConsequence,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LayerModelImpl extends _LayerModel {
  const _$LayerModelImpl(
      {@JsonKey(
          fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
      required this.id,
      this.title = '',
      @JsonKey(
          fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
      final Map<CellPointModel, CellTileModel> tiles = const {},
      this.isCollidable = false,
      this.collisionConsequence = CollisionConsequence.none,
      this.isVisible = true})
      : _tiles = tiles,
        super._();

  factory _$LayerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayerModelImplFromJson(json);

  @override
  @JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
  final LayerModelId id;
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

  /// determines is tiles in this layer should be
  /// treated as hitboxes
  @override
  @JsonKey()
  final bool isCollidable;
  @override
  @JsonKey()
  final CollisionConsequence collisionConsequence;
  @override
  @JsonKey()
  final bool isVisible;

  @override
  String toString() {
    return 'LayerModel(id: $id, title: $title, tiles: $tiles, isCollidable: $isCollidable, collisionConsequence: $collisionConsequence, isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tiles, _tiles) &&
            (identical(other.isCollidable, isCollidable) ||
                other.isCollidable == isCollidable) &&
            (identical(other.collisionConsequence, collisionConsequence) ||
                other.collisionConsequence == collisionConsequence) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_tiles),
      isCollidable,
      collisionConsequence,
      isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayerModelImplCopyWith<_$LayerModelImpl> get copyWith =>
      __$$LayerModelImplCopyWithImpl<_$LayerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayerModelImplToJson(
      this,
    );
  }
}

abstract class _LayerModel extends LayerModel {
  const factory _LayerModel(
      {@JsonKey(
          fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
      required final LayerModelId id,
      final String title,
      @JsonKey(
          fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
      final Map<CellPointModel, CellTileModel> tiles,
      final bool isCollidable,
      final CollisionConsequence collisionConsequence,
      final bool isVisible}) = _$LayerModelImpl;
  const _LayerModel._() : super._();

  factory _LayerModel.fromJson(Map<String, dynamic> json) =
      _$LayerModelImpl.fromJson;

  @override
  @JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)
  LayerModelId get id;
  @override
  String get title;
  @override
  @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)
  Map<CellPointModel, CellTileModel> get tiles;
  @override

  /// determines is tiles in this layer should be
  /// treated as hitboxes
  bool get isCollidable;
  @override
  CollisionConsequence get collisionConsequence;
  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$LayerModelImplCopyWith<_$LayerModelImpl> get copyWith =>
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
abstract class _$$CellTileModelImplCopyWith<$Res>
    implements $CellTileModelCopyWith<$Res> {
  factory _$$CellTileModelImplCopyWith(
          _$CellTileModelImpl value, $Res Function(_$CellTileModelImpl) then) =
      __$$CellTileModelImplCopyWithImpl<$Res>;
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
class __$$CellTileModelImplCopyWithImpl<$Res>
    extends _$CellTileModelCopyWithImpl<$Res, _$CellTileModelImpl>
    implements _$$CellTileModelImplCopyWith<$Res> {
  __$$CellTileModelImplCopyWithImpl(
      _$CellTileModelImpl _value, $Res Function(_$CellTileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tileId = null,
    Object? tileNeighbours = null,
    Object? objects = null,
    Object? npcs = null,
  }) {
    return _then(_$CellTileModelImpl(
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
class _$CellTileModelImpl extends _CellTileModel {
  const _$CellTileModelImpl(
      {this.tileId = TileId.empty,
      final List<TileNeighbourTitle> tileNeighbours = const [],
      final List<Gid> objects = const [],
      final List<Gid> npcs = const []})
      : _tileNeighbours = tileNeighbours,
        _objects = objects,
        _npcs = npcs,
        super._();

  factory _$CellTileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellTileModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CellTileModelImpl &&
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
  _$$CellTileModelImplCopyWith<_$CellTileModelImpl> get copyWith =>
      __$$CellTileModelImplCopyWithImpl<_$CellTileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CellTileModelImplToJson(
      this,
    );
  }
}

abstract class _CellTileModel extends CellTileModel {
  const factory _CellTileModel(
      {final TileId tileId,
      final List<TileNeighbourTitle> tileNeighbours,
      final List<Gid> objects,
      final List<Gid> npcs}) = _$CellTileModelImpl;
  const _CellTileModel._() : super._();

  factory _CellTileModel.fromJson(Map<String, dynamic> json) =
      _$CellTileModelImpl.fromJson;

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
  _$$CellTileModelImplCopyWith<_$CellTileModelImpl> get copyWith =>
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
abstract class _$$RenderObjectModelImplCopyWith<$Res>
    implements $RenderObjectModelCopyWith<$Res> {
  factory _$$RenderObjectModelImplCopyWith(_$RenderObjectModelImpl value,
          $Res Function(_$RenderObjectModelImpl) then) =
      __$$RenderObjectModelImplCopyWithImpl<$Res>;
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
class __$$RenderObjectModelImplCopyWithImpl<$Res>
    extends _$RenderObjectModelCopyWithImpl<$Res, _$RenderObjectModelImpl>
    implements _$$RenderObjectModelImplCopyWith<$Res> {
  __$$RenderObjectModelImplCopyWithImpl(_$RenderObjectModelImpl _value,
      $Res Function(_$RenderObjectModelImpl) _then)
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
    return _then(_$RenderObjectModelImpl(
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
class _$RenderObjectModelImpl extends _RenderObjectModel {
  const _$RenderObjectModelImpl(
      {required this.id,
      required this.tileId,
      this.position = SerializedVector2.zero,
      this.distanceToOrigin = SerializedVector2.zero,
      this.distanceToTileLeftTopCorner = SerializedVector2.zero,
      this.animationBehaviour = TileBehaviourType.idle})
      : super._();

  factory _$RenderObjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenderObjectModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenderObjectModelImpl &&
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
  _$$RenderObjectModelImplCopyWith<_$RenderObjectModelImpl> get copyWith =>
      __$$RenderObjectModelImplCopyWithImpl<_$RenderObjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RenderObjectModelImplToJson(
      this,
    );
  }
}

abstract class _RenderObjectModel extends RenderObjectModel {
  const factory _RenderObjectModel(
      {required final Gid id,
      required final TileId tileId,
      final SerializedVector2 position,
      final SerializedVector2 distanceToOrigin,
      final SerializedVector2 distanceToTileLeftTopCorner,
      final TileBehaviourType animationBehaviour}) = _$RenderObjectModelImpl;
  const _RenderObjectModel._() : super._();

  factory _RenderObjectModel.fromJson(Map<String, dynamic> json) =
      _$RenderObjectModelImpl.fromJson;

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
  _$$RenderObjectModelImplCopyWith<_$RenderObjectModelImpl> get copyWith =>
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
abstract class _$$GidImplCopyWith<$Res> implements $GidCopyWith<$Res> {
  factory _$$GidImplCopyWith(_$GidImpl value, $Res Function(_$GidImpl) then) =
      __$$GidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$GidImplCopyWithImpl<$Res> extends _$GidCopyWithImpl<$Res, _$GidImpl>
    implements _$$GidImplCopyWith<$Res> {
  __$$GidImplCopyWithImpl(_$GidImpl _value, $Res Function(_$GidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$GidImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$GidImpl extends _Gid {
  const _$GidImpl({required this.value}) : super._();

  @override
  final String value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GidImplCopyWith<_$GidImpl> get copyWith =>
      __$$GidImplCopyWithImpl<_$GidImpl>(this, _$identity);
}

abstract class _Gid extends Gid {
  const factory _Gid({required final String value}) = _$GidImpl;
  const _Gid._() : super._();

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$GidImplCopyWith<_$GidImpl> get copyWith =>
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
abstract class _$$PlayerModelImplCopyWith<$Res>
    implements $PlayerModelCopyWith<$Res> {
  factory _$$PlayerModelImplCopyWith(
          _$PlayerModelImpl value, $Res Function(_$PlayerModelImpl) then) =
      __$$PlayerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Gid id});

  @override
  $GidCopyWith<$Res> get id;
}

/// @nodoc
class __$$PlayerModelImplCopyWithImpl<$Res>
    extends _$PlayerModelCopyWithImpl<$Res, _$PlayerModelImpl>
    implements _$$PlayerModelImplCopyWith<$Res> {
  __$$PlayerModelImplCopyWithImpl(
      _$PlayerModelImpl _value, $Res Function(_$PlayerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$PlayerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Gid,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerModelImpl extends _PlayerModel {
  const _$PlayerModelImpl({required this.id}) : super._();

  factory _$PlayerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerModelImplFromJson(json);

  /// to get access to [RenderObjectModel]
  /// just use [CanvasDataModel.player] with gid verification
  @override
  final Gid id;

  @override
  String toString() {
    return 'PlayerModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerModelImplCopyWith<_$PlayerModelImpl> get copyWith =>
      __$$PlayerModelImplCopyWithImpl<_$PlayerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerModel extends PlayerModel {
  const factory _PlayerModel({required final Gid id}) = _$PlayerModelImpl;
  const _PlayerModel._() : super._();

  factory _PlayerModel.fromJson(Map<String, dynamic> json) =
      _$PlayerModelImpl.fromJson;

  @override

  /// to get access to [RenderObjectModel]
  /// just use [CanvasDataModel.player] with gid verification
  Gid get id;
  @override
  @JsonKey(ignore: true)
  _$$PlayerModelImplCopyWith<_$PlayerModelImpl> get copyWith =>
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
abstract class _$$TileNeighbourTitleImplCopyWith<$Res>
    implements $TileNeighbourTitleCopyWith<$Res> {
  factory _$$TileNeighbourTitleImplCopyWith(_$TileNeighbourTitleImpl value,
          $Res Function(_$TileNeighbourTitleImpl) then) =
      __$$TileNeighbourTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$TileNeighbourTitleImplCopyWithImpl<$Res>
    extends _$TileNeighbourTitleCopyWithImpl<$Res, _$TileNeighbourTitleImpl>
    implements _$$TileNeighbourTitleImplCopyWith<$Res> {
  __$$TileNeighbourTitleImplCopyWithImpl(_$TileNeighbourTitleImpl _value,
      $Res Function(_$TileNeighbourTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TileNeighbourTitleImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TileNeighbourTitleImpl extends _TileNeighbourTitle {
  const _$TileNeighbourTitleImpl({required this.value}) : super._();

  factory _$TileNeighbourTitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TileNeighbourTitleImplFromJson(json);

  @override
  final String value;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TileNeighbourTitleImplCopyWith<_$TileNeighbourTitleImpl> get copyWith =>
      __$$TileNeighbourTitleImplCopyWithImpl<_$TileNeighbourTitleImpl>(
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
    return _$$TileNeighbourTitleImplToJson(
      this,
    );
  }
}

abstract class _TileNeighbourTitle extends TileNeighbourTitle {
  const factory _TileNeighbourTitle({required final String value}) =
      _$TileNeighbourTitleImpl;
  const _TileNeighbourTitle._() : super._();

  factory _TileNeighbourTitle.fromJson(Map<String, dynamic> json) =
      _$TileNeighbourTitleImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$TileNeighbourTitleImplCopyWith<_$TileNeighbourTitleImpl> get copyWith =>
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
abstract class _$$CellDataModelImplCopyWith<$Res> {
  factory _$$CellDataModelImplCopyWith(
          _$CellDataModelImpl value, $Res Function(_$CellDataModelImpl) then) =
      __$$CellDataModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CellDataModelImplCopyWithImpl<$Res>
    extends _$CellDataModelCopyWithImpl<$Res, _$CellDataModelImpl>
    implements _$$CellDataModelImplCopyWith<$Res> {
  __$$CellDataModelImplCopyWithImpl(
      _$CellDataModelImpl _value, $Res Function(_$CellDataModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CellDataModelImpl implements _CellDataModel {
  const _$CellDataModelImpl();

  factory _$CellDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellDataModelImplFromJson(json);

  @override
  String toString() {
    return 'CellDataModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CellDataModelImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$CellDataModelImplToJson(
      this,
    );
  }
}

abstract class _CellDataModel implements CellDataModel {
  const factory _CellDataModel() = _$CellDataModelImpl;

  factory _CellDataModel.fromJson(Map<String, dynamic> json) =
      _$CellDataModelImpl.fromJson;
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
abstract class _$$CellPointModelImplCopyWith<$Res>
    implements $CellPointModelCopyWith<$Res> {
  factory _$$CellPointModelImplCopyWith(_$CellPointModelImpl value,
          $Res Function(_$CellPointModelImpl) then) =
      __$$CellPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$CellPointModelImplCopyWithImpl<$Res>
    extends _$CellPointModelCopyWithImpl<$Res, _$CellPointModelImpl>
    implements _$$CellPointModelImplCopyWith<$Res> {
  __$$CellPointModelImplCopyWithImpl(
      _$CellPointModelImpl _value, $Res Function(_$CellPointModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$CellPointModelImpl(
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
class _$CellPointModelImpl extends _CellPointModel {
  const _$CellPointModelImpl(this.x, this.y) : super._();

  factory _$CellPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CellPointModelImplFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CellPointModelImplCopyWith<_$CellPointModelImpl> get copyWith =>
      __$$CellPointModelImplCopyWithImpl<_$CellPointModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CellPointModelImplToJson(
      this,
    );
  }
}

abstract class _CellPointModel extends CellPointModel {
  const factory _CellPointModel(final int x, final int y) =
      _$CellPointModelImpl;
  const _CellPointModel._() : super._();

  factory _CellPointModel.fromJson(Map<String, dynamic> json) =
      _$CellPointModelImpl.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$CellPointModelImplCopyWith<_$CellPointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
