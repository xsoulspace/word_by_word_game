// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saveable_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CanvasDataModel {

@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString) CanvasDataModelId get id;@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap get name; List<LayerModel> get layers;/// Moving or idle obstacle, decoration - objects,
/// like the birds, trees etc.
///
/// The main idea, that any objet should be accessed from top to bottom
/// This way there will be easy way to loop all objects or change just
/// one object.
@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> get objects;/// As player is unique - it should be used separately from [objects].
 RenderObjectModel get playerObject;/// can be negative and positive. Should be absolute tile index.
 int get skyYTilePosition;/// can be negative and positive. Should be absolute tile index.
 GravityModel get gravity; List<TechnologyModel> get technologies; TilesetType get tilesetType;
/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanvasDataModelCopyWith<CanvasDataModel> get copyWith => _$CanvasDataModelCopyWithImpl<CanvasDataModel>(this as CanvasDataModel, _$identity);

  /// Serializes this CanvasDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanvasDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.layers, layers)&&const DeepCollectionEquality().equals(other.objects, objects)&&(identical(other.playerObject, playerObject) || other.playerObject == playerObject)&&(identical(other.skyYTilePosition, skyYTilePosition) || other.skyYTilePosition == skyYTilePosition)&&(identical(other.gravity, gravity) || other.gravity == gravity)&&const DeepCollectionEquality().equals(other.technologies, technologies)&&(identical(other.tilesetType, tilesetType) || other.tilesetType == tilesetType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(layers),const DeepCollectionEquality().hash(objects),playerObject,skyYTilePosition,gravity,const DeepCollectionEquality().hash(technologies),tilesetType);

@override
String toString() {
  return 'CanvasDataModel(id: $id, name: $name, layers: $layers, objects: $objects, playerObject: $playerObject, skyYTilePosition: $skyYTilePosition, gravity: $gravity, technologies: $technologies, tilesetType: $tilesetType)';
}


}

/// @nodoc
abstract mixin class $CanvasDataModelCopyWith<$Res>  {
  factory $CanvasDataModelCopyWith(CanvasDataModel value, $Res Function(CanvasDataModel) _then) = _$CanvasDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString) CanvasDataModelId id,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap name, List<LayerModel> layers,@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> objects, RenderObjectModel playerObject, int skyYTilePosition, GravityModel gravity, List<TechnologyModel> technologies, TilesetType tilesetType
});


$RenderObjectModelCopyWith<$Res> get playerObject;$GravityModelCopyWith<$Res> get gravity;

}
/// @nodoc
class _$CanvasDataModelCopyWithImpl<$Res>
    implements $CanvasDataModelCopyWith<$Res> {
  _$CanvasDataModelCopyWithImpl(this._self, this._then);

  final CanvasDataModel _self;
  final $Res Function(CanvasDataModel) _then;

/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? layers = null,Object? objects = null,Object? playerObject = null,Object? skyYTilePosition = null,Object? gravity = null,Object? technologies = null,Object? tilesetType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedMap,layers: null == layers ? _self.layers : layers // ignore: cast_nullable_to_non_nullable
as List<LayerModel>,objects: null == objects ? _self.objects : objects // ignore: cast_nullable_to_non_nullable
as Map<Gid, RenderObjectModel>,playerObject: null == playerObject ? _self.playerObject : playerObject // ignore: cast_nullable_to_non_nullable
as RenderObjectModel,skyYTilePosition: null == skyYTilePosition ? _self.skyYTilePosition : skyYTilePosition // ignore: cast_nullable_to_non_nullable
as int,gravity: null == gravity ? _self.gravity : gravity // ignore: cast_nullable_to_non_nullable
as GravityModel,technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<TechnologyModel>,tilesetType: null == tilesetType ? _self.tilesetType : tilesetType // ignore: cast_nullable_to_non_nullable
as TilesetType,
  ));
}
/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderObjectModelCopyWith<$Res> get playerObject {
  
  return $RenderObjectModelCopyWith<$Res>(_self.playerObject, (value) {
    return _then(_self.copyWith(playerObject: value));
  });
}/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GravityModelCopyWith<$Res> get gravity {
  
  return $GravityModelCopyWith<$Res>(_self.gravity, (value) {
    return _then(_self.copyWith(gravity: value));
  });
}
}


/// Adds pattern-matching-related methods to [CanvasDataModel].
extension CanvasDataModelPatterns on CanvasDataModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CanvasDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CanvasDataModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CanvasDataModel value)  $default,){
final _that = this;
switch (_that) {
case _CanvasDataModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CanvasDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _CanvasDataModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString)  CanvasDataModelId id, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap name,  List<LayerModel> layers, @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson)  Map<Gid, RenderObjectModel> objects,  RenderObjectModel playerObject,  int skyYTilePosition,  GravityModel gravity,  List<TechnologyModel> technologies,  TilesetType tilesetType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CanvasDataModel() when $default != null:
return $default(_that.id,_that.name,_that.layers,_that.objects,_that.playerObject,_that.skyYTilePosition,_that.gravity,_that.technologies,_that.tilesetType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString)  CanvasDataModelId id, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap name,  List<LayerModel> layers, @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson)  Map<Gid, RenderObjectModel> objects,  RenderObjectModel playerObject,  int skyYTilePosition,  GravityModel gravity,  List<TechnologyModel> technologies,  TilesetType tilesetType)  $default,) {final _that = this;
switch (_that) {
case _CanvasDataModel():
return $default(_that.id,_that.name,_that.layers,_that.objects,_that.playerObject,_that.skyYTilePosition,_that.gravity,_that.technologies,_that.tilesetType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString)  CanvasDataModelId id, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap name,  List<LayerModel> layers, @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson)  Map<Gid, RenderObjectModel> objects,  RenderObjectModel playerObject,  int skyYTilePosition,  GravityModel gravity,  List<TechnologyModel> technologies,  TilesetType tilesetType)?  $default,) {final _that = this;
switch (_that) {
case _CanvasDataModel() when $default != null:
return $default(_that.id,_that.name,_that.layers,_that.objects,_that.playerObject,_that.skyYTilePosition,_that.gravity,_that.technologies,_that.tilesetType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CanvasDataModel extends CanvasDataModel {
  const _CanvasDataModel({@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString) this.id = CanvasDataModelId.empty, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) this.name = LocalizedMap.empty, final  List<LayerModel> layers = const [], @JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) final  Map<Gid, RenderObjectModel> objects = const {}, this.playerObject = RenderObjectModel.empty, this.skyYTilePosition = 0, this.gravity = GravityModel.initial, final  List<TechnologyModel> technologies = const [], this.tilesetType = TilesetType.whiteBlack}): _layers = layers,_objects = objects,_technologies = technologies,super._();
  factory _CanvasDataModel.fromJson(Map<String, dynamic> json) => _$CanvasDataModelFromJson(json);

@override@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString) final  CanvasDataModelId id;
@override@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) final  LocalizedMap name;
 final  List<LayerModel> _layers;
@override@JsonKey() List<LayerModel> get layers {
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
 final  Map<Gid, RenderObjectModel> _objects;
/// Moving or idle obstacle, decoration - objects,
/// like the birds, trees etc.
///
/// The main idea, that any objet should be accessed from top to bottom
/// This way there will be easy way to loop all objects or change just
/// one object.
@override@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> get objects {
  if (_objects is EqualUnmodifiableMapView) return _objects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_objects);
}

/// As player is unique - it should be used separately from [objects].
@override@JsonKey() final  RenderObjectModel playerObject;
/// can be negative and positive. Should be absolute tile index.
@override@JsonKey() final  int skyYTilePosition;
/// can be negative and positive. Should be absolute tile index.
@override@JsonKey() final  GravityModel gravity;
 final  List<TechnologyModel> _technologies;
@override@JsonKey() List<TechnologyModel> get technologies {
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technologies);
}

@override@JsonKey() final  TilesetType tilesetType;

/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CanvasDataModelCopyWith<_CanvasDataModel> get copyWith => __$CanvasDataModelCopyWithImpl<_CanvasDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CanvasDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CanvasDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._layers, _layers)&&const DeepCollectionEquality().equals(other._objects, _objects)&&(identical(other.playerObject, playerObject) || other.playerObject == playerObject)&&(identical(other.skyYTilePosition, skyYTilePosition) || other.skyYTilePosition == skyYTilePosition)&&(identical(other.gravity, gravity) || other.gravity == gravity)&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&(identical(other.tilesetType, tilesetType) || other.tilesetType == tilesetType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_layers),const DeepCollectionEquality().hash(_objects),playerObject,skyYTilePosition,gravity,const DeepCollectionEquality().hash(_technologies),tilesetType);

@override
String toString() {
  return 'CanvasDataModel(id: $id, name: $name, layers: $layers, objects: $objects, playerObject: $playerObject, skyYTilePosition: $skyYTilePosition, gravity: $gravity, technologies: $technologies, tilesetType: $tilesetType)';
}


}

/// @nodoc
abstract mixin class _$CanvasDataModelCopyWith<$Res> implements $CanvasDataModelCopyWith<$Res> {
  factory _$CanvasDataModelCopyWith(_CanvasDataModel value, $Res Function(_CanvasDataModel) _then) = __$CanvasDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: CanvasDataModelId.fromJson, toJson: CanvasDataModelId.toJsonString) CanvasDataModelId id,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap name, List<LayerModel> layers,@JsonKey(fromJson: CanvasDataModel.objectsFromJson, toJson: CanvasDataModel.objectsToJson) Map<Gid, RenderObjectModel> objects, RenderObjectModel playerObject, int skyYTilePosition, GravityModel gravity, List<TechnologyModel> technologies, TilesetType tilesetType
});


@override $RenderObjectModelCopyWith<$Res> get playerObject;@override $GravityModelCopyWith<$Res> get gravity;

}
/// @nodoc
class __$CanvasDataModelCopyWithImpl<$Res>
    implements _$CanvasDataModelCopyWith<$Res> {
  __$CanvasDataModelCopyWithImpl(this._self, this._then);

  final _CanvasDataModel _self;
  final $Res Function(_CanvasDataModel) _then;

/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? layers = null,Object? objects = null,Object? playerObject = null,Object? skyYTilePosition = null,Object? gravity = null,Object? technologies = null,Object? tilesetType = null,}) {
  return _then(_CanvasDataModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as CanvasDataModelId,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedMap,layers: null == layers ? _self._layers : layers // ignore: cast_nullable_to_non_nullable
as List<LayerModel>,objects: null == objects ? _self._objects : objects // ignore: cast_nullable_to_non_nullable
as Map<Gid, RenderObjectModel>,playerObject: null == playerObject ? _self.playerObject : playerObject // ignore: cast_nullable_to_non_nullable
as RenderObjectModel,skyYTilePosition: null == skyYTilePosition ? _self.skyYTilePosition : skyYTilePosition // ignore: cast_nullable_to_non_nullable
as int,gravity: null == gravity ? _self.gravity : gravity // ignore: cast_nullable_to_non_nullable
as GravityModel,technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<TechnologyModel>,tilesetType: null == tilesetType ? _self.tilesetType : tilesetType // ignore: cast_nullable_to_non_nullable
as TilesetType,
  ));
}

/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RenderObjectModelCopyWith<$Res> get playerObject {
  
  return $RenderObjectModelCopyWith<$Res>(_self.playerObject, (value) {
    return _then(_self.copyWith(playerObject: value));
  });
}/// Create a copy of CanvasDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GravityModelCopyWith<$Res> get gravity {
  
  return $GravityModelCopyWith<$Res>(_self.gravity, (value) {
    return _then(_self.copyWith(gravity: value));
  });
}
}


/// @nodoc
mixin _$GravityModel {

///absolute tile position. may be negative and positive
 int get yTilePosition;
/// Create a copy of GravityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GravityModelCopyWith<GravityModel> get copyWith => _$GravityModelCopyWithImpl<GravityModel>(this as GravityModel, _$identity);

  /// Serializes this GravityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GravityModel&&(identical(other.yTilePosition, yTilePosition) || other.yTilePosition == yTilePosition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,yTilePosition);

@override
String toString() {
  return 'GravityModel(yTilePosition: $yTilePosition)';
}


}

/// @nodoc
abstract mixin class $GravityModelCopyWith<$Res>  {
  factory $GravityModelCopyWith(GravityModel value, $Res Function(GravityModel) _then) = _$GravityModelCopyWithImpl;
@useResult
$Res call({
 int yTilePosition
});




}
/// @nodoc
class _$GravityModelCopyWithImpl<$Res>
    implements $GravityModelCopyWith<$Res> {
  _$GravityModelCopyWithImpl(this._self, this._then);

  final GravityModel _self;
  final $Res Function(GravityModel) _then;

/// Create a copy of GravityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? yTilePosition = null,}) {
  return _then(_self.copyWith(
yTilePosition: null == yTilePosition ? _self.yTilePosition : yTilePosition // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GravityModel].
extension GravityModelPatterns on GravityModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GravityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GravityModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GravityModel value)  $default,){
final _that = this;
switch (_that) {
case _GravityModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GravityModel value)?  $default,){
final _that = this;
switch (_that) {
case _GravityModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int yTilePosition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GravityModel() when $default != null:
return $default(_that.yTilePosition);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int yTilePosition)  $default,) {final _that = this;
switch (_that) {
case _GravityModel():
return $default(_that.yTilePosition);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int yTilePosition)?  $default,) {final _that = this;
switch (_that) {
case _GravityModel() when $default != null:
return $default(_that.yTilePosition);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GravityModel extends GravityModel {
  const _GravityModel({required this.yTilePosition}): super._();
  factory _GravityModel.fromJson(Map<String, dynamic> json) => _$GravityModelFromJson(json);

///absolute tile position. may be negative and positive
@override final  int yTilePosition;

/// Create a copy of GravityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GravityModelCopyWith<_GravityModel> get copyWith => __$GravityModelCopyWithImpl<_GravityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GravityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GravityModel&&(identical(other.yTilePosition, yTilePosition) || other.yTilePosition == yTilePosition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,yTilePosition);

@override
String toString() {
  return 'GravityModel(yTilePosition: $yTilePosition)';
}


}

/// @nodoc
abstract mixin class _$GravityModelCopyWith<$Res> implements $GravityModelCopyWith<$Res> {
  factory _$GravityModelCopyWith(_GravityModel value, $Res Function(_GravityModel) _then) = __$GravityModelCopyWithImpl;
@override @useResult
$Res call({
 int yTilePosition
});




}
/// @nodoc
class __$GravityModelCopyWithImpl<$Res>
    implements _$GravityModelCopyWith<$Res> {
  __$GravityModelCopyWithImpl(this._self, this._then);

  final _GravityModel _self;
  final $Res Function(_GravityModel) _then;

/// Create a copy of GravityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? yTilePosition = null,}) {
  return _then(_GravityModel(
yTilePosition: null == yTilePosition ? _self.yTilePosition : yTilePosition // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$LayerModelId {

 String get value;
/// Create a copy of LayerModelId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LayerModelIdCopyWith<LayerModelId> get copyWith => _$LayerModelIdCopyWithImpl<LayerModelId>(this as LayerModelId, _$identity);







}

/// @nodoc
abstract mixin class $LayerModelIdCopyWith<$Res>  {
  factory $LayerModelIdCopyWith(LayerModelId value, $Res Function(LayerModelId) _then) = _$LayerModelIdCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$LayerModelIdCopyWithImpl<$Res>
    implements $LayerModelIdCopyWith<$Res> {
  _$LayerModelIdCopyWithImpl(this._self, this._then);

  final LayerModelId _self;
  final $Res Function(LayerModelId) _then;

/// Create a copy of LayerModelId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LayerModelId].
extension LayerModelIdPatterns on LayerModelId {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LayerModelId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LayerModelId() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LayerModelId value)  $default,){
final _that = this;
switch (_that) {
case _LayerModelId():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LayerModelId value)?  $default,){
final _that = this;
switch (_that) {
case _LayerModelId() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LayerModelId() when $default != null:
return $default(_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value)  $default,) {final _that = this;
switch (_that) {
case _LayerModelId():
return $default(_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value)?  $default,) {final _that = this;
switch (_that) {
case _LayerModelId() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _LayerModelId extends LayerModelId {
  const _LayerModelId({required this.value}): super._();
  

@override final  String value;

/// Create a copy of LayerModelId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LayerModelIdCopyWith<_LayerModelId> get copyWith => __$LayerModelIdCopyWithImpl<_LayerModelId>(this, _$identity);







}

/// @nodoc
abstract mixin class _$LayerModelIdCopyWith<$Res> implements $LayerModelIdCopyWith<$Res> {
  factory _$LayerModelIdCopyWith(_LayerModelId value, $Res Function(_LayerModelId) _then) = __$LayerModelIdCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$LayerModelIdCopyWithImpl<$Res>
    implements _$LayerModelIdCopyWith<$Res> {
  __$LayerModelIdCopyWithImpl(this._self, this._then);

  final _LayerModelId _self;
  final $Res Function(_LayerModelId) _then;

/// Create a copy of LayerModelId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_LayerModelId(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LayerModel {

@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString) LayerModelId get id; String get title;@JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson) Map<CellPointModel, CellTileModel> get tiles;/// determines is tiles in this layer should be
/// treated as hitboxes
 bool get isCollidable; CollisionConsequence get collisionConsequence; bool get isVisible;
/// Create a copy of LayerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LayerModelCopyWith<LayerModel> get copyWith => _$LayerModelCopyWithImpl<LayerModel>(this as LayerModel, _$identity);

  /// Serializes this LayerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LayerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.tiles, tiles)&&(identical(other.isCollidable, isCollidable) || other.isCollidable == isCollidable)&&(identical(other.collisionConsequence, collisionConsequence) || other.collisionConsequence == collisionConsequence)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(tiles),isCollidable,collisionConsequence,isVisible);

@override
String toString() {
  return 'LayerModel(id: $id, title: $title, tiles: $tiles, isCollidable: $isCollidable, collisionConsequence: $collisionConsequence, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class $LayerModelCopyWith<$Res>  {
  factory $LayerModelCopyWith(LayerModel value, $Res Function(LayerModel) _then) = _$LayerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString) LayerModelId id, String title,@JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson) Map<CellPointModel, CellTileModel> tiles, bool isCollidable, CollisionConsequence collisionConsequence, bool isVisible
});


$LayerModelIdCopyWith<$Res> get id;

}
/// @nodoc
class _$LayerModelCopyWithImpl<$Res>
    implements $LayerModelCopyWith<$Res> {
  _$LayerModelCopyWithImpl(this._self, this._then);

  final LayerModel _self;
  final $Res Function(LayerModel) _then;

/// Create a copy of LayerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? tiles = null,Object? isCollidable = null,Object? collisionConsequence = null,Object? isVisible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as LayerModelId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tiles: null == tiles ? _self.tiles : tiles // ignore: cast_nullable_to_non_nullable
as Map<CellPointModel, CellTileModel>,isCollidable: null == isCollidable ? _self.isCollidable : isCollidable // ignore: cast_nullable_to_non_nullable
as bool,collisionConsequence: null == collisionConsequence ? _self.collisionConsequence : collisionConsequence // ignore: cast_nullable_to_non_nullable
as CollisionConsequence,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LayerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LayerModelIdCopyWith<$Res> get id {
  
  return $LayerModelIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// Adds pattern-matching-related methods to [LayerModel].
extension LayerModelPatterns on LayerModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LayerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LayerModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LayerModel value)  $default,){
final _that = this;
switch (_that) {
case _LayerModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LayerModel value)?  $default,){
final _that = this;
switch (_that) {
case _LayerModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)  LayerModelId id,  String title, @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)  Map<CellPointModel, CellTileModel> tiles,  bool isCollidable,  CollisionConsequence collisionConsequence,  bool isVisible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LayerModel() when $default != null:
return $default(_that.id,_that.title,_that.tiles,_that.isCollidable,_that.collisionConsequence,_that.isVisible);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)  LayerModelId id,  String title, @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)  Map<CellPointModel, CellTileModel> tiles,  bool isCollidable,  CollisionConsequence collisionConsequence,  bool isVisible)  $default,) {final _that = this;
switch (_that) {
case _LayerModel():
return $default(_that.id,_that.title,_that.tiles,_that.isCollidable,_that.collisionConsequence,_that.isVisible);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString)  LayerModelId id,  String title, @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson)  Map<CellPointModel, CellTileModel> tiles,  bool isCollidable,  CollisionConsequence collisionConsequence,  bool isVisible)?  $default,) {final _that = this;
switch (_that) {
case _LayerModel() when $default != null:
return $default(_that.id,_that.title,_that.tiles,_that.isCollidable,_that.collisionConsequence,_that.isVisible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LayerModel extends LayerModel {
  const _LayerModel({@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString) required this.id, this.title = '', @JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson) final  Map<CellPointModel, CellTileModel> tiles = const {}, this.isCollidable = false, this.collisionConsequence = CollisionConsequence.none, this.isVisible = true}): _tiles = tiles,super._();
  factory _LayerModel.fromJson(Map<String, dynamic> json) => _$LayerModelFromJson(json);

@override@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString) final  LayerModelId id;
@override@JsonKey() final  String title;
 final  Map<CellPointModel, CellTileModel> _tiles;
@override@JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson) Map<CellPointModel, CellTileModel> get tiles {
  if (_tiles is EqualUnmodifiableMapView) return _tiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_tiles);
}

/// determines is tiles in this layer should be
/// treated as hitboxes
@override@JsonKey() final  bool isCollidable;
@override@JsonKey() final  CollisionConsequence collisionConsequence;
@override@JsonKey() final  bool isVisible;

/// Create a copy of LayerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LayerModelCopyWith<_LayerModel> get copyWith => __$LayerModelCopyWithImpl<_LayerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LayerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LayerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._tiles, _tiles)&&(identical(other.isCollidable, isCollidable) || other.isCollidable == isCollidable)&&(identical(other.collisionConsequence, collisionConsequence) || other.collisionConsequence == collisionConsequence)&&(identical(other.isVisible, isVisible) || other.isVisible == isVisible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_tiles),isCollidable,collisionConsequence,isVisible);

@override
String toString() {
  return 'LayerModel(id: $id, title: $title, tiles: $tiles, isCollidable: $isCollidable, collisionConsequence: $collisionConsequence, isVisible: $isVisible)';
}


}

/// @nodoc
abstract mixin class _$LayerModelCopyWith<$Res> implements $LayerModelCopyWith<$Res> {
  factory _$LayerModelCopyWith(_LayerModel value, $Res Function(_LayerModel) _then) = __$LayerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: LayerModelId.fromJson, toJson: LayerModelId.toJsonString) LayerModelId id, String title,@JsonKey(fromJson: LayerModel._tilesFromJson, toJson: LayerModel._tilesToJson) Map<CellPointModel, CellTileModel> tiles, bool isCollidable, CollisionConsequence collisionConsequence, bool isVisible
});


@override $LayerModelIdCopyWith<$Res> get id;

}
/// @nodoc
class __$LayerModelCopyWithImpl<$Res>
    implements _$LayerModelCopyWith<$Res> {
  __$LayerModelCopyWithImpl(this._self, this._then);

  final _LayerModel _self;
  final $Res Function(_LayerModel) _then;

/// Create a copy of LayerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? tiles = null,Object? isCollidable = null,Object? collisionConsequence = null,Object? isVisible = null,}) {
  return _then(_LayerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as LayerModelId,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tiles: null == tiles ? _self._tiles : tiles // ignore: cast_nullable_to_non_nullable
as Map<CellPointModel, CellTileModel>,isCollidable: null == isCollidable ? _self.isCollidable : isCollidable // ignore: cast_nullable_to_non_nullable
as bool,collisionConsequence: null == collisionConsequence ? _self.collisionConsequence : collisionConsequence // ignore: cast_nullable_to_non_nullable
as CollisionConsequence,isVisible: null == isVisible ? _self.isVisible : isVisible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LayerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LayerModelIdCopyWith<$Res> get id {
  
  return $LayerModelIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// @nodoc
mixin _$CellTileModel {

/// to remove tile just set [TileId.empty] and recalculate [tileNeighbours]
 TileId get tileId; List<TileNeighbourTitle> get tileNeighbours; List<Gid> get objects; List<Gid> get npcs;
/// Create a copy of CellTileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CellTileModelCopyWith<CellTileModel> get copyWith => _$CellTileModelCopyWithImpl<CellTileModel>(this as CellTileModel, _$identity);

  /// Serializes this CellTileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CellTileModel&&(identical(other.tileId, tileId) || other.tileId == tileId)&&const DeepCollectionEquality().equals(other.tileNeighbours, tileNeighbours)&&const DeepCollectionEquality().equals(other.objects, objects)&&const DeepCollectionEquality().equals(other.npcs, npcs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tileId,const DeepCollectionEquality().hash(tileNeighbours),const DeepCollectionEquality().hash(objects),const DeepCollectionEquality().hash(npcs));

@override
String toString() {
  return 'CellTileModel(tileId: $tileId, tileNeighbours: $tileNeighbours, objects: $objects, npcs: $npcs)';
}


}

/// @nodoc
abstract mixin class $CellTileModelCopyWith<$Res>  {
  factory $CellTileModelCopyWith(CellTileModel value, $Res Function(CellTileModel) _then) = _$CellTileModelCopyWithImpl;
@useResult
$Res call({
 TileId tileId, List<TileNeighbourTitle> tileNeighbours, List<Gid> objects, List<Gid> npcs
});


$TileIdCopyWith<$Res> get tileId;

}
/// @nodoc
class _$CellTileModelCopyWithImpl<$Res>
    implements $CellTileModelCopyWith<$Res> {
  _$CellTileModelCopyWithImpl(this._self, this._then);

  final CellTileModel _self;
  final $Res Function(CellTileModel) _then;

/// Create a copy of CellTileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tileId = null,Object? tileNeighbours = null,Object? objects = null,Object? npcs = null,}) {
  return _then(_self.copyWith(
tileId: null == tileId ? _self.tileId : tileId // ignore: cast_nullable_to_non_nullable
as TileId,tileNeighbours: null == tileNeighbours ? _self.tileNeighbours : tileNeighbours // ignore: cast_nullable_to_non_nullable
as List<TileNeighbourTitle>,objects: null == objects ? _self.objects : objects // ignore: cast_nullable_to_non_nullable
as List<Gid>,npcs: null == npcs ? _self.npcs : npcs // ignore: cast_nullable_to_non_nullable
as List<Gid>,
  ));
}
/// Create a copy of CellTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TileIdCopyWith<$Res> get tileId {
  
  return $TileIdCopyWith<$Res>(_self.tileId, (value) {
    return _then(_self.copyWith(tileId: value));
  });
}
}


/// Adds pattern-matching-related methods to [CellTileModel].
extension CellTileModelPatterns on CellTileModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CellTileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CellTileModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CellTileModel value)  $default,){
final _that = this;
switch (_that) {
case _CellTileModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CellTileModel value)?  $default,){
final _that = this;
switch (_that) {
case _CellTileModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TileId tileId,  List<TileNeighbourTitle> tileNeighbours,  List<Gid> objects,  List<Gid> npcs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CellTileModel() when $default != null:
return $default(_that.tileId,_that.tileNeighbours,_that.objects,_that.npcs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TileId tileId,  List<TileNeighbourTitle> tileNeighbours,  List<Gid> objects,  List<Gid> npcs)  $default,) {final _that = this;
switch (_that) {
case _CellTileModel():
return $default(_that.tileId,_that.tileNeighbours,_that.objects,_that.npcs);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TileId tileId,  List<TileNeighbourTitle> tileNeighbours,  List<Gid> objects,  List<Gid> npcs)?  $default,) {final _that = this;
switch (_that) {
case _CellTileModel() when $default != null:
return $default(_that.tileId,_that.tileNeighbours,_that.objects,_that.npcs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CellTileModel extends CellTileModel {
  const _CellTileModel({this.tileId = TileId.empty, final  List<TileNeighbourTitle> tileNeighbours = const [], final  List<Gid> objects = const [], final  List<Gid> npcs = const []}): _tileNeighbours = tileNeighbours,_objects = objects,_npcs = npcs,super._();
  factory _CellTileModel.fromJson(Map<String, dynamic> json) => _$CellTileModelFromJson(json);

/// to remove tile just set [TileId.empty] and recalculate [tileNeighbours]
@override@JsonKey() final  TileId tileId;
 final  List<TileNeighbourTitle> _tileNeighbours;
@override@JsonKey() List<TileNeighbourTitle> get tileNeighbours {
  if (_tileNeighbours is EqualUnmodifiableListView) return _tileNeighbours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tileNeighbours);
}

 final  List<Gid> _objects;
@override@JsonKey() List<Gid> get objects {
  if (_objects is EqualUnmodifiableListView) return _objects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_objects);
}

 final  List<Gid> _npcs;
@override@JsonKey() List<Gid> get npcs {
  if (_npcs is EqualUnmodifiableListView) return _npcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_npcs);
}


/// Create a copy of CellTileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CellTileModelCopyWith<_CellTileModel> get copyWith => __$CellTileModelCopyWithImpl<_CellTileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CellTileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CellTileModel&&(identical(other.tileId, tileId) || other.tileId == tileId)&&const DeepCollectionEquality().equals(other._tileNeighbours, _tileNeighbours)&&const DeepCollectionEquality().equals(other._objects, _objects)&&const DeepCollectionEquality().equals(other._npcs, _npcs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tileId,const DeepCollectionEquality().hash(_tileNeighbours),const DeepCollectionEquality().hash(_objects),const DeepCollectionEquality().hash(_npcs));

@override
String toString() {
  return 'CellTileModel(tileId: $tileId, tileNeighbours: $tileNeighbours, objects: $objects, npcs: $npcs)';
}


}

/// @nodoc
abstract mixin class _$CellTileModelCopyWith<$Res> implements $CellTileModelCopyWith<$Res> {
  factory _$CellTileModelCopyWith(_CellTileModel value, $Res Function(_CellTileModel) _then) = __$CellTileModelCopyWithImpl;
@override @useResult
$Res call({
 TileId tileId, List<TileNeighbourTitle> tileNeighbours, List<Gid> objects, List<Gid> npcs
});


@override $TileIdCopyWith<$Res> get tileId;

}
/// @nodoc
class __$CellTileModelCopyWithImpl<$Res>
    implements _$CellTileModelCopyWith<$Res> {
  __$CellTileModelCopyWithImpl(this._self, this._then);

  final _CellTileModel _self;
  final $Res Function(_CellTileModel) _then;

/// Create a copy of CellTileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tileId = null,Object? tileNeighbours = null,Object? objects = null,Object? npcs = null,}) {
  return _then(_CellTileModel(
tileId: null == tileId ? _self.tileId : tileId // ignore: cast_nullable_to_non_nullable
as TileId,tileNeighbours: null == tileNeighbours ? _self._tileNeighbours : tileNeighbours // ignore: cast_nullable_to_non_nullable
as List<TileNeighbourTitle>,objects: null == objects ? _self._objects : objects // ignore: cast_nullable_to_non_nullable
as List<Gid>,npcs: null == npcs ? _self._npcs : npcs // ignore: cast_nullable_to_non_nullable
as List<Gid>,
  ));
}

/// Create a copy of CellTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TileIdCopyWith<$Res> get tileId {
  
  return $TileIdCopyWith<$Res>(_self.tileId, (value) {
    return _then(_self.copyWith(tileId: value));
  });
}
}


/// @nodoc
mixin _$RenderObjectModel {

/// Since tileId can be used several times
/// It cannot be used as gid.
///
/// Instead, the new gid should be created
/// for every new [RenderObjectModel].
 Gid get id; TileId get tileId; SerializedVector2 get position; SerializedVector2 get distanceToOrigin; SerializedVector2 get distanceToTileLeftTopCorner;/// To get/set correct animation use this property.
///
/// For example, for flying objects use [TileBehaviourType.flyRight]
 TileBehaviourType get animationBehaviour;
/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RenderObjectModelCopyWith<RenderObjectModel> get copyWith => _$RenderObjectModelCopyWithImpl<RenderObjectModel>(this as RenderObjectModel, _$identity);

  /// Serializes this RenderObjectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RenderObjectModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tileId, tileId) || other.tileId == tileId)&&(identical(other.position, position) || other.position == position)&&(identical(other.distanceToOrigin, distanceToOrigin) || other.distanceToOrigin == distanceToOrigin)&&(identical(other.distanceToTileLeftTopCorner, distanceToTileLeftTopCorner) || other.distanceToTileLeftTopCorner == distanceToTileLeftTopCorner)&&(identical(other.animationBehaviour, animationBehaviour) || other.animationBehaviour == animationBehaviour));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tileId,position,distanceToOrigin,distanceToTileLeftTopCorner,animationBehaviour);

@override
String toString() {
  return 'RenderObjectModel(id: $id, tileId: $tileId, position: $position, distanceToOrigin: $distanceToOrigin, distanceToTileLeftTopCorner: $distanceToTileLeftTopCorner, animationBehaviour: $animationBehaviour)';
}


}

/// @nodoc
abstract mixin class $RenderObjectModelCopyWith<$Res>  {
  factory $RenderObjectModelCopyWith(RenderObjectModel value, $Res Function(RenderObjectModel) _then) = _$RenderObjectModelCopyWithImpl;
@useResult
$Res call({
 Gid id, TileId tileId, SerializedVector2 position, SerializedVector2 distanceToOrigin, SerializedVector2 distanceToTileLeftTopCorner, TileBehaviourType animationBehaviour
});


$GidCopyWith<$Res> get id;$TileIdCopyWith<$Res> get tileId;$SerializedVector2CopyWith<$Res> get position;$SerializedVector2CopyWith<$Res> get distanceToOrigin;$SerializedVector2CopyWith<$Res> get distanceToTileLeftTopCorner;

}
/// @nodoc
class _$RenderObjectModelCopyWithImpl<$Res>
    implements $RenderObjectModelCopyWith<$Res> {
  _$RenderObjectModelCopyWithImpl(this._self, this._then);

  final RenderObjectModel _self;
  final $Res Function(RenderObjectModel) _then;

/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? tileId = null,Object? position = null,Object? distanceToOrigin = null,Object? distanceToTileLeftTopCorner = null,Object? animationBehaviour = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Gid,tileId: null == tileId ? _self.tileId : tileId // ignore: cast_nullable_to_non_nullable
as TileId,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as SerializedVector2,distanceToOrigin: null == distanceToOrigin ? _self.distanceToOrigin : distanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,distanceToTileLeftTopCorner: null == distanceToTileLeftTopCorner ? _self.distanceToTileLeftTopCorner : distanceToTileLeftTopCorner // ignore: cast_nullable_to_non_nullable
as SerializedVector2,animationBehaviour: null == animationBehaviour ? _self.animationBehaviour : animationBehaviour // ignore: cast_nullable_to_non_nullable
as TileBehaviourType,
  ));
}
/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get id {
  
  return $GidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TileIdCopyWith<$Res> get tileId {
  
  return $TileIdCopyWith<$Res>(_self.tileId, (value) {
    return _then(_self.copyWith(tileId: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get position {
  
  return $SerializedVector2CopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToOrigin, (value) {
    return _then(_self.copyWith(distanceToOrigin: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToTileLeftTopCorner {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToTileLeftTopCorner, (value) {
    return _then(_self.copyWith(distanceToTileLeftTopCorner: value));
  });
}
}


/// Adds pattern-matching-related methods to [RenderObjectModel].
extension RenderObjectModelPatterns on RenderObjectModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RenderObjectModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RenderObjectModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RenderObjectModel value)  $default,){
final _that = this;
switch (_that) {
case _RenderObjectModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RenderObjectModel value)?  $default,){
final _that = this;
switch (_that) {
case _RenderObjectModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Gid id,  TileId tileId,  SerializedVector2 position,  SerializedVector2 distanceToOrigin,  SerializedVector2 distanceToTileLeftTopCorner,  TileBehaviourType animationBehaviour)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RenderObjectModel() when $default != null:
return $default(_that.id,_that.tileId,_that.position,_that.distanceToOrigin,_that.distanceToTileLeftTopCorner,_that.animationBehaviour);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Gid id,  TileId tileId,  SerializedVector2 position,  SerializedVector2 distanceToOrigin,  SerializedVector2 distanceToTileLeftTopCorner,  TileBehaviourType animationBehaviour)  $default,) {final _that = this;
switch (_that) {
case _RenderObjectModel():
return $default(_that.id,_that.tileId,_that.position,_that.distanceToOrigin,_that.distanceToTileLeftTopCorner,_that.animationBehaviour);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Gid id,  TileId tileId,  SerializedVector2 position,  SerializedVector2 distanceToOrigin,  SerializedVector2 distanceToTileLeftTopCorner,  TileBehaviourType animationBehaviour)?  $default,) {final _that = this;
switch (_that) {
case _RenderObjectModel() when $default != null:
return $default(_that.id,_that.tileId,_that.position,_that.distanceToOrigin,_that.distanceToTileLeftTopCorner,_that.animationBehaviour);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RenderObjectModel extends RenderObjectModel {
  const _RenderObjectModel({required this.id, required this.tileId, this.position = SerializedVector2.zero, this.distanceToOrigin = SerializedVector2.zero, this.distanceToTileLeftTopCorner = SerializedVector2.zero, this.animationBehaviour = TileBehaviourType.idle}): super._();
  factory _RenderObjectModel.fromJson(Map<String, dynamic> json) => _$RenderObjectModelFromJson(json);

/// Since tileId can be used several times
/// It cannot be used as gid.
///
/// Instead, the new gid should be created
/// for every new [RenderObjectModel].
@override final  Gid id;
@override final  TileId tileId;
@override@JsonKey() final  SerializedVector2 position;
@override@JsonKey() final  SerializedVector2 distanceToOrigin;
@override@JsonKey() final  SerializedVector2 distanceToTileLeftTopCorner;
/// To get/set correct animation use this property.
///
/// For example, for flying objects use [TileBehaviourType.flyRight]
@override@JsonKey() final  TileBehaviourType animationBehaviour;

/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenderObjectModelCopyWith<_RenderObjectModel> get copyWith => __$RenderObjectModelCopyWithImpl<_RenderObjectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RenderObjectModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RenderObjectModel&&(identical(other.id, id) || other.id == id)&&(identical(other.tileId, tileId) || other.tileId == tileId)&&(identical(other.position, position) || other.position == position)&&(identical(other.distanceToOrigin, distanceToOrigin) || other.distanceToOrigin == distanceToOrigin)&&(identical(other.distanceToTileLeftTopCorner, distanceToTileLeftTopCorner) || other.distanceToTileLeftTopCorner == distanceToTileLeftTopCorner)&&(identical(other.animationBehaviour, animationBehaviour) || other.animationBehaviour == animationBehaviour));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,tileId,position,distanceToOrigin,distanceToTileLeftTopCorner,animationBehaviour);

@override
String toString() {
  return 'RenderObjectModel(id: $id, tileId: $tileId, position: $position, distanceToOrigin: $distanceToOrigin, distanceToTileLeftTopCorner: $distanceToTileLeftTopCorner, animationBehaviour: $animationBehaviour)';
}


}

/// @nodoc
abstract mixin class _$RenderObjectModelCopyWith<$Res> implements $RenderObjectModelCopyWith<$Res> {
  factory _$RenderObjectModelCopyWith(_RenderObjectModel value, $Res Function(_RenderObjectModel) _then) = __$RenderObjectModelCopyWithImpl;
@override @useResult
$Res call({
 Gid id, TileId tileId, SerializedVector2 position, SerializedVector2 distanceToOrigin, SerializedVector2 distanceToTileLeftTopCorner, TileBehaviourType animationBehaviour
});


@override $GidCopyWith<$Res> get id;@override $TileIdCopyWith<$Res> get tileId;@override $SerializedVector2CopyWith<$Res> get position;@override $SerializedVector2CopyWith<$Res> get distanceToOrigin;@override $SerializedVector2CopyWith<$Res> get distanceToTileLeftTopCorner;

}
/// @nodoc
class __$RenderObjectModelCopyWithImpl<$Res>
    implements _$RenderObjectModelCopyWith<$Res> {
  __$RenderObjectModelCopyWithImpl(this._self, this._then);

  final _RenderObjectModel _self;
  final $Res Function(_RenderObjectModel) _then;

/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? tileId = null,Object? position = null,Object? distanceToOrigin = null,Object? distanceToTileLeftTopCorner = null,Object? animationBehaviour = null,}) {
  return _then(_RenderObjectModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Gid,tileId: null == tileId ? _self.tileId : tileId // ignore: cast_nullable_to_non_nullable
as TileId,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as SerializedVector2,distanceToOrigin: null == distanceToOrigin ? _self.distanceToOrigin : distanceToOrigin // ignore: cast_nullable_to_non_nullable
as SerializedVector2,distanceToTileLeftTopCorner: null == distanceToTileLeftTopCorner ? _self.distanceToTileLeftTopCorner : distanceToTileLeftTopCorner // ignore: cast_nullable_to_non_nullable
as SerializedVector2,animationBehaviour: null == animationBehaviour ? _self.animationBehaviour : animationBehaviour // ignore: cast_nullable_to_non_nullable
as TileBehaviourType,
  ));
}

/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get id {
  
  return $GidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TileIdCopyWith<$Res> get tileId {
  
  return $TileIdCopyWith<$Res>(_self.tileId, (value) {
    return _then(_self.copyWith(tileId: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get position {
  
  return $SerializedVector2CopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToOrigin {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToOrigin, (value) {
    return _then(_self.copyWith(distanceToOrigin: value));
  });
}/// Create a copy of RenderObjectModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get distanceToTileLeftTopCorner {
  
  return $SerializedVector2CopyWith<$Res>(_self.distanceToTileLeftTopCorner, (value) {
    return _then(_self.copyWith(distanceToTileLeftTopCorner: value));
  });
}
}

/// @nodoc
mixin _$Gid {

 String get value;
/// Create a copy of Gid
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GidCopyWith<Gid> get copyWith => _$GidCopyWithImpl<Gid>(this as Gid, _$identity);







}

/// @nodoc
abstract mixin class $GidCopyWith<$Res>  {
  factory $GidCopyWith(Gid value, $Res Function(Gid) _then) = _$GidCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$GidCopyWithImpl<$Res>
    implements $GidCopyWith<$Res> {
  _$GidCopyWithImpl(this._self, this._then);

  final Gid _self;
  final $Res Function(Gid) _then;

/// Create a copy of Gid
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Gid].
extension GidPatterns on Gid {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Gid value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Gid() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Gid value)  $default,){
final _that = this;
switch (_that) {
case _Gid():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Gid value)?  $default,){
final _that = this;
switch (_that) {
case _Gid() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Gid() when $default != null:
return $default(_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String value)  $default,) {final _that = this;
switch (_that) {
case _Gid():
return $default(_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String value)?  $default,) {final _that = this;
switch (_that) {
case _Gid() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class _Gid extends Gid {
  const _Gid({required this.value}): super._();
  

@override final  String value;

/// Create a copy of Gid
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GidCopyWith<_Gid> get copyWith => __$GidCopyWithImpl<_Gid>(this, _$identity);







}

/// @nodoc
abstract mixin class _$GidCopyWith<$Res> implements $GidCopyWith<$Res> {
  factory _$GidCopyWith(_Gid value, $Res Function(_Gid) _then) = __$GidCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$GidCopyWithImpl<$Res>
    implements _$GidCopyWith<$Res> {
  __$GidCopyWithImpl(this._self, this._then);

  final _Gid _self;
  final $Res Function(_Gid) _then;

/// Create a copy of Gid
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_Gid(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PlayerModel {

/// to get access to [RenderObjectModel]
/// just use [CanvasDataModel.player] with gid verification
 Gid get id;
/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerModelCopyWith<PlayerModel> get copyWith => _$PlayerModelCopyWithImpl<PlayerModel>(this as PlayerModel, _$identity);

  /// Serializes this PlayerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PlayerModel(id: $id)';
}


}

/// @nodoc
abstract mixin class $PlayerModelCopyWith<$Res>  {
  factory $PlayerModelCopyWith(PlayerModel value, $Res Function(PlayerModel) _then) = _$PlayerModelCopyWithImpl;
@useResult
$Res call({
 Gid id
});


$GidCopyWith<$Res> get id;

}
/// @nodoc
class _$PlayerModelCopyWithImpl<$Res>
    implements $PlayerModelCopyWith<$Res> {
  _$PlayerModelCopyWithImpl(this._self, this._then);

  final PlayerModel _self;
  final $Res Function(PlayerModel) _then;

/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}
/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get id {
  
  return $GidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// Adds pattern-matching-related methods to [PlayerModel].
extension PlayerModelPatterns on PlayerModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Gid id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
return $default(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Gid id)  $default,) {final _that = this;
switch (_that) {
case _PlayerModel():
return $default(_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Gid id)?  $default,) {final _that = this;
switch (_that) {
case _PlayerModel() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerModel extends PlayerModel {
  const _PlayerModel({required this.id}): super._();
  factory _PlayerModel.fromJson(Map<String, dynamic> json) => _$PlayerModelFromJson(json);

/// to get access to [RenderObjectModel]
/// just use [CanvasDataModel.player] with gid verification
@override final  Gid id;

/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerModelCopyWith<_PlayerModel> get copyWith => __$PlayerModelCopyWithImpl<_PlayerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerModel&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PlayerModel(id: $id)';
}


}

/// @nodoc
abstract mixin class _$PlayerModelCopyWith<$Res> implements $PlayerModelCopyWith<$Res> {
  factory _$PlayerModelCopyWith(_PlayerModel value, $Res Function(_PlayerModel) _then) = __$PlayerModelCopyWithImpl;
@override @useResult
$Res call({
 Gid id
});


@override $GidCopyWith<$Res> get id;

}
/// @nodoc
class __$PlayerModelCopyWithImpl<$Res>
    implements _$PlayerModelCopyWith<$Res> {
  __$PlayerModelCopyWithImpl(this._self, this._then);

  final _PlayerModel _self;
  final $Res Function(_PlayerModel) _then;

/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_PlayerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}

/// Create a copy of PlayerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get id {
  
  return $GidCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}
}


/// @nodoc
mixin _$TileNeighbourTitle {

 String get value;
/// Create a copy of TileNeighbourTitle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TileNeighbourTitleCopyWith<TileNeighbourTitle> get copyWith => _$TileNeighbourTitleCopyWithImpl<TileNeighbourTitle>(this as TileNeighbourTitle, _$identity);

  /// Serializes this TileNeighbourTitle to a JSON map.
  Map<String, dynamic> toJson();






}

/// @nodoc
abstract mixin class $TileNeighbourTitleCopyWith<$Res>  {
  factory $TileNeighbourTitleCopyWith(TileNeighbourTitle value, $Res Function(TileNeighbourTitle) _then) = _$TileNeighbourTitleCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$TileNeighbourTitleCopyWithImpl<$Res>
    implements $TileNeighbourTitleCopyWith<$Res> {
  _$TileNeighbourTitleCopyWithImpl(this._self, this._then);

  final TileNeighbourTitle _self;
  final $Res Function(TileNeighbourTitle) _then;

/// Create a copy of TileNeighbourTitle
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TileNeighbourTitle].
extension TileNeighbourTitlePatterns on TileNeighbourTitle {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TileNeighbourTitle value)?  secured,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TileNeighbourTitle() when secured != null:
return secured(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TileNeighbourTitle value)  secured,}){
final _that = this;
switch (_that) {
case _TileNeighbourTitle():
return secured(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TileNeighbourTitle value)?  secured,}){
final _that = this;
switch (_that) {
case _TileNeighbourTitle() when secured != null:
return secured(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  secured,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TileNeighbourTitle() when secured != null:
return secured(_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  secured,}) {final _that = this;
switch (_that) {
case _TileNeighbourTitle():
return secured(_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  secured,}) {final _that = this;
switch (_that) {
case _TileNeighbourTitle() when secured != null:
return secured(_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TileNeighbourTitle extends TileNeighbourTitle {
  const _TileNeighbourTitle({required this.value}): super._();
  factory _TileNeighbourTitle.fromJson(Map<String, dynamic> json) => _$TileNeighbourTitleFromJson(json);

@override final  String value;

/// Create a copy of TileNeighbourTitle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TileNeighbourTitleCopyWith<_TileNeighbourTitle> get copyWith => __$TileNeighbourTitleCopyWithImpl<_TileNeighbourTitle>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TileNeighbourTitleToJson(this, );
}





}

/// @nodoc
abstract mixin class _$TileNeighbourTitleCopyWith<$Res> implements $TileNeighbourTitleCopyWith<$Res> {
  factory _$TileNeighbourTitleCopyWith(_TileNeighbourTitle value, $Res Function(_TileNeighbourTitle) _then) = __$TileNeighbourTitleCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$TileNeighbourTitleCopyWithImpl<$Res>
    implements _$TileNeighbourTitleCopyWith<$Res> {
  __$TileNeighbourTitleCopyWithImpl(this._self, this._then);

  final _TileNeighbourTitle _self;
  final $Res Function(_TileNeighbourTitle) _then;

/// Create a copy of TileNeighbourTitle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_TileNeighbourTitle(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CellDataModel {



  /// Serializes this CellDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CellDataModel);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CellDataModel()';
}


}

/// @nodoc
class $CellDataModelCopyWith<$Res>  {
$CellDataModelCopyWith(CellDataModel _, $Res Function(CellDataModel) __);
}


/// Adds pattern-matching-related methods to [CellDataModel].
extension CellDataModelPatterns on CellDataModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CellDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CellDataModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CellDataModel value)  $default,){
final _that = this;
switch (_that) {
case _CellDataModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CellDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _CellDataModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function()?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CellDataModel() when $default != null:
return $default();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function()  $default,) {final _that = this;
switch (_that) {
case _CellDataModel():
return $default();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function()?  $default,) {final _that = this;
switch (_that) {
case _CellDataModel() when $default != null:
return $default();case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CellDataModel implements CellDataModel {
  const _CellDataModel();
  factory _CellDataModel.fromJson(Map<String, dynamic> json) => _$CellDataModelFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$CellDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CellDataModel);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CellDataModel()';
}


}





/// @nodoc
mixin _$CellPointModel {

 int get x; int get y;
/// Create a copy of CellPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CellPointModelCopyWith<CellPointModel> get copyWith => _$CellPointModelCopyWithImpl<CellPointModel>(this as CellPointModel, _$identity);

  /// Serializes this CellPointModel to a JSON map.
  Map<String, dynamic> toJson();






}

/// @nodoc
abstract mixin class $CellPointModelCopyWith<$Res>  {
  factory $CellPointModelCopyWith(CellPointModel value, $Res Function(CellPointModel) _then) = _$CellPointModelCopyWithImpl;
@useResult
$Res call({
 int x, int y
});




}
/// @nodoc
class _$CellPointModelCopyWithImpl<$Res>
    implements $CellPointModelCopyWith<$Res> {
  _$CellPointModelCopyWithImpl(this._self, this._then);

  final CellPointModel _self;
  final $Res Function(CellPointModel) _then;

/// Create a copy of CellPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CellPointModel].
extension CellPointModelPatterns on CellPointModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CellPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CellPointModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CellPointModel value)  $default,){
final _that = this;
switch (_that) {
case _CellPointModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CellPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _CellPointModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int x,  int y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CellPointModel() when $default != null:
return $default(_that.x,_that.y);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int x,  int y)  $default,) {final _that = this;
switch (_that) {
case _CellPointModel():
return $default(_that.x,_that.y);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int x,  int y)?  $default,) {final _that = this;
switch (_that) {
case _CellPointModel() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CellPointModel extends CellPointModel {
  const _CellPointModel(this.x, this.y): super._();
  factory _CellPointModel.fromJson(Map<String, dynamic> json) => _$CellPointModelFromJson(json);

@override final  int x;
@override final  int y;

/// Create a copy of CellPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CellPointModelCopyWith<_CellPointModel> get copyWith => __$CellPointModelCopyWithImpl<_CellPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CellPointModelToJson(this, );
}





}

/// @nodoc
abstract mixin class _$CellPointModelCopyWith<$Res> implements $CellPointModelCopyWith<$Res> {
  factory _$CellPointModelCopyWith(_CellPointModel value, $Res Function(_CellPointModel) _then) = __$CellPointModelCopyWithImpl;
@override @useResult
$Res call({
 int x, int y
});




}
/// @nodoc
class __$CellPointModelCopyWithImpl<$Res>
    implements _$CellPointModelCopyWith<$Res> {
  __$CellPointModelCopyWithImpl(this._self, this._then);

  final _CellPointModel _self;
  final $Res Function(_CellPointModel) _then;

/// Create a copy of CellPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_CellPointModel(
null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as int,null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
