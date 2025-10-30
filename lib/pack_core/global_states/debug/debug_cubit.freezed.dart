// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DebugCubitState implements DiagnosticableTreeMixin {

 bool get isCameraFollowingFocusedObject; bool get isDebugPaneVisible; bool get isDebugLinesVisible; bool get isFpsEnabled;
/// Create a copy of DebugCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebugCubitStateCopyWith<DebugCubitState> get copyWith => _$DebugCubitStateCopyWithImpl<DebugCubitState>(this as DebugCubitState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DebugCubitState'))
    ..add(DiagnosticsProperty('isCameraFollowingFocusedObject', isCameraFollowingFocusedObject))..add(DiagnosticsProperty('isDebugPaneVisible', isDebugPaneVisible))..add(DiagnosticsProperty('isDebugLinesVisible', isDebugLinesVisible))..add(DiagnosticsProperty('isFpsEnabled', isFpsEnabled));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebugCubitState&&(identical(other.isCameraFollowingFocusedObject, isCameraFollowingFocusedObject) || other.isCameraFollowingFocusedObject == isCameraFollowingFocusedObject)&&(identical(other.isDebugPaneVisible, isDebugPaneVisible) || other.isDebugPaneVisible == isDebugPaneVisible)&&(identical(other.isDebugLinesVisible, isDebugLinesVisible) || other.isDebugLinesVisible == isDebugLinesVisible)&&(identical(other.isFpsEnabled, isFpsEnabled) || other.isFpsEnabled == isFpsEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,isCameraFollowingFocusedObject,isDebugPaneVisible,isDebugLinesVisible,isFpsEnabled);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DebugCubitState(isCameraFollowingFocusedObject: $isCameraFollowingFocusedObject, isDebugPaneVisible: $isDebugPaneVisible, isDebugLinesVisible: $isDebugLinesVisible, isFpsEnabled: $isFpsEnabled)';
}


}

/// @nodoc
abstract mixin class $DebugCubitStateCopyWith<$Res>  {
  factory $DebugCubitStateCopyWith(DebugCubitState value, $Res Function(DebugCubitState) _then) = _$DebugCubitStateCopyWithImpl;
@useResult
$Res call({
 bool isCameraFollowingFocusedObject, bool isDebugPaneVisible, bool isDebugLinesVisible, bool isFpsEnabled
});




}
/// @nodoc
class _$DebugCubitStateCopyWithImpl<$Res>
    implements $DebugCubitStateCopyWith<$Res> {
  _$DebugCubitStateCopyWithImpl(this._self, this._then);

  final DebugCubitState _self;
  final $Res Function(DebugCubitState) _then;

/// Create a copy of DebugCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCameraFollowingFocusedObject = null,Object? isDebugPaneVisible = null,Object? isDebugLinesVisible = null,Object? isFpsEnabled = null,}) {
  return _then(_self.copyWith(
isCameraFollowingFocusedObject: null == isCameraFollowingFocusedObject ? _self.isCameraFollowingFocusedObject : isCameraFollowingFocusedObject // ignore: cast_nullable_to_non_nullable
as bool,isDebugPaneVisible: null == isDebugPaneVisible ? _self.isDebugPaneVisible : isDebugPaneVisible // ignore: cast_nullable_to_non_nullable
as bool,isDebugLinesVisible: null == isDebugLinesVisible ? _self.isDebugLinesVisible : isDebugLinesVisible // ignore: cast_nullable_to_non_nullable
as bool,isFpsEnabled: null == isFpsEnabled ? _self.isFpsEnabled : isFpsEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DebugCubitState].
extension DebugCubitStatePatterns on DebugCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebugCubitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebugCubitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebugCubitState value)  $default,){
final _that = this;
switch (_that) {
case _DebugCubitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebugCubitState value)?  $default,){
final _that = this;
switch (_that) {
case _DebugCubitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCameraFollowingFocusedObject,  bool isDebugPaneVisible,  bool isDebugLinesVisible,  bool isFpsEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebugCubitState() when $default != null:
return $default(_that.isCameraFollowingFocusedObject,_that.isDebugPaneVisible,_that.isDebugLinesVisible,_that.isFpsEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCameraFollowingFocusedObject,  bool isDebugPaneVisible,  bool isDebugLinesVisible,  bool isFpsEnabled)  $default,) {final _that = this;
switch (_that) {
case _DebugCubitState():
return $default(_that.isCameraFollowingFocusedObject,_that.isDebugPaneVisible,_that.isDebugLinesVisible,_that.isFpsEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCameraFollowingFocusedObject,  bool isDebugPaneVisible,  bool isDebugLinesVisible,  bool isFpsEnabled)?  $default,) {final _that = this;
switch (_that) {
case _DebugCubitState() when $default != null:
return $default(_that.isCameraFollowingFocusedObject,_that.isDebugPaneVisible,_that.isDebugLinesVisible,_that.isFpsEnabled);case _:
  return null;

}
}

}

/// @nodoc


class _DebugCubitState with DiagnosticableTreeMixin implements DebugCubitState {
  const _DebugCubitState({this.isCameraFollowingFocusedObject = true, this.isDebugPaneVisible = kDebugMode, this.isDebugLinesVisible = false, this.isFpsEnabled = false});
  

@override@JsonKey() final  bool isCameraFollowingFocusedObject;
@override@JsonKey() final  bool isDebugPaneVisible;
@override@JsonKey() final  bool isDebugLinesVisible;
@override@JsonKey() final  bool isFpsEnabled;

/// Create a copy of DebugCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebugCubitStateCopyWith<_DebugCubitState> get copyWith => __$DebugCubitStateCopyWithImpl<_DebugCubitState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DebugCubitState'))
    ..add(DiagnosticsProperty('isCameraFollowingFocusedObject', isCameraFollowingFocusedObject))..add(DiagnosticsProperty('isDebugPaneVisible', isDebugPaneVisible))..add(DiagnosticsProperty('isDebugLinesVisible', isDebugLinesVisible))..add(DiagnosticsProperty('isFpsEnabled', isFpsEnabled));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebugCubitState&&(identical(other.isCameraFollowingFocusedObject, isCameraFollowingFocusedObject) || other.isCameraFollowingFocusedObject == isCameraFollowingFocusedObject)&&(identical(other.isDebugPaneVisible, isDebugPaneVisible) || other.isDebugPaneVisible == isDebugPaneVisible)&&(identical(other.isDebugLinesVisible, isDebugLinesVisible) || other.isDebugLinesVisible == isDebugLinesVisible)&&(identical(other.isFpsEnabled, isFpsEnabled) || other.isFpsEnabled == isFpsEnabled));
}


@override
int get hashCode => Object.hash(runtimeType,isCameraFollowingFocusedObject,isDebugPaneVisible,isDebugLinesVisible,isFpsEnabled);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DebugCubitState(isCameraFollowingFocusedObject: $isCameraFollowingFocusedObject, isDebugPaneVisible: $isDebugPaneVisible, isDebugLinesVisible: $isDebugLinesVisible, isFpsEnabled: $isFpsEnabled)';
}


}

/// @nodoc
abstract mixin class _$DebugCubitStateCopyWith<$Res> implements $DebugCubitStateCopyWith<$Res> {
  factory _$DebugCubitStateCopyWith(_DebugCubitState value, $Res Function(_DebugCubitState) _then) = __$DebugCubitStateCopyWithImpl;
@override @useResult
$Res call({
 bool isCameraFollowingFocusedObject, bool isDebugPaneVisible, bool isDebugLinesVisible, bool isFpsEnabled
});




}
/// @nodoc
class __$DebugCubitStateCopyWithImpl<$Res>
    implements _$DebugCubitStateCopyWith<$Res> {
  __$DebugCubitStateCopyWithImpl(this._self, this._then);

  final _DebugCubitState _self;
  final $Res Function(_DebugCubitState) _then;

/// Create a copy of DebugCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCameraFollowingFocusedObject = null,Object? isDebugPaneVisible = null,Object? isDebugLinesVisible = null,Object? isFpsEnabled = null,}) {
  return _then(_DebugCubitState(
isCameraFollowingFocusedObject: null == isCameraFollowingFocusedObject ? _self.isCameraFollowingFocusedObject : isCameraFollowingFocusedObject // ignore: cast_nullable_to_non_nullable
as bool,isDebugPaneVisible: null == isDebugPaneVisible ? _self.isDebugPaneVisible : isDebugPaneVisible // ignore: cast_nullable_to_non_nullable
as bool,isDebugLinesVisible: null == isDebugLinesVisible ? _self.isDebugLinesVisible : isDebugLinesVisible // ignore: cast_nullable_to_non_nullable
as bool,isFpsEnabled: null == isFpsEnabled ? _self.isFpsEnabled : isFpsEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
