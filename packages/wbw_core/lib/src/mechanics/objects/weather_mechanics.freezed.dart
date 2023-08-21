// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_mechanics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  WindScale get windScale => throw _privateConstructorUsedError;
  int get durationInGameSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({WindScale windScale, int durationInGameSeconds});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windScale = null,
    Object? durationInGameSeconds = null,
  }) {
    return _then(_value.copyWith(
      windScale: null == windScale
          ? _value.windScale
          : windScale // ignore: cast_nullable_to_non_nullable
              as WindScale,
      durationInGameSeconds: null == durationInGameSeconds
          ? _value.durationInGameSeconds
          : durationInGameSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherModelCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$_WeatherModelCopyWith(
          _$_WeatherModel value, $Res Function(_$_WeatherModel) then) =
      __$$_WeatherModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WindScale windScale, int durationInGameSeconds});
}

/// @nodoc
class __$$_WeatherModelCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$_WeatherModel>
    implements _$$_WeatherModelCopyWith<$Res> {
  __$$_WeatherModelCopyWithImpl(
      _$_WeatherModel _value, $Res Function(_$_WeatherModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windScale = null,
    Object? durationInGameSeconds = null,
  }) {
    return _then(_$_WeatherModel(
      windScale: null == windScale
          ? _value.windScale
          : windScale // ignore: cast_nullable_to_non_nullable
              as WindScale,
      durationInGameSeconds: null == durationInGameSeconds
          ? _value.durationInGameSeconds
          : durationInGameSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherModel extends _WeatherModel {
  const _$_WeatherModel(
      {this.windScale = WindScale.calm, this.durationInGameSeconds = 20})
      : super._();

  factory _$_WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherModelFromJson(json);

  @override
  @JsonKey()
  final WindScale windScale;
  @override
  @JsonKey()
  final int durationInGameSeconds;

  @override
  String toString() {
    return 'WeatherModel(windScale: $windScale, durationInGameSeconds: $durationInGameSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherModel &&
            (identical(other.windScale, windScale) ||
                other.windScale == windScale) &&
            (identical(other.durationInGameSeconds, durationInGameSeconds) ||
                other.durationInGameSeconds == durationInGameSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, windScale, durationInGameSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      __$$_WeatherModelCopyWithImpl<_$_WeatherModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherModelToJson(
      this,
    );
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel(
      {final WindScale windScale,
      final int durationInGameSeconds}) = _$_WeatherModel;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherModel.fromJson;

  @override
  WindScale get windScale;
  @override
  int get durationInGameSeconds;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherModelCopyWith<_$_WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WindModel _$WindModelFromJson(Map<String, dynamic> json) {
  return _WindModel.fromJson(json);
}

/// @nodoc
mixin _$WindModel {
  SerializedVector2 get force => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WindModelCopyWith<WindModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindModelCopyWith<$Res> {
  factory $WindModelCopyWith(WindModel value, $Res Function(WindModel) then) =
      _$WindModelCopyWithImpl<$Res, WindModel>;
  @useResult
  $Res call({SerializedVector2 force});

  $SerializedVector2CopyWith<$Res> get force;
}

/// @nodoc
class _$WindModelCopyWithImpl<$Res, $Val extends WindModel>
    implements $WindModelCopyWith<$Res> {
  _$WindModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? force = null,
  }) {
    return _then(_value.copyWith(
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SerializedVector2CopyWith<$Res> get force {
    return $SerializedVector2CopyWith<$Res>(_value.force, (value) {
      return _then(_value.copyWith(force: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WindModelCopyWith<$Res> implements $WindModelCopyWith<$Res> {
  factory _$$_WindModelCopyWith(
          _$_WindModel value, $Res Function(_$_WindModel) then) =
      __$$_WindModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SerializedVector2 force});

  @override
  $SerializedVector2CopyWith<$Res> get force;
}

/// @nodoc
class __$$_WindModelCopyWithImpl<$Res>
    extends _$WindModelCopyWithImpl<$Res, _$_WindModel>
    implements _$$_WindModelCopyWith<$Res> {
  __$$_WindModelCopyWithImpl(
      _$_WindModel _value, $Res Function(_$_WindModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? force = null,
  }) {
    return _then(_$_WindModel(
      force: null == force
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as SerializedVector2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WindModel implements _WindModel {
  const _$_WindModel({this.force = SerializedVector2.zero});

  factory _$_WindModel.fromJson(Map<String, dynamic> json) =>
      _$$_WindModelFromJson(json);

  @override
  @JsonKey()
  final SerializedVector2 force;

  @override
  String toString() {
    return 'WindModel(force: $force)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WindModel &&
            (identical(other.force, force) || other.force == force));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, force);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WindModelCopyWith<_$_WindModel> get copyWith =>
      __$$_WindModelCopyWithImpl<_$_WindModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WindModelToJson(
      this,
    );
  }
}

abstract class _WindModel implements WindModel {
  const factory _WindModel({final SerializedVector2 force}) = _$_WindModel;

  factory _WindModel.fromJson(Map<String, dynamic> json) =
      _$_WindModel.fromJson;

  @override
  SerializedVector2 get force;
  @override
  @JsonKey(ignore: true)
  _$$_WindModelCopyWith<_$_WindModel> get copyWith =>
      throw _privateConstructorUsedError;
}
