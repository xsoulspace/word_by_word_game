// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_profile_creator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PlayerProfileCreatorState {

 String get nameErrorMessage; Color get color;
/// Create a copy of PlayerProfileCreatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerProfileCreatorStateCopyWith<PlayerProfileCreatorState> get copyWith => _$PlayerProfileCreatorStateCopyWithImpl<PlayerProfileCreatorState>(this as PlayerProfileCreatorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerProfileCreatorState&&(identical(other.nameErrorMessage, nameErrorMessage) || other.nameErrorMessage == nameErrorMessage)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,nameErrorMessage,color);

@override
String toString() {
  return 'PlayerProfileCreatorState(nameErrorMessage: $nameErrorMessage, color: $color)';
}


}

/// @nodoc
abstract mixin class $PlayerProfileCreatorStateCopyWith<$Res>  {
  factory $PlayerProfileCreatorStateCopyWith(PlayerProfileCreatorState value, $Res Function(PlayerProfileCreatorState) _then) = _$PlayerProfileCreatorStateCopyWithImpl;
@useResult
$Res call({
 String nameErrorMessage, Color color
});




}
/// @nodoc
class _$PlayerProfileCreatorStateCopyWithImpl<$Res>
    implements $PlayerProfileCreatorStateCopyWith<$Res> {
  _$PlayerProfileCreatorStateCopyWithImpl(this._self, this._then);

  final PlayerProfileCreatorState _self;
  final $Res Function(PlayerProfileCreatorState) _then;

/// Create a copy of PlayerProfileCreatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nameErrorMessage = null,Object? color = null,}) {
  return _then(_self.copyWith(
nameErrorMessage: null == nameErrorMessage ? _self.nameErrorMessage : nameErrorMessage // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerProfileCreatorState].
extension PlayerProfileCreatorStatePatterns on PlayerProfileCreatorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerProfileCreatorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerProfileCreatorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerProfileCreatorState value)  $default,){
final _that = this;
switch (_that) {
case _PlayerProfileCreatorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerProfileCreatorState value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerProfileCreatorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nameErrorMessage,  Color color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerProfileCreatorState() when $default != null:
return $default(_that.nameErrorMessage,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nameErrorMessage,  Color color)  $default,) {final _that = this;
switch (_that) {
case _PlayerProfileCreatorState():
return $default(_that.nameErrorMessage,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nameErrorMessage,  Color color)?  $default,) {final _that = this;
switch (_that) {
case _PlayerProfileCreatorState() when $default != null:
return $default(_that.nameErrorMessage,_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _PlayerProfileCreatorState implements PlayerProfileCreatorState {
  const _PlayerProfileCreatorState({this.nameErrorMessage = '', this.color = Colors.teal});
  

@override@JsonKey() final  String nameErrorMessage;
@override@JsonKey() final  Color color;

/// Create a copy of PlayerProfileCreatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerProfileCreatorStateCopyWith<_PlayerProfileCreatorState> get copyWith => __$PlayerProfileCreatorStateCopyWithImpl<_PlayerProfileCreatorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerProfileCreatorState&&(identical(other.nameErrorMessage, nameErrorMessage) || other.nameErrorMessage == nameErrorMessage)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,nameErrorMessage,color);

@override
String toString() {
  return 'PlayerProfileCreatorState(nameErrorMessage: $nameErrorMessage, color: $color)';
}


}

/// @nodoc
abstract mixin class _$PlayerProfileCreatorStateCopyWith<$Res> implements $PlayerProfileCreatorStateCopyWith<$Res> {
  factory _$PlayerProfileCreatorStateCopyWith(_PlayerProfileCreatorState value, $Res Function(_PlayerProfileCreatorState) _then) = __$PlayerProfileCreatorStateCopyWithImpl;
@override @useResult
$Res call({
 String nameErrorMessage, Color color
});




}
/// @nodoc
class __$PlayerProfileCreatorStateCopyWithImpl<$Res>
    implements _$PlayerProfileCreatorStateCopyWith<$Res> {
  __$PlayerProfileCreatorStateCopyWithImpl(this._self, this._then);

  final _PlayerProfileCreatorState _self;
  final $Res Function(_PlayerProfileCreatorState) _then;

/// Create a copy of PlayerProfileCreatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nameErrorMessage = null,Object? color = null,}) {
  return _then(_PlayerProfileCreatorState(
nameErrorMessage: null == nameErrorMessage ? _self.nameErrorMessage : nameErrorMessage // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color,
  ));
}


}

// dart format on
