// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preset_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TileId {

 String get value;
/// Create a copy of TileId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TileIdCopyWith<TileId> get copyWith => _$TileIdCopyWithImpl<TileId>(this as TileId, _$identity);







}

/// @nodoc
abstract mixin class $TileIdCopyWith<$Res>  {
  factory $TileIdCopyWith(TileId value, $Res Function(TileId) _then) = _$TileIdCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$TileIdCopyWithImpl<$Res>
    implements $TileIdCopyWith<$Res> {
  _$TileIdCopyWithImpl(this._self, this._then);

  final TileId _self;
  final $Res Function(TileId) _then;

/// Create a copy of TileId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TileId].
extension TileIdPatterns on TileId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TileId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TileId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TileId value)  $default,){
final _that = this;
switch (_that) {
case _TileId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TileId value)?  $default,){
final _that = this;
switch (_that) {
case _TileId() when $default != null:
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
case _TileId() when $default != null:
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
case _TileId():
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
case _TileId() when $default != null:
return $default(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _TileId extends TileId {
  const _TileId({required this.value}): super._();
  

@override final  String value;

/// Create a copy of TileId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TileIdCopyWith<_TileId> get copyWith => __$TileIdCopyWithImpl<_TileId>(this, _$identity);







}

/// @nodoc
abstract mixin class _$TileIdCopyWith<$Res> implements $TileIdCopyWith<$Res> {
  factory _$TileIdCopyWith(_TileId value, $Res Function(_TileId) _then) = __$TileIdCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class __$TileIdCopyWithImpl<$Res>
    implements _$TileIdCopyWith<$Res> {
  __$TileIdCopyWithImpl(this._self, this._then);

  final _TileId _self;
  final $Res Function(_TileId) _then;

/// Create a copy of TileId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(_TileId(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PresetTileModel {

 TileId get id; TileType get type; DataCategoryType get category; PresetTileGraphicsModel get graphics; PresetTilePropertiesModel get properties;
/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetTileModelCopyWith<PresetTileModel> get copyWith => _$PresetTileModelCopyWithImpl<PresetTileModel>(this as PresetTileModel, _$identity);

  /// Serializes this PresetTileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresetTileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.graphics, graphics) || other.graphics == graphics)&&(identical(other.properties, properties) || other.properties == properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,category,graphics,properties);

@override
String toString() {
  return 'PresetTileModel(id: $id, type: $type, category: $category, graphics: $graphics, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $PresetTileModelCopyWith<$Res>  {
  factory $PresetTileModelCopyWith(PresetTileModel value, $Res Function(PresetTileModel) _then) = _$PresetTileModelCopyWithImpl;
@useResult
$Res call({
 TileId id, TileType type, DataCategoryType category, PresetTileGraphicsModel graphics, PresetTilePropertiesModel properties
});


$TileIdCopyWith<$Res> get id;$PresetTileGraphicsModelCopyWith<$Res> get graphics;$PresetTilePropertiesModelCopyWith<$Res> get properties;

}
/// @nodoc
class _$PresetTileModelCopyWithImpl<$Res>
    implements $PresetTileModelCopyWith<$Res> {
  _$PresetTileModelCopyWithImpl(this._self, this._then);

  final PresetTileModel _self;
  final $Res Function(PresetTileModel) _then;

/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? category = null,Object? graphics = null,Object? properties = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TileId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TileType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as DataCategoryType,graphics: null == graphics ? _self.graphics : graphics // ignore: cast_nullable_to_non_nullable
as PresetTileGraphicsModel,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as PresetTilePropertiesModel,
  ));
}
/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TileIdCopyWith<$Res> get id {
  
  return $TileIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTileGraphicsModelCopyWith<$Res> get graphics {
  
  return $PresetTileGraphicsModelCopyWith<$Res>(_self.graphics, (value) {
    return _then(_self.copyWith(graphics: value));
  });
}/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTilePropertiesModelCopyWith<$Res> get properties {
  
  return $PresetTilePropertiesModelCopyWith<$Res>(_self.properties, (value) {
    return _then(_self.copyWith(properties: value));
  });
}
}


/// Adds pattern-matching-related methods to [PresetTileModel].
extension PresetTileModelPatterns on PresetTileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresetTileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresetTileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresetTileModel value)  $default,){
final _that = this;
switch (_that) {
case _PresetTileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresetTileModel value)?  $default,){
final _that = this;
switch (_that) {
case _PresetTileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TileId id,  TileType type,  DataCategoryType category,  PresetTileGraphicsModel graphics,  PresetTilePropertiesModel properties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresetTileModel() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.graphics,_that.properties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TileId id,  TileType type,  DataCategoryType category,  PresetTileGraphicsModel graphics,  PresetTilePropertiesModel properties)  $default,) {final _that = this;
switch (_that) {
case _PresetTileModel():
return $default(_that.id,_that.type,_that.category,_that.graphics,_that.properties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TileId id,  TileType type,  DataCategoryType category,  PresetTileGraphicsModel graphics,  PresetTilePropertiesModel properties)?  $default,) {final _that = this;
switch (_that) {
case _PresetTileModel() when $default != null:
return $default(_that.id,_that.type,_that.category,_that.graphics,_that.properties);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PresetTileModel extends PresetTileModel {
  const _PresetTileModel({required this.id, required this.type, required this.category, required this.graphics, this.properties = PresetTilePropertiesModel.empty}): super._();
  factory _PresetTileModel.fromJson(Map<String, dynamic> json) => _$PresetTileModelFromJson(json);

@override final  TileId id;
@override final  TileType type;
@override final  DataCategoryType category;
@override final  PresetTileGraphicsModel graphics;
@override@JsonKey() final  PresetTilePropertiesModel properties;

/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetTileModelCopyWith<_PresetTileModel> get copyWith => __$PresetTileModelCopyWithImpl<_PresetTileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresetTileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresetTileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.category, category) || other.category == category)&&(identical(other.graphics, graphics) || other.graphics == graphics)&&(identical(other.properties, properties) || other.properties == properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,category,graphics,properties);

@override
String toString() {
  return 'PresetTileModel(id: $id, type: $type, category: $category, graphics: $graphics, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$PresetTileModelCopyWith<$Res> implements $PresetTileModelCopyWith<$Res> {
  factory _$PresetTileModelCopyWith(_PresetTileModel value, $Res Function(_PresetTileModel) _then) = __$PresetTileModelCopyWithImpl;
@override @useResult
$Res call({
 TileId id, TileType type, DataCategoryType category, PresetTileGraphicsModel graphics, PresetTilePropertiesModel properties
});


@override $TileIdCopyWith<$Res> get id;@override $PresetTileGraphicsModelCopyWith<$Res> get graphics;@override $PresetTilePropertiesModelCopyWith<$Res> get properties;

}
/// @nodoc
class __$PresetTileModelCopyWithImpl<$Res>
    implements _$PresetTileModelCopyWith<$Res> {
  __$PresetTileModelCopyWithImpl(this._self, this._then);

  final _PresetTileModel _self;
  final $Res Function(_PresetTileModel) _then;

/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? category = null,Object? graphics = null,Object? properties = null,}) {
  return _then(_PresetTileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as TileId,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TileType,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as DataCategoryType,graphics: null == graphics ? _self.graphics : graphics // ignore: cast_nullable_to_non_nullable
as PresetTileGraphicsModel,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as PresetTilePropertiesModel,
  ));
}

/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TileIdCopyWith<$Res> get id {
  
  return $TileIdCopyWith<$Res>(_self.id, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTileGraphicsModelCopyWith<$Res> get graphics {
  
  return $PresetTileGraphicsModelCopyWith<$Res>(_self.graphics, (value) {
    return _then(_self.copyWith(graphics: value));
  });
}/// Create a copy of PresetTileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresetTilePropertiesModelCopyWith<$Res> get properties {
  
  return $PresetTilePropertiesModelCopyWith<$Res>(_self.properties, (value) {
    return _then(_self.copyWith(properties: value));
  });
}
}


/// @nodoc
mixin _$PresetTilePropertiesModel {

 String get title; String get thumbnailPath;@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap get description;
/// Create a copy of PresetTilePropertiesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetTilePropertiesModelCopyWith<PresetTilePropertiesModel> get copyWith => _$PresetTilePropertiesModelCopyWithImpl<PresetTilePropertiesModel>(this as PresetTilePropertiesModel, _$identity);

  /// Serializes this PresetTilePropertiesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresetTilePropertiesModel&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,thumbnailPath,description);

@override
String toString() {
  return 'PresetTilePropertiesModel(title: $title, thumbnailPath: $thumbnailPath, description: $description)';
}


}

/// @nodoc
abstract mixin class $PresetTilePropertiesModelCopyWith<$Res>  {
  factory $PresetTilePropertiesModelCopyWith(PresetTilePropertiesModel value, $Res Function(PresetTilePropertiesModel) _then) = _$PresetTilePropertiesModelCopyWithImpl;
@useResult
$Res call({
 String title, String thumbnailPath,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap description
});




}
/// @nodoc
class _$PresetTilePropertiesModelCopyWithImpl<$Res>
    implements $PresetTilePropertiesModelCopyWith<$Res> {
  _$PresetTilePropertiesModelCopyWithImpl(this._self, this._then);

  final PresetTilePropertiesModel _self;
  final $Res Function(PresetTilePropertiesModel) _then;

/// Create a copy of PresetTilePropertiesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? thumbnailPath = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailPath: null == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedMap,
  ));
}

}


/// Adds pattern-matching-related methods to [PresetTilePropertiesModel].
extension PresetTilePropertiesModelPatterns on PresetTilePropertiesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresetTilePropertiesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresetTilePropertiesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresetTilePropertiesModel value)  $default,){
final _that = this;
switch (_that) {
case _PresetTilePropertiesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresetTilePropertiesModel value)?  $default,){
final _that = this;
switch (_that) {
case _PresetTilePropertiesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String thumbnailPath, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresetTilePropertiesModel() when $default != null:
return $default(_that.title,_that.thumbnailPath,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String thumbnailPath, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap description)  $default,) {final _that = this;
switch (_that) {
case _PresetTilePropertiesModel():
return $default(_that.title,_that.thumbnailPath,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String thumbnailPath, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap description)?  $default,) {final _that = this;
switch (_that) {
case _PresetTilePropertiesModel() when $default != null:
return $default(_that.title,_that.thumbnailPath,_that.description);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PresetTilePropertiesModel extends PresetTilePropertiesModel {
  const _PresetTilePropertiesModel({this.title = '', this.thumbnailPath = '', @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) this.description = LocalizedMap.empty}): super._();
  factory _PresetTilePropertiesModel.fromJson(Map<String, dynamic> json) => _$PresetTilePropertiesModelFromJson(json);

@override@JsonKey() final  String title;
@override@JsonKey() final  String thumbnailPath;
@override@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) final  LocalizedMap description;

/// Create a copy of PresetTilePropertiesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetTilePropertiesModelCopyWith<_PresetTilePropertiesModel> get copyWith => __$PresetTilePropertiesModelCopyWithImpl<_PresetTilePropertiesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresetTilePropertiesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresetTilePropertiesModel&&(identical(other.title, title) || other.title == title)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,thumbnailPath,description);

@override
String toString() {
  return 'PresetTilePropertiesModel(title: $title, thumbnailPath: $thumbnailPath, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PresetTilePropertiesModelCopyWith<$Res> implements $PresetTilePropertiesModelCopyWith<$Res> {
  factory _$PresetTilePropertiesModelCopyWith(_PresetTilePropertiesModel value, $Res Function(_PresetTilePropertiesModel) _then) = __$PresetTilePropertiesModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String thumbnailPath,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap description
});




}
/// @nodoc
class __$PresetTilePropertiesModelCopyWithImpl<$Res>
    implements _$PresetTilePropertiesModelCopyWith<$Res> {
  __$PresetTilePropertiesModelCopyWithImpl(this._self, this._then);

  final _PresetTilePropertiesModel _self;
  final $Res Function(_PresetTilePropertiesModel) _then;

/// Create a copy of PresetTilePropertiesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? thumbnailPath = null,Object? description = null,}) {
  return _then(_PresetTilePropertiesModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,thumbnailPath: null == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as LocalizedMap,
  ));
}


}


/// @nodoc
mixin _$PresetTileGraphicsModel {

 TileGraphicsType get type; bool get animated; List<TileBehaviourType> get behaviours;
/// Create a copy of PresetTileGraphicsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresetTileGraphicsModelCopyWith<PresetTileGraphicsModel> get copyWith => _$PresetTileGraphicsModelCopyWithImpl<PresetTileGraphicsModel>(this as PresetTileGraphicsModel, _$identity);

  /// Serializes this PresetTileGraphicsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresetTileGraphicsModel&&(identical(other.type, type) || other.type == type)&&(identical(other.animated, animated) || other.animated == animated)&&const DeepCollectionEquality().equals(other.behaviours, behaviours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,animated,const DeepCollectionEquality().hash(behaviours));

@override
String toString() {
  return 'PresetTileGraphicsModel(type: $type, animated: $animated, behaviours: $behaviours)';
}


}

/// @nodoc
abstract mixin class $PresetTileGraphicsModelCopyWith<$Res>  {
  factory $PresetTileGraphicsModelCopyWith(PresetTileGraphicsModel value, $Res Function(PresetTileGraphicsModel) _then) = _$PresetTileGraphicsModelCopyWithImpl;
@useResult
$Res call({
 TileGraphicsType type, bool animated, List<TileBehaviourType> behaviours
});




}
/// @nodoc
class _$PresetTileGraphicsModelCopyWithImpl<$Res>
    implements $PresetTileGraphicsModelCopyWith<$Res> {
  _$PresetTileGraphicsModelCopyWithImpl(this._self, this._then);

  final PresetTileGraphicsModel _self;
  final $Res Function(PresetTileGraphicsModel) _then;

/// Create a copy of PresetTileGraphicsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? animated = null,Object? behaviours = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TileGraphicsType,animated: null == animated ? _self.animated : animated // ignore: cast_nullable_to_non_nullable
as bool,behaviours: null == behaviours ? _self.behaviours : behaviours // ignore: cast_nullable_to_non_nullable
as List<TileBehaviourType>,
  ));
}

}


/// Adds pattern-matching-related methods to [PresetTileGraphicsModel].
extension PresetTileGraphicsModelPatterns on PresetTileGraphicsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PresetTileGraphicsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PresetTileGraphicsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PresetTileGraphicsModel value)  $default,){
final _that = this;
switch (_that) {
case _PresetTileGraphicsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PresetTileGraphicsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PresetTileGraphicsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TileGraphicsType type,  bool animated,  List<TileBehaviourType> behaviours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PresetTileGraphicsModel() when $default != null:
return $default(_that.type,_that.animated,_that.behaviours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TileGraphicsType type,  bool animated,  List<TileBehaviourType> behaviours)  $default,) {final _that = this;
switch (_that) {
case _PresetTileGraphicsModel():
return $default(_that.type,_that.animated,_that.behaviours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TileGraphicsType type,  bool animated,  List<TileBehaviourType> behaviours)?  $default,) {final _that = this;
switch (_that) {
case _PresetTileGraphicsModel() when $default != null:
return $default(_that.type,_that.animated,_that.behaviours);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PresetTileGraphicsModel extends PresetTileGraphicsModel {
  const _PresetTileGraphicsModel({required this.type, this.animated = false, final  List<TileBehaviourType> behaviours = const []}): _behaviours = behaviours,super._();
  factory _PresetTileGraphicsModel.fromJson(Map<String, dynamic> json) => _$PresetTileGraphicsModelFromJson(json);

@override final  TileGraphicsType type;
@override@JsonKey() final  bool animated;
 final  List<TileBehaviourType> _behaviours;
@override@JsonKey() List<TileBehaviourType> get behaviours {
  if (_behaviours is EqualUnmodifiableListView) return _behaviours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_behaviours);
}


/// Create a copy of PresetTileGraphicsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PresetTileGraphicsModelCopyWith<_PresetTileGraphicsModel> get copyWith => __$PresetTileGraphicsModelCopyWithImpl<_PresetTileGraphicsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PresetTileGraphicsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PresetTileGraphicsModel&&(identical(other.type, type) || other.type == type)&&(identical(other.animated, animated) || other.animated == animated)&&const DeepCollectionEquality().equals(other._behaviours, _behaviours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,animated,const DeepCollectionEquality().hash(_behaviours));

@override
String toString() {
  return 'PresetTileGraphicsModel(type: $type, animated: $animated, behaviours: $behaviours)';
}


}

/// @nodoc
abstract mixin class _$PresetTileGraphicsModelCopyWith<$Res> implements $PresetTileGraphicsModelCopyWith<$Res> {
  factory _$PresetTileGraphicsModelCopyWith(_PresetTileGraphicsModel value, $Res Function(_PresetTileGraphicsModel) _then) = __$PresetTileGraphicsModelCopyWithImpl;
@override @useResult
$Res call({
 TileGraphicsType type, bool animated, List<TileBehaviourType> behaviours
});




}
/// @nodoc
class __$PresetTileGraphicsModelCopyWithImpl<$Res>
    implements _$PresetTileGraphicsModelCopyWith<$Res> {
  __$PresetTileGraphicsModelCopyWithImpl(this._self, this._then);

  final _PresetTileGraphicsModel _self;
  final $Res Function(_PresetTileGraphicsModel) _then;

/// Create a copy of PresetTileGraphicsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? animated = null,Object? behaviours = null,}) {
  return _then(_PresetTileGraphicsModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TileGraphicsType,animated: null == animated ? _self.animated : animated // ignore: cast_nullable_to_non_nullable
as bool,behaviours: null == behaviours ? _self._behaviours : behaviours // ignore: cast_nullable_to_non_nullable
as List<TileBehaviourType>,
  ));
}


}


/// @nodoc
mixin _$TilesetPresetDataModel {

@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get tiles;@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get objects;@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get npcs;@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get players;@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get other; Map<SpriteTileName, List<SpriteCode>> get autotileRules;@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap get name; TilesetType get type; TilesetThemeModel get theme;
/// Create a copy of TilesetPresetDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TilesetPresetDataModelCopyWith<TilesetPresetDataModel> get copyWith => _$TilesetPresetDataModelCopyWithImpl<TilesetPresetDataModel>(this as TilesetPresetDataModel, _$identity);

  /// Serializes this TilesetPresetDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TilesetPresetDataModel&&const DeepCollectionEquality().equals(other.tiles, tiles)&&const DeepCollectionEquality().equals(other.objects, objects)&&const DeepCollectionEquality().equals(other.npcs, npcs)&&const DeepCollectionEquality().equals(other.players, players)&&const DeepCollectionEquality().equals(other.other, this.other)&&const DeepCollectionEquality().equals(other.autotileRules, autotileRules)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.theme, theme) || other.theme == theme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tiles),const DeepCollectionEquality().hash(objects),const DeepCollectionEquality().hash(npcs),const DeepCollectionEquality().hash(players),const DeepCollectionEquality().hash(other),const DeepCollectionEquality().hash(autotileRules),name,type,theme);

@override
String toString() {
  return 'TilesetPresetDataModel(tiles: $tiles, objects: $objects, npcs: $npcs, players: $players, other: $other, autotileRules: $autotileRules, name: $name, type: $type, theme: $theme)';
}


}

/// @nodoc
abstract mixin class $TilesetPresetDataModelCopyWith<$Res>  {
  factory $TilesetPresetDataModelCopyWith(TilesetPresetDataModel value, $Res Function(TilesetPresetDataModel) _then) = _$TilesetPresetDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> tiles,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> objects,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> npcs,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> players,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> other, Map<SpriteTileName, List<SpriteCode>> autotileRules,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap name, TilesetType type, TilesetThemeModel theme
});


$TilesetThemeModelCopyWith<$Res> get theme;

}
/// @nodoc
class _$TilesetPresetDataModelCopyWithImpl<$Res>
    implements $TilesetPresetDataModelCopyWith<$Res> {
  _$TilesetPresetDataModelCopyWithImpl(this._self, this._then);

  final TilesetPresetDataModel _self;
  final $Res Function(TilesetPresetDataModel) _then;

/// Create a copy of TilesetPresetDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tiles = null,Object? objects = null,Object? npcs = null,Object? players = null,Object? other = null,Object? autotileRules = null,Object? name = null,Object? type = null,Object? theme = null,}) {
  return _then(_self.copyWith(
tiles: null == tiles ? _self.tiles : tiles // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,objects: null == objects ? _self.objects : objects // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,npcs: null == npcs ? _self.npcs : npcs // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,autotileRules: null == autotileRules ? _self.autotileRules : autotileRules // ignore: cast_nullable_to_non_nullable
as Map<SpriteTileName, List<SpriteCode>>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedMap,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TilesetType,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as TilesetThemeModel,
  ));
}
/// Create a copy of TilesetPresetDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TilesetThemeModelCopyWith<$Res> get theme {
  
  return $TilesetThemeModelCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}


/// Adds pattern-matching-related methods to [TilesetPresetDataModel].
extension TilesetPresetDataModelPatterns on TilesetPresetDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TilesetPresetDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TilesetPresetDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TilesetPresetDataModel value)  $default,){
final _that = this;
switch (_that) {
case _TilesetPresetDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TilesetPresetDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _TilesetPresetDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> tiles, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> objects, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> npcs, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> players, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> other,  Map<SpriteTileName, List<SpriteCode>> autotileRules, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap name,  TilesetType type,  TilesetThemeModel theme)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TilesetPresetDataModel() when $default != null:
return $default(_that.tiles,_that.objects,_that.npcs,_that.players,_that.other,_that.autotileRules,_that.name,_that.type,_that.theme);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> tiles, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> objects, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> npcs, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> players, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> other,  Map<SpriteTileName, List<SpriteCode>> autotileRules, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap name,  TilesetType type,  TilesetThemeModel theme)  $default,) {final _that = this;
switch (_that) {
case _TilesetPresetDataModel():
return $default(_that.tiles,_that.objects,_that.npcs,_that.players,_that.other,_that.autotileRules,_that.name,_that.type,_that.theme);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> tiles, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> objects, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> npcs, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> players, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson)  Map<TileId, PresetTileModel> other,  Map<SpriteTileName, List<SpriteCode>> autotileRules, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap)  LocalizedMap name,  TilesetType type,  TilesetThemeModel theme)?  $default,) {final _that = this;
switch (_that) {
case _TilesetPresetDataModel() when $default != null:
return $default(_that.tiles,_that.objects,_that.npcs,_that.players,_that.other,_that.autotileRules,_that.name,_that.type,_that.theme);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TilesetPresetDataModel implements TilesetPresetDataModel {
  const _TilesetPresetDataModel({@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) final  Map<TileId, PresetTileModel> tiles = const {}, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) final  Map<TileId, PresetTileModel> objects = const {}, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) final  Map<TileId, PresetTileModel> npcs = const {}, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) final  Map<TileId, PresetTileModel> players = const {}, @JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) final  Map<TileId, PresetTileModel> other = const {}, final  Map<SpriteTileName, List<SpriteCode>> autotileRules = _nameCodes, @JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) this.name = LocalizedMap.empty, this.type = TilesetType.whiteBlack, this.theme = TilesetThemeModel.empty}): _tiles = tiles,_objects = objects,_npcs = npcs,_players = players,_other = other,_autotileRules = autotileRules;
  factory _TilesetPresetDataModel.fromJson(Map<String, dynamic> json) => _$TilesetPresetDataModelFromJson(json);

 final  Map<TileId, PresetTileModel> _tiles;
@override@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get tiles {
  if (_tiles is EqualUnmodifiableMapView) return _tiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_tiles);
}

 final  Map<TileId, PresetTileModel> _objects;
@override@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get objects {
  if (_objects is EqualUnmodifiableMapView) return _objects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_objects);
}

 final  Map<TileId, PresetTileModel> _npcs;
@override@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get npcs {
  if (_npcs is EqualUnmodifiableMapView) return _npcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_npcs);
}

 final  Map<TileId, PresetTileModel> _players;
@override@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get players {
  if (_players is EqualUnmodifiableMapView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_players);
}

 final  Map<TileId, PresetTileModel> _other;
@override@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> get other {
  if (_other is EqualUnmodifiableMapView) return _other;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_other);
}

 final  Map<SpriteTileName, List<SpriteCode>> _autotileRules;
@override@JsonKey() Map<SpriteTileName, List<SpriteCode>> get autotileRules {
  if (_autotileRules is EqualUnmodifiableMapView) return _autotileRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_autotileRules);
}

@override@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) final  LocalizedMap name;
@override@JsonKey() final  TilesetType type;
@override@JsonKey() final  TilesetThemeModel theme;

/// Create a copy of TilesetPresetDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TilesetPresetDataModelCopyWith<_TilesetPresetDataModel> get copyWith => __$TilesetPresetDataModelCopyWithImpl<_TilesetPresetDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TilesetPresetDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TilesetPresetDataModel&&const DeepCollectionEquality().equals(other._tiles, _tiles)&&const DeepCollectionEquality().equals(other._objects, _objects)&&const DeepCollectionEquality().equals(other._npcs, _npcs)&&const DeepCollectionEquality().equals(other._players, _players)&&const DeepCollectionEquality().equals(other._other, this._other)&&const DeepCollectionEquality().equals(other._autotileRules, _autotileRules)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.theme, theme) || other.theme == theme));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tiles),const DeepCollectionEquality().hash(_objects),const DeepCollectionEquality().hash(_npcs),const DeepCollectionEquality().hash(_players),const DeepCollectionEquality().hash(_other),const DeepCollectionEquality().hash(_autotileRules),name,type,theme);

@override
String toString() {
  return 'TilesetPresetDataModel(tiles: $tiles, objects: $objects, npcs: $npcs, players: $players, other: $other, autotileRules: $autotileRules, name: $name, type: $type, theme: $theme)';
}


}

/// @nodoc
abstract mixin class _$TilesetPresetDataModelCopyWith<$Res> implements $TilesetPresetDataModelCopyWith<$Res> {
  factory _$TilesetPresetDataModelCopyWith(_TilesetPresetDataModel value, $Res Function(_TilesetPresetDataModel) _then) = __$TilesetPresetDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> tiles,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> objects,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> npcs,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> players,@JsonKey(fromJson: TilesetPresetDataModel._tilesFromJson, toJson: TilesetPresetDataModel._tilesToJson) Map<TileId, PresetTileModel> other, Map<SpriteTileName, List<SpriteCode>> autotileRules,@JsonKey(fromJson: LocalizedMap.fromJson, toJson: LocalizedMap.toJsonValueMap) LocalizedMap name, TilesetType type, TilesetThemeModel theme
});


@override $TilesetThemeModelCopyWith<$Res> get theme;

}
/// @nodoc
class __$TilesetPresetDataModelCopyWithImpl<$Res>
    implements _$TilesetPresetDataModelCopyWith<$Res> {
  __$TilesetPresetDataModelCopyWithImpl(this._self, this._then);

  final _TilesetPresetDataModel _self;
  final $Res Function(_TilesetPresetDataModel) _then;

/// Create a copy of TilesetPresetDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tiles = null,Object? objects = null,Object? npcs = null,Object? players = null,Object? other = null,Object? autotileRules = null,Object? name = null,Object? type = null,Object? theme = null,}) {
  return _then(_TilesetPresetDataModel(
tiles: null == tiles ? _self._tiles : tiles // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,objects: null == objects ? _self._objects : objects // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,npcs: null == npcs ? _self._npcs : npcs // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,other: null == other ? _self._other : other // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileModel>,autotileRules: null == autotileRules ? _self._autotileRules : autotileRules // ignore: cast_nullable_to_non_nullable
as Map<SpriteTileName, List<SpriteCode>>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedMap,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TilesetType,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as TilesetThemeModel,
  ));
}

/// Create a copy of TilesetPresetDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TilesetThemeModelCopyWith<$Res> get theme {
  
  return $TilesetThemeModelCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}

/// @nodoc
mixin _$TilesetConfigModel {

/// should be a _preset_data.json
 String get path;
/// Create a copy of TilesetConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TilesetConfigModelCopyWith<TilesetConfigModel> get copyWith => _$TilesetConfigModelCopyWithImpl<TilesetConfigModel>(this as TilesetConfigModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TilesetConfigModel&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'TilesetConfigModel(path: $path)';
}


}

/// @nodoc
abstract mixin class $TilesetConfigModelCopyWith<$Res>  {
  factory $TilesetConfigModelCopyWith(TilesetConfigModel value, $Res Function(TilesetConfigModel) _then) = _$TilesetConfigModelCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$TilesetConfigModelCopyWithImpl<$Res>
    implements $TilesetConfigModelCopyWith<$Res> {
  _$TilesetConfigModelCopyWithImpl(this._self, this._then);

  final TilesetConfigModel _self;
  final $Res Function(TilesetConfigModel) _then;

/// Create a copy of TilesetConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TilesetConfigModel].
extension TilesetConfigModelPatterns on TilesetConfigModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TilesetConfigModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TilesetConfigModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TilesetConfigModel value)  $default,){
final _that = this;
switch (_that) {
case _TilesetConfigModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TilesetConfigModel value)?  $default,){
final _that = this;
switch (_that) {
case _TilesetConfigModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TilesetConfigModel() when $default != null:
return $default(_that.path);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path)  $default,) {final _that = this;
switch (_that) {
case _TilesetConfigModel():
return $default(_that.path);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path)?  $default,) {final _that = this;
switch (_that) {
case _TilesetConfigModel() when $default != null:
return $default(_that.path);case _:
  return null;

}
}

}

/// @nodoc


class _TilesetConfigModel extends TilesetConfigModel {
  const _TilesetConfigModel({this.path = ''}): super._();
  

/// should be a _preset_data.json
@override@JsonKey() final  String path;

/// Create a copy of TilesetConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TilesetConfigModelCopyWith<_TilesetConfigModel> get copyWith => __$TilesetConfigModelCopyWithImpl<_TilesetConfigModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TilesetConfigModel&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'TilesetConfigModel(path: $path)';
}


}

/// @nodoc
abstract mixin class _$TilesetConfigModelCopyWith<$Res> implements $TilesetConfigModelCopyWith<$Res> {
  factory _$TilesetConfigModelCopyWith(_TilesetConfigModel value, $Res Function(_TilesetConfigModel) _then) = __$TilesetConfigModelCopyWithImpl;
@override @useResult
$Res call({
 String path
});




}
/// @nodoc
class __$TilesetConfigModelCopyWithImpl<$Res>
    implements _$TilesetConfigModelCopyWith<$Res> {
  __$TilesetConfigModelCopyWithImpl(this._self, this._then);

  final _TilesetConfigModel _self;
  final $Res Function(_TilesetConfigModel) _then;

/// Create a copy of TilesetConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(_TilesetConfigModel(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TilesetThemeModel {

 String get backgroundSkyColorHex;
/// Create a copy of TilesetThemeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TilesetThemeModelCopyWith<TilesetThemeModel> get copyWith => _$TilesetThemeModelCopyWithImpl<TilesetThemeModel>(this as TilesetThemeModel, _$identity);

  /// Serializes this TilesetThemeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TilesetThemeModel&&(identical(other.backgroundSkyColorHex, backgroundSkyColorHex) || other.backgroundSkyColorHex == backgroundSkyColorHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backgroundSkyColorHex);

@override
String toString() {
  return 'TilesetThemeModel(backgroundSkyColorHex: $backgroundSkyColorHex)';
}


}

/// @nodoc
abstract mixin class $TilesetThemeModelCopyWith<$Res>  {
  factory $TilesetThemeModelCopyWith(TilesetThemeModel value, $Res Function(TilesetThemeModel) _then) = _$TilesetThemeModelCopyWithImpl;
@useResult
$Res call({
 String backgroundSkyColorHex
});




}
/// @nodoc
class _$TilesetThemeModelCopyWithImpl<$Res>
    implements $TilesetThemeModelCopyWith<$Res> {
  _$TilesetThemeModelCopyWithImpl(this._self, this._then);

  final TilesetThemeModel _self;
  final $Res Function(TilesetThemeModel) _then;

/// Create a copy of TilesetThemeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backgroundSkyColorHex = null,}) {
  return _then(_self.copyWith(
backgroundSkyColorHex: null == backgroundSkyColorHex ? _self.backgroundSkyColorHex : backgroundSkyColorHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TilesetThemeModel].
extension TilesetThemeModelPatterns on TilesetThemeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TilesetThemeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TilesetThemeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TilesetThemeModel value)  $default,){
final _that = this;
switch (_that) {
case _TilesetThemeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TilesetThemeModel value)?  $default,){
final _that = this;
switch (_that) {
case _TilesetThemeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String backgroundSkyColorHex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TilesetThemeModel() when $default != null:
return $default(_that.backgroundSkyColorHex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String backgroundSkyColorHex)  $default,) {final _that = this;
switch (_that) {
case _TilesetThemeModel():
return $default(_that.backgroundSkyColorHex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String backgroundSkyColorHex)?  $default,) {final _that = this;
switch (_that) {
case _TilesetThemeModel() when $default != null:
return $default(_that.backgroundSkyColorHex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TilesetThemeModel extends TilesetThemeModel {
  const _TilesetThemeModel({required this.backgroundSkyColorHex}): super._();
  factory _TilesetThemeModel.fromJson(Map<String, dynamic> json) => _$TilesetThemeModelFromJson(json);

@override final  String backgroundSkyColorHex;

/// Create a copy of TilesetThemeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TilesetThemeModelCopyWith<_TilesetThemeModel> get copyWith => __$TilesetThemeModelCopyWithImpl<_TilesetThemeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TilesetThemeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TilesetThemeModel&&(identical(other.backgroundSkyColorHex, backgroundSkyColorHex) || other.backgroundSkyColorHex == backgroundSkyColorHex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,backgroundSkyColorHex);

@override
String toString() {
  return 'TilesetThemeModel(backgroundSkyColorHex: $backgroundSkyColorHex)';
}


}

/// @nodoc
abstract mixin class _$TilesetThemeModelCopyWith<$Res> implements $TilesetThemeModelCopyWith<$Res> {
  factory _$TilesetThemeModelCopyWith(_TilesetThemeModel value, $Res Function(_TilesetThemeModel) _then) = __$TilesetThemeModelCopyWithImpl;
@override @useResult
$Res call({
 String backgroundSkyColorHex
});




}
/// @nodoc
class __$TilesetThemeModelCopyWithImpl<$Res>
    implements _$TilesetThemeModelCopyWith<$Res> {
  __$TilesetThemeModelCopyWithImpl(this._self, this._then);

  final _TilesetThemeModel _self;
  final $Res Function(_TilesetThemeModel) _then;

/// Create a copy of TilesetThemeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backgroundSkyColorHex = null,}) {
  return _then(_TilesetThemeModel(
backgroundSkyColorHex: null == backgroundSkyColorHex ? _self.backgroundSkyColorHex : backgroundSkyColorHex // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TilesetPresetResources {

 LocalizedMap get name; TilesetThemeModel get theme; TilesetType get type; Map<SpriteTileName, List<SpriteCode>> get autotileRules; Map<TileId, PresetTileResource> get tiles; Map<TileId, PresetTileResource> get objects; Map<TileId, PresetTileResource> get npcs; Map<TileId, PresetTileResource> get players; Map<TileId, PresetTileResource> get other;
/// Create a copy of TilesetPresetResources
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TilesetPresetResourcesCopyWith<TilesetPresetResources> get copyWith => _$TilesetPresetResourcesCopyWithImpl<TilesetPresetResources>(this as TilesetPresetResources, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TilesetPresetResources&&(identical(other.name, name) || other.name == name)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.autotileRules, autotileRules)&&const DeepCollectionEquality().equals(other.tiles, tiles)&&const DeepCollectionEquality().equals(other.objects, objects)&&const DeepCollectionEquality().equals(other.npcs, npcs)&&const DeepCollectionEquality().equals(other.players, players)&&const DeepCollectionEquality().equals(other.other, this.other));
}


@override
int get hashCode => Object.hash(runtimeType,name,theme,type,const DeepCollectionEquality().hash(autotileRules),const DeepCollectionEquality().hash(tiles),const DeepCollectionEquality().hash(objects),const DeepCollectionEquality().hash(npcs),const DeepCollectionEquality().hash(players),const DeepCollectionEquality().hash(other));

@override
String toString() {
  return 'TilesetPresetResources(name: $name, theme: $theme, type: $type, autotileRules: $autotileRules, tiles: $tiles, objects: $objects, npcs: $npcs, players: $players, other: $other)';
}


}

/// @nodoc
abstract mixin class $TilesetPresetResourcesCopyWith<$Res>  {
  factory $TilesetPresetResourcesCopyWith(TilesetPresetResources value, $Res Function(TilesetPresetResources) _then) = _$TilesetPresetResourcesCopyWithImpl;
@useResult
$Res call({
 LocalizedMap name, TilesetThemeModel theme, TilesetType type, Map<SpriteTileName, List<SpriteCode>> autotileRules, Map<TileId, PresetTileResource> tiles, Map<TileId, PresetTileResource> objects, Map<TileId, PresetTileResource> npcs, Map<TileId, PresetTileResource> players, Map<TileId, PresetTileResource> other
});


$TilesetThemeModelCopyWith<$Res> get theme;

}
/// @nodoc
class _$TilesetPresetResourcesCopyWithImpl<$Res>
    implements $TilesetPresetResourcesCopyWith<$Res> {
  _$TilesetPresetResourcesCopyWithImpl(this._self, this._then);

  final TilesetPresetResources _self;
  final $Res Function(TilesetPresetResources) _then;

/// Create a copy of TilesetPresetResources
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? theme = null,Object? type = null,Object? autotileRules = null,Object? tiles = null,Object? objects = null,Object? npcs = null,Object? players = null,Object? other = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedMap,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as TilesetThemeModel,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TilesetType,autotileRules: null == autotileRules ? _self.autotileRules : autotileRules // ignore: cast_nullable_to_non_nullable
as Map<SpriteTileName, List<SpriteCode>>,tiles: null == tiles ? _self.tiles : tiles // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,objects: null == objects ? _self.objects : objects // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,npcs: null == npcs ? _self.npcs : npcs // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,
  ));
}
/// Create a copy of TilesetPresetResources
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TilesetThemeModelCopyWith<$Res> get theme {
  
  return $TilesetThemeModelCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}


/// Adds pattern-matching-related methods to [TilesetPresetResources].
extension TilesetPresetResourcesPatterns on TilesetPresetResources {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TilesetPresetResources value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TilesetPresetResources() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TilesetPresetResources value)  $default,){
final _that = this;
switch (_that) {
case _TilesetPresetResources():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TilesetPresetResources value)?  $default,){
final _that = this;
switch (_that) {
case _TilesetPresetResources() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocalizedMap name,  TilesetThemeModel theme,  TilesetType type,  Map<SpriteTileName, List<SpriteCode>> autotileRules,  Map<TileId, PresetTileResource> tiles,  Map<TileId, PresetTileResource> objects,  Map<TileId, PresetTileResource> npcs,  Map<TileId, PresetTileResource> players,  Map<TileId, PresetTileResource> other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TilesetPresetResources() when $default != null:
return $default(_that.name,_that.theme,_that.type,_that.autotileRules,_that.tiles,_that.objects,_that.npcs,_that.players,_that.other);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocalizedMap name,  TilesetThemeModel theme,  TilesetType type,  Map<SpriteTileName, List<SpriteCode>> autotileRules,  Map<TileId, PresetTileResource> tiles,  Map<TileId, PresetTileResource> objects,  Map<TileId, PresetTileResource> npcs,  Map<TileId, PresetTileResource> players,  Map<TileId, PresetTileResource> other)  $default,) {final _that = this;
switch (_that) {
case _TilesetPresetResources():
return $default(_that.name,_that.theme,_that.type,_that.autotileRules,_that.tiles,_that.objects,_that.npcs,_that.players,_that.other);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocalizedMap name,  TilesetThemeModel theme,  TilesetType type,  Map<SpriteTileName, List<SpriteCode>> autotileRules,  Map<TileId, PresetTileResource> tiles,  Map<TileId, PresetTileResource> objects,  Map<TileId, PresetTileResource> npcs,  Map<TileId, PresetTileResource> players,  Map<TileId, PresetTileResource> other)?  $default,) {final _that = this;
switch (_that) {
case _TilesetPresetResources() when $default != null:
return $default(_that.name,_that.theme,_that.type,_that.autotileRules,_that.tiles,_that.objects,_that.npcs,_that.players,_that.other);case _:
  return null;

}
}

}

/// @nodoc


class _TilesetPresetResources implements TilesetPresetResources {
  const _TilesetPresetResources({this.name = LocalizedMap.empty, this.theme = TilesetThemeModel.empty, this.type = TilesetType.whiteBlack, final  Map<SpriteTileName, List<SpriteCode>> autotileRules = const {}, final  Map<TileId, PresetTileResource> tiles = const {}, final  Map<TileId, PresetTileResource> objects = const {}, final  Map<TileId, PresetTileResource> npcs = const {}, final  Map<TileId, PresetTileResource> players = const {}, final  Map<TileId, PresetTileResource> other = const {}}): _autotileRules = autotileRules,_tiles = tiles,_objects = objects,_npcs = npcs,_players = players,_other = other;
  

@override@JsonKey() final  LocalizedMap name;
@override@JsonKey() final  TilesetThemeModel theme;
@override@JsonKey() final  TilesetType type;
 final  Map<SpriteTileName, List<SpriteCode>> _autotileRules;
@override@JsonKey() Map<SpriteTileName, List<SpriteCode>> get autotileRules {
  if (_autotileRules is EqualUnmodifiableMapView) return _autotileRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_autotileRules);
}

 final  Map<TileId, PresetTileResource> _tiles;
@override@JsonKey() Map<TileId, PresetTileResource> get tiles {
  if (_tiles is EqualUnmodifiableMapView) return _tiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_tiles);
}

 final  Map<TileId, PresetTileResource> _objects;
@override@JsonKey() Map<TileId, PresetTileResource> get objects {
  if (_objects is EqualUnmodifiableMapView) return _objects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_objects);
}

 final  Map<TileId, PresetTileResource> _npcs;
@override@JsonKey() Map<TileId, PresetTileResource> get npcs {
  if (_npcs is EqualUnmodifiableMapView) return _npcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_npcs);
}

 final  Map<TileId, PresetTileResource> _players;
@override@JsonKey() Map<TileId, PresetTileResource> get players {
  if (_players is EqualUnmodifiableMapView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_players);
}

 final  Map<TileId, PresetTileResource> _other;
@override@JsonKey() Map<TileId, PresetTileResource> get other {
  if (_other is EqualUnmodifiableMapView) return _other;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_other);
}


/// Create a copy of TilesetPresetResources
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TilesetPresetResourcesCopyWith<_TilesetPresetResources> get copyWith => __$TilesetPresetResourcesCopyWithImpl<_TilesetPresetResources>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TilesetPresetResources&&(identical(other.name, name) || other.name == name)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._autotileRules, _autotileRules)&&const DeepCollectionEquality().equals(other._tiles, _tiles)&&const DeepCollectionEquality().equals(other._objects, _objects)&&const DeepCollectionEquality().equals(other._npcs, _npcs)&&const DeepCollectionEquality().equals(other._players, _players)&&const DeepCollectionEquality().equals(other._other, this._other));
}


@override
int get hashCode => Object.hash(runtimeType,name,theme,type,const DeepCollectionEquality().hash(_autotileRules),const DeepCollectionEquality().hash(_tiles),const DeepCollectionEquality().hash(_objects),const DeepCollectionEquality().hash(_npcs),const DeepCollectionEquality().hash(_players),const DeepCollectionEquality().hash(_other));

@override
String toString() {
  return 'TilesetPresetResources(name: $name, theme: $theme, type: $type, autotileRules: $autotileRules, tiles: $tiles, objects: $objects, npcs: $npcs, players: $players, other: $other)';
}


}

/// @nodoc
abstract mixin class _$TilesetPresetResourcesCopyWith<$Res> implements $TilesetPresetResourcesCopyWith<$Res> {
  factory _$TilesetPresetResourcesCopyWith(_TilesetPresetResources value, $Res Function(_TilesetPresetResources) _then) = __$TilesetPresetResourcesCopyWithImpl;
@override @useResult
$Res call({
 LocalizedMap name, TilesetThemeModel theme, TilesetType type, Map<SpriteTileName, List<SpriteCode>> autotileRules, Map<TileId, PresetTileResource> tiles, Map<TileId, PresetTileResource> objects, Map<TileId, PresetTileResource> npcs, Map<TileId, PresetTileResource> players, Map<TileId, PresetTileResource> other
});


@override $TilesetThemeModelCopyWith<$Res> get theme;

}
/// @nodoc
class __$TilesetPresetResourcesCopyWithImpl<$Res>
    implements _$TilesetPresetResourcesCopyWith<$Res> {
  __$TilesetPresetResourcesCopyWithImpl(this._self, this._then);

  final _TilesetPresetResources _self;
  final $Res Function(_TilesetPresetResources) _then;

/// Create a copy of TilesetPresetResources
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? theme = null,Object? type = null,Object? autotileRules = null,Object? tiles = null,Object? objects = null,Object? npcs = null,Object? players = null,Object? other = null,}) {
  return _then(_TilesetPresetResources(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as LocalizedMap,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as TilesetThemeModel,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TilesetType,autotileRules: null == autotileRules ? _self._autotileRules : autotileRules // ignore: cast_nullable_to_non_nullable
as Map<SpriteTileName, List<SpriteCode>>,tiles: null == tiles ? _self._tiles : tiles // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,objects: null == objects ? _self._objects : objects // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,npcs: null == npcs ? _self._npcs : npcs // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,other: null == other ? _self._other : other // ignore: cast_nullable_to_non_nullable
as Map<TileId, PresetTileResource>,
  ));
}

/// Create a copy of TilesetPresetResources
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TilesetThemeModelCopyWith<$Res> get theme {
  
  return $TilesetThemeModelCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}
}

// dart format on
