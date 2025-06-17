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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  WindScale get windScale => throw _privateConstructorUsedError;
  WindDirection get windDirection => throw _privateConstructorUsedError;
  int get durationInGameSeconds => throw _privateConstructorUsedError;

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
    WeatherModel value,
    $Res Function(WeatherModel) then,
  ) = _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call({
    WindScale windScale,
    WindDirection windDirection,
    int durationInGameSeconds,
  });
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windScale = null,
    Object? windDirection = null,
    Object? durationInGameSeconds = null,
  }) {
    return _then(
      _value.copyWith(
            windScale: null == windScale
                ? _value.windScale
                : windScale // ignore: cast_nullable_to_non_nullable
                      as WindScale,
            windDirection: null == windDirection
                ? _value.windDirection
                : windDirection // ignore: cast_nullable_to_non_nullable
                      as WindDirection,
            durationInGameSeconds: null == durationInGameSeconds
                ? _value.durationInGameSeconds
                : durationInGameSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
    _$WeatherModelImpl value,
    $Res Function(_$WeatherModelImpl) then,
  ) = __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    WindScale windScale,
    WindDirection windDirection,
    int durationInGameSeconds,
  });
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
    _$WeatherModelImpl _value,
    $Res Function(_$WeatherModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? windScale = null,
    Object? windDirection = null,
    Object? durationInGameSeconds = null,
  }) {
    return _then(
      _$WeatherModelImpl(
        windScale: null == windScale
            ? _value.windScale
            : windScale // ignore: cast_nullable_to_non_nullable
                  as WindScale,
        windDirection: null == windDirection
            ? _value.windDirection
            : windDirection // ignore: cast_nullable_to_non_nullable
                  as WindDirection,
        durationInGameSeconds: null == durationInGameSeconds
            ? _value.durationInGameSeconds
            : durationInGameSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl extends _WeatherModel {
  const _$WeatherModelImpl({
    this.windScale = WindScale.calm,
    this.windDirection = WindDirection.defaultDirection,
    this.durationInGameSeconds = 20,
  }) : super._();

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  @JsonKey()
  final WindScale windScale;
  @override
  @JsonKey()
  final WindDirection windDirection;
  @override
  @JsonKey()
  final int durationInGameSeconds;

  @override
  String toString() {
    return 'WeatherModel(windScale: $windScale, windDirection: $windDirection, durationInGameSeconds: $durationInGameSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.windScale, windScale) ||
                other.windScale == windScale) &&
            (identical(other.windDirection, windDirection) ||
                other.windDirection == windDirection) &&
            (identical(other.durationInGameSeconds, durationInGameSeconds) ||
                other.durationInGameSeconds == durationInGameSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, windScale, windDirection, durationInGameSeconds);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(this);
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel({
    final WindScale windScale,
    final WindDirection windDirection,
    final int durationInGameSeconds,
  }) = _$WeatherModelImpl;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  WindScale get windScale;
  @override
  WindDirection get windDirection;
  @override
  int get durationInGameSeconds;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WindModel _$WindModelFromJson(Map<String, dynamic> json) {
  return _WindModel.fromJson(json);
}

/// @nodoc
mixin _$WindModel {
  SerializedVector2 get force => throw _privateConstructorUsedError;

  /// Serializes this WindModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? force = null}) {
    return _then(
      _value.copyWith(
            force: null == force
                ? _value.force
                : force // ignore: cast_nullable_to_non_nullable
                      as SerializedVector2,
          )
          as $Val,
    );
  }

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SerializedVector2CopyWith<$Res> get force {
    return $SerializedVector2CopyWith<$Res>(_value.force, (value) {
      return _then(_value.copyWith(force: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WindModelImplCopyWith<$Res>
    implements $WindModelCopyWith<$Res> {
  factory _$$WindModelImplCopyWith(
    _$WindModelImpl value,
    $Res Function(_$WindModelImpl) then,
  ) = __$$WindModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SerializedVector2 force});

  @override
  $SerializedVector2CopyWith<$Res> get force;
}

/// @nodoc
class __$$WindModelImplCopyWithImpl<$Res>
    extends _$WindModelCopyWithImpl<$Res, _$WindModelImpl>
    implements _$$WindModelImplCopyWith<$Res> {
  __$$WindModelImplCopyWithImpl(
    _$WindModelImpl _value,
    $Res Function(_$WindModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? force = null}) {
    return _then(
      _$WindModelImpl(
        force: null == force
            ? _value.force
            : force // ignore: cast_nullable_to_non_nullable
                  as SerializedVector2,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WindModelImpl implements _WindModel {
  const _$WindModelImpl({this.force = SerializedVector2.zero});

  factory _$WindModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindModelImplFromJson(json);

  @override
  @JsonKey()
  final SerializedVector2 force;

  @override
  String toString() {
    return 'WindModel(force: $force)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindModelImpl &&
            (identical(other.force, force) || other.force == force));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, force);

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindModelImplCopyWith<_$WindModelImpl> get copyWith =>
      __$$WindModelImplCopyWithImpl<_$WindModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindModelImplToJson(this);
  }
}

abstract class _WindModel implements WindModel {
  const factory _WindModel({final SerializedVector2 force}) = _$WindModelImpl;

  factory _WindModel.fromJson(Map<String, dynamic> json) =
      _$WindModelImpl.fromJson;

  @override
  SerializedVector2 get force;

  /// Create a copy of WindModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindModelImplCopyWith<_$WindModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
