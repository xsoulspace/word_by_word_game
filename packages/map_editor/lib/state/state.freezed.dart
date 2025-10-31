// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorldState {

 WorldDateTimeModel get dateTime; WorldDateTimeModel get lastDateTime; int get dateTimeDelta;
/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorldStateCopyWith<WorldState> get copyWith => _$WorldStateCopyWithImpl<WorldState>(this as WorldState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorldState&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.lastDateTime, lastDateTime) || other.lastDateTime == lastDateTime)&&(identical(other.dateTimeDelta, dateTimeDelta) || other.dateTimeDelta == dateTimeDelta));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,lastDateTime,dateTimeDelta);

@override
String toString() {
  return 'WorldState(dateTime: $dateTime, lastDateTime: $lastDateTime, dateTimeDelta: $dateTimeDelta)';
}


}

/// @nodoc
abstract mixin class $WorldStateCopyWith<$Res>  {
  factory $WorldStateCopyWith(WorldState value, $Res Function(WorldState) _then) = _$WorldStateCopyWithImpl;
@useResult
$Res call({
 WorldDateTimeModel dateTime, WorldDateTimeModel lastDateTime, int dateTimeDelta
});


$WorldDateTimeModelCopyWith<$Res> get dateTime;$WorldDateTimeModelCopyWith<$Res> get lastDateTime;

}
/// @nodoc
class _$WorldStateCopyWithImpl<$Res>
    implements $WorldStateCopyWith<$Res> {
  _$WorldStateCopyWithImpl(this._self, this._then);

  final WorldState _self;
  final $Res Function(WorldState) _then;

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateTime = null,Object? lastDateTime = null,Object? dateTimeDelta = null,}) {
  return _then(_self.copyWith(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,lastDateTime: null == lastDateTime ? _self.lastDateTime : lastDateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,dateTimeDelta: null == dateTimeDelta ? _self.dateTimeDelta : dateTimeDelta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get dateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.dateTime, (value) {
    return _then(_self.copyWith(dateTime: value));
  });
}/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get lastDateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.lastDateTime, (value) {
    return _then(_self.copyWith(lastDateTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorldState].
extension WorldStatePatterns on WorldState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorldState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorldState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorldState value)  $default,){
final _that = this;
switch (_that) {
case _WorldState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorldState value)?  $default,){
final _that = this;
switch (_that) {
case _WorldState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  int dateTimeDelta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorldState() when $default != null:
return $default(_that.dateTime,_that.lastDateTime,_that.dateTimeDelta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  int dateTimeDelta)  $default,) {final _that = this;
switch (_that) {
case _WorldState():
return $default(_that.dateTime,_that.lastDateTime,_that.dateTimeDelta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WorldDateTimeModel dateTime,  WorldDateTimeModel lastDateTime,  int dateTimeDelta)?  $default,) {final _that = this;
switch (_that) {
case _WorldState() when $default != null:
return $default(_that.dateTime,_that.lastDateTime,_that.dateTimeDelta);case _:
  return null;

}
}

}

/// @nodoc


class _WorldState extends WorldState {
  const _WorldState({this.dateTime = WorldDateTimeModel.zero, this.lastDateTime = WorldDateTimeModel.zero, this.dateTimeDelta = 0}): super._();
  

@override@JsonKey() final  WorldDateTimeModel dateTime;
@override@JsonKey() final  WorldDateTimeModel lastDateTime;
@override@JsonKey() final  int dateTimeDelta;

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorldStateCopyWith<_WorldState> get copyWith => __$WorldStateCopyWithImpl<_WorldState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorldState&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime)&&(identical(other.lastDateTime, lastDateTime) || other.lastDateTime == lastDateTime)&&(identical(other.dateTimeDelta, dateTimeDelta) || other.dateTimeDelta == dateTimeDelta));
}


@override
int get hashCode => Object.hash(runtimeType,dateTime,lastDateTime,dateTimeDelta);

@override
String toString() {
  return 'WorldState(dateTime: $dateTime, lastDateTime: $lastDateTime, dateTimeDelta: $dateTimeDelta)';
}


}

/// @nodoc
abstract mixin class _$WorldStateCopyWith<$Res> implements $WorldStateCopyWith<$Res> {
  factory _$WorldStateCopyWith(_WorldState value, $Res Function(_WorldState) _then) = __$WorldStateCopyWithImpl;
@override @useResult
$Res call({
 WorldDateTimeModel dateTime, WorldDateTimeModel lastDateTime, int dateTimeDelta
});


@override $WorldDateTimeModelCopyWith<$Res> get dateTime;@override $WorldDateTimeModelCopyWith<$Res> get lastDateTime;

}
/// @nodoc
class __$WorldStateCopyWithImpl<$Res>
    implements _$WorldStateCopyWith<$Res> {
  __$WorldStateCopyWithImpl(this._self, this._then);

  final _WorldState _self;
  final $Res Function(_WorldState) _then;

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateTime = null,Object? lastDateTime = null,Object? dateTimeDelta = null,}) {
  return _then(_WorldState(
dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,lastDateTime: null == lastDateTime ? _self.lastDateTime : lastDateTime // ignore: cast_nullable_to_non_nullable
as WorldDateTimeModel,dateTimeDelta: null == dateTimeDelta ? _self.dateTimeDelta : dateTimeDelta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get dateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.dateTime, (value) {
    return _then(_self.copyWith(dateTime: value));
  });
}/// Create a copy of WorldState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorldDateTimeModelCopyWith<$Res> get lastDateTime {
  
  return $WorldDateTimeModelCopyWith<$Res>(_self.lastDateTime, (value) {
    return _then(_self.copyWith(lastDateTime: value));
  });
}
}

// dart format on
