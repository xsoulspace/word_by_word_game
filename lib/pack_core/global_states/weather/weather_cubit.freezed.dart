// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherCubitState implements DiagnosticableTreeMixin {

/// idea that current weather always first.
/// With weather completed, [weathers] first element should be removed
 List<WeatherModel> get weathers; WindModel get wind;
/// Create a copy of WeatherCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCubitStateCopyWith<WeatherCubitState> get copyWith => _$WeatherCubitStateCopyWithImpl<WeatherCubitState>(this as WeatherCubitState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherCubitState'))
    ..add(DiagnosticsProperty('weathers', weathers))..add(DiagnosticsProperty('wind', wind));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherCubitState&&const DeepCollectionEquality().equals(other.weathers, weathers)&&(identical(other.wind, wind) || other.wind == wind));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(weathers),wind);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherCubitState(weathers: $weathers, wind: $wind)';
}


}

/// @nodoc
abstract mixin class $WeatherCubitStateCopyWith<$Res>  {
  factory $WeatherCubitStateCopyWith(WeatherCubitState value, $Res Function(WeatherCubitState) _then) = _$WeatherCubitStateCopyWithImpl;
@useResult
$Res call({
 List<WeatherModel> weathers, WindModel wind
});


$WindModelCopyWith<$Res> get wind;

}
/// @nodoc
class _$WeatherCubitStateCopyWithImpl<$Res>
    implements $WeatherCubitStateCopyWith<$Res> {
  _$WeatherCubitStateCopyWithImpl(this._self, this._then);

  final WeatherCubitState _self;
  final $Res Function(WeatherCubitState) _then;

/// Create a copy of WeatherCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weathers = null,Object? wind = null,}) {
  return _then(_self.copyWith(
weathers: null == weathers ? _self.weathers : weathers // ignore: cast_nullable_to_non_nullable
as List<WeatherModel>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as WindModel,
  ));
}
/// Create a copy of WeatherCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindModelCopyWith<$Res> get wind {
  
  return $WindModelCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherCubitState].
extension WeatherCubitStatePatterns on WeatherCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherCubitState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherCubitState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherCubitState value)  $default,){
final _that = this;
switch (_that) {
case _WeatherCubitState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherCubitState value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherCubitState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WeatherModel> weathers,  WindModel wind)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherCubitState() when $default != null:
return $default(_that.weathers,_that.wind);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WeatherModel> weathers,  WindModel wind)  $default,) {final _that = this;
switch (_that) {
case _WeatherCubitState():
return $default(_that.weathers,_that.wind);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WeatherModel> weathers,  WindModel wind)?  $default,) {final _that = this;
switch (_that) {
case _WeatherCubitState() when $default != null:
return $default(_that.weathers,_that.wind);case _:
  return null;

}
}

}

/// @nodoc


class _WeatherCubitState extends WeatherCubitState with DiagnosticableTreeMixin {
  const _WeatherCubitState({final  List<WeatherModel> weathers = const [], this.wind = WindModel.zero}): _weathers = weathers,super._();
  

/// idea that current weather always first.
/// With weather completed, [weathers] first element should be removed
 final  List<WeatherModel> _weathers;
/// idea that current weather always first.
/// With weather completed, [weathers] first element should be removed
@override@JsonKey() List<WeatherModel> get weathers {
  if (_weathers is EqualUnmodifiableListView) return _weathers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weathers);
}

@override@JsonKey() final  WindModel wind;

/// Create a copy of WeatherCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCubitStateCopyWith<_WeatherCubitState> get copyWith => __$WeatherCubitStateCopyWithImpl<_WeatherCubitState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'WeatherCubitState'))
    ..add(DiagnosticsProperty('weathers', weathers))..add(DiagnosticsProperty('wind', wind));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherCubitState&&const DeepCollectionEquality().equals(other._weathers, _weathers)&&(identical(other.wind, wind) || other.wind == wind));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_weathers),wind);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'WeatherCubitState(weathers: $weathers, wind: $wind)';
}


}

/// @nodoc
abstract mixin class _$WeatherCubitStateCopyWith<$Res> implements $WeatherCubitStateCopyWith<$Res> {
  factory _$WeatherCubitStateCopyWith(_WeatherCubitState value, $Res Function(_WeatherCubitState) _then) = __$WeatherCubitStateCopyWithImpl;
@override @useResult
$Res call({
 List<WeatherModel> weathers, WindModel wind
});


@override $WindModelCopyWith<$Res> get wind;

}
/// @nodoc
class __$WeatherCubitStateCopyWithImpl<$Res>
    implements _$WeatherCubitStateCopyWith<$Res> {
  __$WeatherCubitStateCopyWithImpl(this._self, this._then);

  final _WeatherCubitState _self;
  final $Res Function(_WeatherCubitState) _then;

/// Create a copy of WeatherCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weathers = null,Object? wind = null,}) {
  return _then(_WeatherCubitState(
weathers: null == weathers ? _self._weathers : weathers // ignore: cast_nullable_to_non_nullable
as List<WeatherModel>,wind: null == wind ? _self.wind : wind // ignore: cast_nullable_to_non_nullable
as WindModel,
  ));
}

/// Create a copy of WeatherCubitState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WindModelCopyWith<$Res> get wind {
  
  return $WindModelCopyWith<$Res>(_self.wind, (value) {
    return _then(_self.copyWith(wind: value));
  });
}
}

// dart format on
