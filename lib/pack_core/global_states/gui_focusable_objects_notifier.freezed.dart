// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gui_focusable_objects_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GuiFocusableObjectsNotifierState {

 bool get isChoosing;/// should have order:
/// farthest | nearest in center | farthest
///
/// Maybe it would be good to show some distance?
 List<Gid> get nearestObjectIds; bool get isNearestObjectsLoaded;/// {@macro focusedObjectId}
 Gid get focusedObjectId;
/// Create a copy of GuiFocusableObjectsNotifierState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GuiFocusableObjectsNotifierStateCopyWith<GuiFocusableObjectsNotifierState> get copyWith => _$GuiFocusableObjectsNotifierStateCopyWithImpl<GuiFocusableObjectsNotifierState>(this as GuiFocusableObjectsNotifierState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GuiFocusableObjectsNotifierState&&(identical(other.isChoosing, isChoosing) || other.isChoosing == isChoosing)&&const DeepCollectionEquality().equals(other.nearestObjectIds, nearestObjectIds)&&(identical(other.isNearestObjectsLoaded, isNearestObjectsLoaded) || other.isNearestObjectsLoaded == isNearestObjectsLoaded)&&(identical(other.focusedObjectId, focusedObjectId) || other.focusedObjectId == focusedObjectId));
}


@override
int get hashCode => Object.hash(runtimeType,isChoosing,const DeepCollectionEquality().hash(nearestObjectIds),isNearestObjectsLoaded,focusedObjectId);

@override
String toString() {
  return 'GuiFocusableObjectsNotifierState(isChoosing: $isChoosing, nearestObjectIds: $nearestObjectIds, isNearestObjectsLoaded: $isNearestObjectsLoaded, focusedObjectId: $focusedObjectId)';
}


}

/// @nodoc
abstract mixin class $GuiFocusableObjectsNotifierStateCopyWith<$Res>  {
  factory $GuiFocusableObjectsNotifierStateCopyWith(GuiFocusableObjectsNotifierState value, $Res Function(GuiFocusableObjectsNotifierState) _then) = _$GuiFocusableObjectsNotifierStateCopyWithImpl;
@useResult
$Res call({
 bool isChoosing, List<Gid> nearestObjectIds, bool isNearestObjectsLoaded, Gid focusedObjectId
});


$GidCopyWith<$Res> get focusedObjectId;

}
/// @nodoc
class _$GuiFocusableObjectsNotifierStateCopyWithImpl<$Res>
    implements $GuiFocusableObjectsNotifierStateCopyWith<$Res> {
  _$GuiFocusableObjectsNotifierStateCopyWithImpl(this._self, this._then);

  final GuiFocusableObjectsNotifierState _self;
  final $Res Function(GuiFocusableObjectsNotifierState) _then;

/// Create a copy of GuiFocusableObjectsNotifierState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isChoosing = null,Object? nearestObjectIds = null,Object? isNearestObjectsLoaded = null,Object? focusedObjectId = null,}) {
  return _then(_self.copyWith(
isChoosing: null == isChoosing ? _self.isChoosing : isChoosing // ignore: cast_nullable_to_non_nullable
as bool,nearestObjectIds: null == nearestObjectIds ? _self.nearestObjectIds : nearestObjectIds // ignore: cast_nullable_to_non_nullable
as List<Gid>,isNearestObjectsLoaded: null == isNearestObjectsLoaded ? _self.isNearestObjectsLoaded : isNearestObjectsLoaded // ignore: cast_nullable_to_non_nullable
as bool,focusedObjectId: null == focusedObjectId ? _self.focusedObjectId : focusedObjectId // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}
/// Create a copy of GuiFocusableObjectsNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get focusedObjectId {
  
  return $GidCopyWith<$Res>(_self.focusedObjectId, (value) {
    return _then(_self.copyWith(focusedObjectId: value));
  });
}
}


/// Adds pattern-matching-related methods to [GuiFocusableObjectsNotifierState].
extension GuiFocusableObjectsNotifierStatePatterns on GuiFocusableObjectsNotifierState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GuiFcoNotifierState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GuiFcoNotifierState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GuiFcoNotifierState value)  $default,){
final _that = this;
switch (_that) {
case _GuiFcoNotifierState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GuiFcoNotifierState value)?  $default,){
final _that = this;
switch (_that) {
case _GuiFcoNotifierState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isChoosing,  List<Gid> nearestObjectIds,  bool isNearestObjectsLoaded,  Gid focusedObjectId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GuiFcoNotifierState() when $default != null:
return $default(_that.isChoosing,_that.nearestObjectIds,_that.isNearestObjectsLoaded,_that.focusedObjectId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isChoosing,  List<Gid> nearestObjectIds,  bool isNearestObjectsLoaded,  Gid focusedObjectId)  $default,) {final _that = this;
switch (_that) {
case _GuiFcoNotifierState():
return $default(_that.isChoosing,_that.nearestObjectIds,_that.isNearestObjectsLoaded,_that.focusedObjectId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isChoosing,  List<Gid> nearestObjectIds,  bool isNearestObjectsLoaded,  Gid focusedObjectId)?  $default,) {final _that = this;
switch (_that) {
case _GuiFcoNotifierState() when $default != null:
return $default(_that.isChoosing,_that.nearestObjectIds,_that.isNearestObjectsLoaded,_that.focusedObjectId);case _:
  return null;

}
}

}

/// @nodoc


class _GuiFcoNotifierState implements GuiFocusableObjectsNotifierState {
  const _GuiFcoNotifierState({this.isChoosing = false, final  List<Gid> nearestObjectIds = const [], this.isNearestObjectsLoaded = false, this.focusedObjectId = Gid.empty}): _nearestObjectIds = nearestObjectIds;
  

@override@JsonKey() final  bool isChoosing;
/// should have order:
/// farthest | nearest in center | farthest
///
/// Maybe it would be good to show some distance?
 final  List<Gid> _nearestObjectIds;
/// should have order:
/// farthest | nearest in center | farthest
///
/// Maybe it would be good to show some distance?
@override@JsonKey() List<Gid> get nearestObjectIds {
  if (_nearestObjectIds is EqualUnmodifiableListView) return _nearestObjectIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearestObjectIds);
}

@override@JsonKey() final  bool isNearestObjectsLoaded;
/// {@macro focusedObjectId}
@override@JsonKey() final  Gid focusedObjectId;

/// Create a copy of GuiFocusableObjectsNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GuiFcoNotifierStateCopyWith<_GuiFcoNotifierState> get copyWith => __$GuiFcoNotifierStateCopyWithImpl<_GuiFcoNotifierState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GuiFcoNotifierState&&(identical(other.isChoosing, isChoosing) || other.isChoosing == isChoosing)&&const DeepCollectionEquality().equals(other._nearestObjectIds, _nearestObjectIds)&&(identical(other.isNearestObjectsLoaded, isNearestObjectsLoaded) || other.isNearestObjectsLoaded == isNearestObjectsLoaded)&&(identical(other.focusedObjectId, focusedObjectId) || other.focusedObjectId == focusedObjectId));
}


@override
int get hashCode => Object.hash(runtimeType,isChoosing,const DeepCollectionEquality().hash(_nearestObjectIds),isNearestObjectsLoaded,focusedObjectId);

@override
String toString() {
  return 'GuiFocusableObjectsNotifierState(isChoosing: $isChoosing, nearestObjectIds: $nearestObjectIds, isNearestObjectsLoaded: $isNearestObjectsLoaded, focusedObjectId: $focusedObjectId)';
}


}

/// @nodoc
abstract mixin class _$GuiFcoNotifierStateCopyWith<$Res> implements $GuiFocusableObjectsNotifierStateCopyWith<$Res> {
  factory _$GuiFcoNotifierStateCopyWith(_GuiFcoNotifierState value, $Res Function(_GuiFcoNotifierState) _then) = __$GuiFcoNotifierStateCopyWithImpl;
@override @useResult
$Res call({
 bool isChoosing, List<Gid> nearestObjectIds, bool isNearestObjectsLoaded, Gid focusedObjectId
});


@override $GidCopyWith<$Res> get focusedObjectId;

}
/// @nodoc
class __$GuiFcoNotifierStateCopyWithImpl<$Res>
    implements _$GuiFcoNotifierStateCopyWith<$Res> {
  __$GuiFcoNotifierStateCopyWithImpl(this._self, this._then);

  final _GuiFcoNotifierState _self;
  final $Res Function(_GuiFcoNotifierState) _then;

/// Create a copy of GuiFocusableObjectsNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isChoosing = null,Object? nearestObjectIds = null,Object? isNearestObjectsLoaded = null,Object? focusedObjectId = null,}) {
  return _then(_GuiFcoNotifierState(
isChoosing: null == isChoosing ? _self.isChoosing : isChoosing // ignore: cast_nullable_to_non_nullable
as bool,nearestObjectIds: null == nearestObjectIds ? _self._nearestObjectIds : nearestObjectIds // ignore: cast_nullable_to_non_nullable
as List<Gid>,isNearestObjectsLoaded: null == isNearestObjectsLoaded ? _self.isNearestObjectsLoaded : isNearestObjectsLoaded // ignore: cast_nullable_to_non_nullable
as bool,focusedObjectId: null == focusedObjectId ? _self.focusedObjectId : focusedObjectId // ignore: cast_nullable_to_non_nullable
as Gid,
  ));
}

/// Create a copy of GuiFocusableObjectsNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GidCopyWith<$Res> get focusedObjectId {
  
  return $GidCopyWith<$Res>(_self.focusedObjectId, (value) {
    return _then(_self.copyWith(focusedObjectId: value));
  });
}
}

// dart format on
