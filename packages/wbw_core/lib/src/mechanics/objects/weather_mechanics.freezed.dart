// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_mechanics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherModel {

 WindScale get windScale; WindDirection get windDirection; int get durationInGameSeconds;
/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherModelCopyWith<WeatherModel> get copyWith => _$WeatherModelCopyWithImpl<WeatherModel>(this as WeatherModel, _$identity);

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherModel&&(identical(other.windScale, windScale) || other.windScale == windScale)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.durationInGameSeconds, durationInGameSeconds) || other.durationInGameSeconds == durationInGameSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,windScale,windDirection,durationInGameSeconds);

@override
String toString() {
  return 'WeatherModel(windScale: $windScale, windDirection: $windDirection, durationInGameSeconds: $durationInGameSeconds)';
}


}

/// @nodoc
abstract mixin class $WeatherModelCopyWith<$Res>  {
  factory $WeatherModelCopyWith(WeatherModel value, $Res Function(WeatherModel) _then) = _$WeatherModelCopyWithImpl;
@useResult
$Res call({
 WindScale windScale, WindDirection windDirection, int durationInGameSeconds
});




}
/// @nodoc
class _$WeatherModelCopyWithImpl<$Res>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._self, this._then);

  final WeatherModel _self;
  final $Res Function(WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? windScale = null,Object? windDirection = null,Object? durationInGameSeconds = null,}) {
  return _then(_self.copyWith(
windScale: null == windScale ? _self.windScale : windScale // ignore: cast_nullable_to_non_nullable
as WindScale,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as WindDirection,durationInGameSeconds: null == durationInGameSeconds ? _self.durationInGameSeconds : durationInGameSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherModel extends WeatherModel {
  const _WeatherModel({this.windScale = WindScale.calm, this.windDirection = WindDirection.defaultDirection, this.durationInGameSeconds = 20}): super._();
  factory _WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

@override@JsonKey() final  WindScale windScale;
@override@JsonKey() final  WindDirection windDirection;
@override@JsonKey() final  int durationInGameSeconds;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherModelCopyWith<_WeatherModel> get copyWith => __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherModel&&(identical(other.windScale, windScale) || other.windScale == windScale)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.durationInGameSeconds, durationInGameSeconds) || other.durationInGameSeconds == durationInGameSeconds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,windScale,windDirection,durationInGameSeconds);

@override
String toString() {
  return 'WeatherModel(windScale: $windScale, windDirection: $windDirection, durationInGameSeconds: $durationInGameSeconds)';
}


}

/// @nodoc
abstract mixin class _$WeatherModelCopyWith<$Res> implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(_WeatherModel value, $Res Function(_WeatherModel) _then) = __$WeatherModelCopyWithImpl;
@override @useResult
$Res call({
 WindScale windScale, WindDirection windDirection, int durationInGameSeconds
});




}
/// @nodoc
class __$WeatherModelCopyWithImpl<$Res>
    implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(this._self, this._then);

  final _WeatherModel _self;
  final $Res Function(_WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? windScale = null,Object? windDirection = null,Object? durationInGameSeconds = null,}) {
  return _then(_WeatherModel(
windScale: null == windScale ? _self.windScale : windScale // ignore: cast_nullable_to_non_nullable
as WindScale,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as WindDirection,durationInGameSeconds: null == durationInGameSeconds ? _self.durationInGameSeconds : durationInGameSeconds // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WindModel {

 SerializedVector2 get force;
/// Create a copy of WindModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WindModelCopyWith<WindModel> get copyWith => _$WindModelCopyWithImpl<WindModel>(this as WindModel, _$identity);

  /// Serializes this WindModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WindModel&&(identical(other.force, force) || other.force == force));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,force);

@override
String toString() {
  return 'WindModel(force: $force)';
}


}

/// @nodoc
abstract mixin class $WindModelCopyWith<$Res>  {
  factory $WindModelCopyWith(WindModel value, $Res Function(WindModel) _then) = _$WindModelCopyWithImpl;
@useResult
$Res call({
 SerializedVector2 force
});


$SerializedVector2CopyWith<$Res> get force;

}
/// @nodoc
class _$WindModelCopyWithImpl<$Res>
    implements $WindModelCopyWith<$Res> {
  _$WindModelCopyWithImpl(this._self, this._then);

  final WindModel _self;
  final $Res Function(WindModel) _then;

/// Create a copy of WindModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? force = null,}) {
  return _then(_self.copyWith(
force: null == force ? _self.force : force // ignore: cast_nullable_to_non_nullable
as SerializedVector2,
  ));
}
/// Create a copy of WindModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get force {
  
  return $SerializedVector2CopyWith<$Res>(_self.force, (value) {
    return _then(_self.copyWith(force: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _WindModel implements WindModel {
  const _WindModel({this.force = SerializedVector2.zero});
  factory _WindModel.fromJson(Map<String, dynamic> json) => _$WindModelFromJson(json);

@override@JsonKey() final  SerializedVector2 force;

/// Create a copy of WindModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WindModelCopyWith<_WindModel> get copyWith => __$WindModelCopyWithImpl<_WindModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WindModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WindModel&&(identical(other.force, force) || other.force == force));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,force);

@override
String toString() {
  return 'WindModel(force: $force)';
}


}

/// @nodoc
abstract mixin class _$WindModelCopyWith<$Res> implements $WindModelCopyWith<$Res> {
  factory _$WindModelCopyWith(_WindModel value, $Res Function(_WindModel) _then) = __$WindModelCopyWithImpl;
@override @useResult
$Res call({
 SerializedVector2 force
});


@override $SerializedVector2CopyWith<$Res> get force;

}
/// @nodoc
class __$WindModelCopyWithImpl<$Res>
    implements _$WindModelCopyWith<$Res> {
  __$WindModelCopyWithImpl(this._self, this._then);

  final _WindModel _self;
  final $Res Function(_WindModel) _then;

/// Create a copy of WindModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? force = null,}) {
  return _then(_WindModel(
force: null == force ? _self.force : force // ignore: cast_nullable_to_non_nullable
as SerializedVector2,
  ));
}

/// Create a copy of WindModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SerializedVector2CopyWith<$Res> get force {
  
  return $SerializedVector2CopyWith<$Res>(_self.force, (value) {
    return _then(_self.copyWith(force: value));
  });
}
}

// dart format on
