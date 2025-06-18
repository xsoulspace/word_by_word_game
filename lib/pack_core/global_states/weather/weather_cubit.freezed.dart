// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
