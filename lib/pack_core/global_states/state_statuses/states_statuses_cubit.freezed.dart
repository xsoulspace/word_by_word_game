// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states_statuses_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StatesStatusesCubitState {

/// global statuses
/// - loading
/// -- level
/// -- players
/// -- resources
/// - playing
/// - paused
 Set<LevelPartName> get loadedLevelParts; LevelStateStatus get levelStateStatus;
/// Create a copy of StatesStatusesCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatesStatusesCubitStateCopyWith<StatesStatusesCubitState> get copyWith => _$StatesStatusesCubitStateCopyWithImpl<StatesStatusesCubitState>(this as StatesStatusesCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatesStatusesCubitState&&const DeepCollectionEquality().equals(other.loadedLevelParts, loadedLevelParts)&&(identical(other.levelStateStatus, levelStateStatus) || other.levelStateStatus == levelStateStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(loadedLevelParts),levelStateStatus);

@override
String toString() {
  return 'StatesStatusesCubitState(loadedLevelParts: $loadedLevelParts, levelStateStatus: $levelStateStatus)';
}


}

/// @nodoc
abstract mixin class $StatesStatusesCubitStateCopyWith<$Res>  {
  factory $StatesStatusesCubitStateCopyWith(StatesStatusesCubitState value, $Res Function(StatesStatusesCubitState) _then) = _$StatesStatusesCubitStateCopyWithImpl;
@useResult
$Res call({
 Set<LevelPartName> loadedLevelParts, LevelStateStatus levelStateStatus
});




}
/// @nodoc
class _$StatesStatusesCubitStateCopyWithImpl<$Res>
    implements $StatesStatusesCubitStateCopyWith<$Res> {
  _$StatesStatusesCubitStateCopyWithImpl(this._self, this._then);

  final StatesStatusesCubitState _self;
  final $Res Function(StatesStatusesCubitState) _then;

/// Create a copy of StatesStatusesCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loadedLevelParts = null,Object? levelStateStatus = null,}) {
  return _then(_self.copyWith(
loadedLevelParts: null == loadedLevelParts ? _self.loadedLevelParts : loadedLevelParts // ignore: cast_nullable_to_non_nullable
as Set<LevelPartName>,levelStateStatus: null == levelStateStatus ? _self.levelStateStatus : levelStateStatus // ignore: cast_nullable_to_non_nullable
as LevelStateStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [StatesStatusesCubitState].
extension StatesStatusesCubitStatePatterns on StatesStatusesCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatesStatusesCubitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatesStatusesCubitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatesStatusesCubitState value)  $default,){
final _that = this;
switch (_that) {
case _StatesStatusesCubitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatesStatusesCubitState value)?  $default,){
final _that = this;
switch (_that) {
case _StatesStatusesCubitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<LevelPartName> loadedLevelParts,  LevelStateStatus levelStateStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatesStatusesCubitState() when $default != null:
return $default(_that.loadedLevelParts,_that.levelStateStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<LevelPartName> loadedLevelParts,  LevelStateStatus levelStateStatus)  $default,) {final _that = this;
switch (_that) {
case _StatesStatusesCubitState():
return $default(_that.loadedLevelParts,_that.levelStateStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<LevelPartName> loadedLevelParts,  LevelStateStatus levelStateStatus)?  $default,) {final _that = this;
switch (_that) {
case _StatesStatusesCubitState() when $default != null:
return $default(_that.loadedLevelParts,_that.levelStateStatus);case _:
  return null;

}
}

}

/// @nodoc


class _StatesStatusesCubitState implements StatesStatusesCubitState {
  const _StatesStatusesCubitState({final  Set<LevelPartName> loadedLevelParts = const {}, this.levelStateStatus = LevelStateStatus.loading}): _loadedLevelParts = loadedLevelParts;
  

/// global statuses
/// - loading
/// -- level
/// -- players
/// -- resources
/// - playing
/// - paused
 final  Set<LevelPartName> _loadedLevelParts;
/// global statuses
/// - loading
/// -- level
/// -- players
/// -- resources
/// - playing
/// - paused
@override@JsonKey() Set<LevelPartName> get loadedLevelParts {
  if (_loadedLevelParts is EqualUnmodifiableSetView) return _loadedLevelParts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_loadedLevelParts);
}

@override@JsonKey() final  LevelStateStatus levelStateStatus;

/// Create a copy of StatesStatusesCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatesStatusesCubitStateCopyWith<_StatesStatusesCubitState> get copyWith => __$StatesStatusesCubitStateCopyWithImpl<_StatesStatusesCubitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatesStatusesCubitState&&const DeepCollectionEquality().equals(other._loadedLevelParts, _loadedLevelParts)&&(identical(other.levelStateStatus, levelStateStatus) || other.levelStateStatus == levelStateStatus));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_loadedLevelParts),levelStateStatus);

@override
String toString() {
  return 'StatesStatusesCubitState(loadedLevelParts: $loadedLevelParts, levelStateStatus: $levelStateStatus)';
}


}

/// @nodoc
abstract mixin class _$StatesStatusesCubitStateCopyWith<$Res> implements $StatesStatusesCubitStateCopyWith<$Res> {
  factory _$StatesStatusesCubitStateCopyWith(_StatesStatusesCubitState value, $Res Function(_StatesStatusesCubitState) _then) = __$StatesStatusesCubitStateCopyWithImpl;
@override @useResult
$Res call({
 Set<LevelPartName> loadedLevelParts, LevelStateStatus levelStateStatus
});




}
/// @nodoc
class __$StatesStatusesCubitStateCopyWithImpl<$Res>
    implements _$StatesStatusesCubitStateCopyWith<$Res> {
  __$StatesStatusesCubitStateCopyWithImpl(this._self, this._then);

  final _StatesStatusesCubitState _self;
  final $Res Function(_StatesStatusesCubitState) _then;

/// Create a copy of StatesStatusesCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loadedLevelParts = null,Object? levelStateStatus = null,}) {
  return _then(_StatesStatusesCubitState(
loadedLevelParts: null == loadedLevelParts ? _self._loadedLevelParts : loadedLevelParts // ignore: cast_nullable_to_non_nullable
as Set<LevelPartName>,levelStateStatus: null == levelStateStatus ? _self.levelStateStatus : levelStateStatus // ignore: cast_nullable_to_non_nullable
as LevelStateStatus,
  ));
}


}

// dart format on
