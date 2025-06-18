// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapEditorBlocState {

 bool get isEditing;
/// Create a copy of MapEditorBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapEditorBlocStateCopyWith<MapEditorBlocState> get copyWith => _$MapEditorBlocStateCopyWithImpl<MapEditorBlocState>(this as MapEditorBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapEditorBlocState&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing));
}


@override
int get hashCode => Object.hash(runtimeType,isEditing);

@override
String toString() {
  return 'MapEditorBlocState(isEditing: $isEditing)';
}


}

/// @nodoc
abstract mixin class $MapEditorBlocStateCopyWith<$Res>  {
  factory $MapEditorBlocStateCopyWith(MapEditorBlocState value, $Res Function(MapEditorBlocState) _then) = _$MapEditorBlocStateCopyWithImpl;
@useResult
$Res call({
 bool isEditing
});




}
/// @nodoc
class _$MapEditorBlocStateCopyWithImpl<$Res>
    implements $MapEditorBlocStateCopyWith<$Res> {
  _$MapEditorBlocStateCopyWithImpl(this._self, this._then);

  final MapEditorBlocState _self;
  final $Res Function(MapEditorBlocState) _then;

/// Create a copy of MapEditorBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isEditing = null,}) {
  return _then(_self.copyWith(
isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _MapEditorBlocState implements MapEditorBlocState {
  const _MapEditorBlocState({this.isEditing = false});
  

@override@JsonKey() final  bool isEditing;

/// Create a copy of MapEditorBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapEditorBlocStateCopyWith<_MapEditorBlocState> get copyWith => __$MapEditorBlocStateCopyWithImpl<_MapEditorBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapEditorBlocState&&(identical(other.isEditing, isEditing) || other.isEditing == isEditing));
}


@override
int get hashCode => Object.hash(runtimeType,isEditing);

@override
String toString() {
  return 'MapEditorBlocState(isEditing: $isEditing)';
}


}

/// @nodoc
abstract mixin class _$MapEditorBlocStateCopyWith<$Res> implements $MapEditorBlocStateCopyWith<$Res> {
  factory _$MapEditorBlocStateCopyWith(_MapEditorBlocState value, $Res Function(_MapEditorBlocState) _then) = __$MapEditorBlocStateCopyWithImpl;
@override @useResult
$Res call({
 bool isEditing
});




}
/// @nodoc
class __$MapEditorBlocStateCopyWithImpl<$Res>
    implements _$MapEditorBlocStateCopyWith<$Res> {
  __$MapEditorBlocStateCopyWithImpl(this._self, this._then);

  final _MapEditorBlocState _self;
  final $Res Function(_MapEditorBlocState) _then;

/// Create a copy of MapEditorBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isEditing = null,}) {
  return _then(_MapEditorBlocState(
isEditing: null == isEditing ? _self.isEditing : isEditing // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
