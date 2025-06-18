// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LevelRouteArgs {

 String get levelId;
/// Create a copy of LevelRouteArgs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelRouteArgsCopyWith<LevelRouteArgs> get copyWith => _$LevelRouteArgsCopyWithImpl<LevelRouteArgs>(this as LevelRouteArgs, _$identity);

  /// Serializes this LevelRouteArgs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelRouteArgs&&(identical(other.levelId, levelId) || other.levelId == levelId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelId);

@override
String toString() {
  return 'LevelRouteArgs(levelId: $levelId)';
}


}

/// @nodoc
abstract mixin class $LevelRouteArgsCopyWith<$Res>  {
  factory $LevelRouteArgsCopyWith(LevelRouteArgs value, $Res Function(LevelRouteArgs) _then) = _$LevelRouteArgsCopyWithImpl;
@useResult
$Res call({
 String levelId
});




}
/// @nodoc
class _$LevelRouteArgsCopyWithImpl<$Res>
    implements $LevelRouteArgsCopyWith<$Res> {
  _$LevelRouteArgsCopyWithImpl(this._self, this._then);

  final LevelRouteArgs _self;
  final $Res Function(LevelRouteArgs) _then;

/// Create a copy of LevelRouteArgs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? levelId = null,}) {
  return _then(_self.copyWith(
levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LevelRouteArgs extends LevelRouteArgs {
  const _LevelRouteArgs({this.levelId = ''}): super._();
  factory _LevelRouteArgs.fromJson(Map<String, dynamic> json) => _$LevelRouteArgsFromJson(json);

@override@JsonKey() final  String levelId;

/// Create a copy of LevelRouteArgs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelRouteArgsCopyWith<_LevelRouteArgs> get copyWith => __$LevelRouteArgsCopyWithImpl<_LevelRouteArgs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelRouteArgsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelRouteArgs&&(identical(other.levelId, levelId) || other.levelId == levelId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,levelId);

@override
String toString() {
  return 'LevelRouteArgs(levelId: $levelId)';
}


}

/// @nodoc
abstract mixin class _$LevelRouteArgsCopyWith<$Res> implements $LevelRouteArgsCopyWith<$Res> {
  factory _$LevelRouteArgsCopyWith(_LevelRouteArgs value, $Res Function(_LevelRouteArgs) _then) = __$LevelRouteArgsCopyWithImpl;
@override @useResult
$Res call({
 String levelId
});




}
/// @nodoc
class __$LevelRouteArgsCopyWithImpl<$Res>
    implements _$LevelRouteArgsCopyWith<$Res> {
  __$LevelRouteArgsCopyWithImpl(this._self, this._then);

  final _LevelRouteArgs _self;
  final $Res Function(_LevelRouteArgs) _then;

/// Create a copy of LevelRouteArgs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? levelId = null,}) {
  return _then(_LevelRouteArgs(
levelId: null == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
