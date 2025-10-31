// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_constants_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameConstantsCubitState {

 ForcesConstantsModel get forces;
/// Create a copy of GameConstantsCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameConstantsCubitStateCopyWith<GameConstantsCubitState> get copyWith => _$GameConstantsCubitStateCopyWithImpl<GameConstantsCubitState>(this as GameConstantsCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameConstantsCubitState&&(identical(other.forces, forces) || other.forces == forces));
}


@override
int get hashCode => Object.hash(runtimeType,forces);

@override
String toString() {
  return 'GameConstantsCubitState(forces: $forces)';
}


}

/// @nodoc
abstract mixin class $GameConstantsCubitStateCopyWith<$Res>  {
  factory $GameConstantsCubitStateCopyWith(GameConstantsCubitState value, $Res Function(GameConstantsCubitState) _then) = _$GameConstantsCubitStateCopyWithImpl;
@useResult
$Res call({
 ForcesConstantsModel forces
});


$ForcesConstantsModelCopyWith<$Res> get forces;

}
/// @nodoc
class _$GameConstantsCubitStateCopyWithImpl<$Res>
    implements $GameConstantsCubitStateCopyWith<$Res> {
  _$GameConstantsCubitStateCopyWithImpl(this._self, this._then);

  final GameConstantsCubitState _self;
  final $Res Function(GameConstantsCubitState) _then;

/// Create a copy of GameConstantsCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? forces = null,}) {
  return _then(_self.copyWith(
forces: null == forces ? _self.forces : forces // ignore: cast_nullable_to_non_nullable
as ForcesConstantsModel,
  ));
}
/// Create a copy of GameConstantsCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForcesConstantsModelCopyWith<$Res> get forces {
  
  return $ForcesConstantsModelCopyWith<$Res>(_self.forces, (value) {
    return _then(_self.copyWith(forces: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameConstantsCubitState].
extension GameConstantsCubitStatePatterns on GameConstantsCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameConstantsCubitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameConstantsCubitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameConstantsCubitState value)  $default,){
final _that = this;
switch (_that) {
case _GameConstantsCubitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameConstantsCubitState value)?  $default,){
final _that = this;
switch (_that) {
case _GameConstantsCubitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ForcesConstantsModel forces)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameConstantsCubitState() when $default != null:
return $default(_that.forces);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ForcesConstantsModel forces)  $default,) {final _that = this;
switch (_that) {
case _GameConstantsCubitState():
return $default(_that.forces);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ForcesConstantsModel forces)?  $default,) {final _that = this;
switch (_that) {
case _GameConstantsCubitState() when $default != null:
return $default(_that.forces);case _:
  return null;

}
}

}

/// @nodoc


class _GameConstantsCubitState implements GameConstantsCubitState {
  const _GameConstantsCubitState({this.forces = ForcesConstantsModel.initial});
  

@override@JsonKey() final  ForcesConstantsModel forces;

/// Create a copy of GameConstantsCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameConstantsCubitStateCopyWith<_GameConstantsCubitState> get copyWith => __$GameConstantsCubitStateCopyWithImpl<_GameConstantsCubitState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameConstantsCubitState&&(identical(other.forces, forces) || other.forces == forces));
}


@override
int get hashCode => Object.hash(runtimeType,forces);

@override
String toString() {
  return 'GameConstantsCubitState(forces: $forces)';
}


}

/// @nodoc
abstract mixin class _$GameConstantsCubitStateCopyWith<$Res> implements $GameConstantsCubitStateCopyWith<$Res> {
  factory _$GameConstantsCubitStateCopyWith(_GameConstantsCubitState value, $Res Function(_GameConstantsCubitState) _then) = __$GameConstantsCubitStateCopyWithImpl;
@override @useResult
$Res call({
 ForcesConstantsModel forces
});


@override $ForcesConstantsModelCopyWith<$Res> get forces;

}
/// @nodoc
class __$GameConstantsCubitStateCopyWithImpl<$Res>
    implements _$GameConstantsCubitStateCopyWith<$Res> {
  __$GameConstantsCubitStateCopyWithImpl(this._self, this._then);

  final _GameConstantsCubitState _self;
  final $Res Function(_GameConstantsCubitState) _then;

/// Create a copy of GameConstantsCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? forces = null,}) {
  return _then(_GameConstantsCubitState(
forces: null == forces ? _self.forces : forces // ignore: cast_nullable_to_non_nullable
as ForcesConstantsModel,
  ));
}

/// Create a copy of GameConstantsCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForcesConstantsModelCopyWith<$Res> get forces {
  
  return $ForcesConstantsModelCopyWith<$Res>(_self.forces, (value) {
    return _then(_self.copyWith(forces: value));
  });
}
}

// dart format on
