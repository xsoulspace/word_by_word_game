// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_mechanics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LiftForceModel {
  double get liftPower => throw _privateConstructorUsedError;
  BalloonLiftPowersModel get updatedPowers =>
      throw _privateConstructorUsedError;

  /// Create a copy of LiftForceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiftForceModelCopyWith<LiftForceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiftForceModelCopyWith<$Res> {
  factory $LiftForceModelCopyWith(
          LiftForceModel value, $Res Function(LiftForceModel) then) =
      _$LiftForceModelCopyWithImpl<$Res, LiftForceModel>;
  @useResult
  $Res call({double liftPower, BalloonLiftPowersModel updatedPowers});

  $BalloonLiftPowersModelCopyWith<$Res> get updatedPowers;
}

/// @nodoc
class _$LiftForceModelCopyWithImpl<$Res, $Val extends LiftForceModel>
    implements $LiftForceModelCopyWith<$Res> {
  _$LiftForceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiftForceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liftPower = null,
    Object? updatedPowers = null,
  }) {
    return _then(_value.copyWith(
      liftPower: null == liftPower
          ? _value.liftPower
          : liftPower // ignore: cast_nullable_to_non_nullable
              as double,
      updatedPowers: null == updatedPowers
          ? _value.updatedPowers
          : updatedPowers // ignore: cast_nullable_to_non_nullable
              as BalloonLiftPowersModel,
    ) as $Val);
  }

  /// Create a copy of LiftForceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BalloonLiftPowersModelCopyWith<$Res> get updatedPowers {
    return $BalloonLiftPowersModelCopyWith<$Res>(_value.updatedPowers, (value) {
      return _then(_value.copyWith(updatedPowers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LiftForceModelImplCopyWith<$Res>
    implements $LiftForceModelCopyWith<$Res> {
  factory _$$LiftForceModelImplCopyWith(_$LiftForceModelImpl value,
          $Res Function(_$LiftForceModelImpl) then) =
      __$$LiftForceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double liftPower, BalloonLiftPowersModel updatedPowers});

  @override
  $BalloonLiftPowersModelCopyWith<$Res> get updatedPowers;
}

/// @nodoc
class __$$LiftForceModelImplCopyWithImpl<$Res>
    extends _$LiftForceModelCopyWithImpl<$Res, _$LiftForceModelImpl>
    implements _$$LiftForceModelImplCopyWith<$Res> {
  __$$LiftForceModelImplCopyWithImpl(
      _$LiftForceModelImpl _value, $Res Function(_$LiftForceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LiftForceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liftPower = null,
    Object? updatedPowers = null,
  }) {
    return _then(_$LiftForceModelImpl(
      liftPower: null == liftPower
          ? _value.liftPower
          : liftPower // ignore: cast_nullable_to_non_nullable
              as double,
      updatedPowers: null == updatedPowers
          ? _value.updatedPowers
          : updatedPowers // ignore: cast_nullable_to_non_nullable
              as BalloonLiftPowersModel,
    ));
  }
}

/// @nodoc

class _$LiftForceModelImpl implements _LiftForceModel {
  const _$LiftForceModelImpl(
      {required this.liftPower, required this.updatedPowers});

  @override
  final double liftPower;
  @override
  final BalloonLiftPowersModel updatedPowers;

  @override
  String toString() {
    return 'LiftForceModel(liftPower: $liftPower, updatedPowers: $updatedPowers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiftForceModelImpl &&
            (identical(other.liftPower, liftPower) ||
                other.liftPower == liftPower) &&
            (identical(other.updatedPowers, updatedPowers) ||
                other.updatedPowers == updatedPowers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, liftPower, updatedPowers);

  /// Create a copy of LiftForceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiftForceModelImplCopyWith<_$LiftForceModelImpl> get copyWith =>
      __$$LiftForceModelImplCopyWithImpl<_$LiftForceModelImpl>(
          this, _$identity);
}

abstract class _LiftForceModel implements LiftForceModel {
  const factory _LiftForceModel(
          {required final double liftPower,
          required final BalloonLiftPowersModel updatedPowers}) =
      _$LiftForceModelImpl;

  @override
  double get liftPower;
  @override
  BalloonLiftPowersModel get updatedPowers;

  /// Create a copy of LiftForceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiftForceModelImplCopyWith<_$LiftForceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BalloonLiftPowersModel _$BalloonLiftPowersModelFromJson(
    Map<String, dynamic> json) {
  return _BalloonLiftPowersModel.fromJson(json);
}

/// @nodoc
mixin _$BalloonLiftPowersModel {
  double get power => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this BalloonLiftPowersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BalloonLiftPowersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BalloonLiftPowersModelCopyWith<BalloonLiftPowersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalloonLiftPowersModelCopyWith<$Res> {
  factory $BalloonLiftPowersModelCopyWith(BalloonLiftPowersModel value,
          $Res Function(BalloonLiftPowersModel) then) =
      _$BalloonLiftPowersModelCopyWithImpl<$Res, BalloonLiftPowersModel>;
  @useResult
  $Res call({double power, double volume});
}

/// @nodoc
class _$BalloonLiftPowersModelCopyWithImpl<$Res,
        $Val extends BalloonLiftPowersModel>
    implements $BalloonLiftPowersModelCopyWith<$Res> {
  _$BalloonLiftPowersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BalloonLiftPowersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? power = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalloonLiftPowersModelImplCopyWith<$Res>
    implements $BalloonLiftPowersModelCopyWith<$Res> {
  factory _$$BalloonLiftPowersModelImplCopyWith(
          _$BalloonLiftPowersModelImpl value,
          $Res Function(_$BalloonLiftPowersModelImpl) then) =
      __$$BalloonLiftPowersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double power, double volume});
}

/// @nodoc
class __$$BalloonLiftPowersModelImplCopyWithImpl<$Res>
    extends _$BalloonLiftPowersModelCopyWithImpl<$Res,
        _$BalloonLiftPowersModelImpl>
    implements _$$BalloonLiftPowersModelImplCopyWith<$Res> {
  __$$BalloonLiftPowersModelImplCopyWithImpl(
      _$BalloonLiftPowersModelImpl _value,
      $Res Function(_$BalloonLiftPowersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BalloonLiftPowersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? power = null,
    Object? volume = null,
  }) {
    return _then(_$BalloonLiftPowersModelImpl(
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BalloonLiftPowersModelImpl implements _BalloonLiftPowersModel {
  const _$BalloonLiftPowersModelImpl({required this.power, this.volume = 0});

  factory _$BalloonLiftPowersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalloonLiftPowersModelImplFromJson(json);

  @override
  final double power;
  @override
  @JsonKey()
  final double volume;

  @override
  String toString() {
    return 'BalloonLiftPowersModel(power: $power, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalloonLiftPowersModelImpl &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, power, volume);

  /// Create a copy of BalloonLiftPowersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BalloonLiftPowersModelImplCopyWith<_$BalloonLiftPowersModelImpl>
      get copyWith => __$$BalloonLiftPowersModelImplCopyWithImpl<
          _$BalloonLiftPowersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalloonLiftPowersModelImplToJson(
      this,
    );
  }
}

abstract class _BalloonLiftPowersModel implements BalloonLiftPowersModel {
  const factory _BalloonLiftPowersModel(
      {required final double power,
      final double volume}) = _$BalloonLiftPowersModelImpl;

  factory _BalloonLiftPowersModel.fromJson(Map<String, dynamic> json) =
      _$BalloonLiftPowersModelImpl.fromJson;

  @override
  double get power;
  @override
  double get volume;

  /// Create a copy of BalloonLiftPowersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BalloonLiftPowersModelImplCopyWith<_$BalloonLiftPowersModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BalloonLiftParamsModel _$BalloonLiftParamsModelFromJson(
    Map<String, dynamic> json) {
  return _BalloonLiftParamsModel.fromJson(json);
}

/// @nodoc
mixin _$BalloonLiftParamsModel {
  double get maxVolume => throw _privateConstructorUsedError;
  double get maxPower => throw _privateConstructorUsedError;
  double get powerUsage => throw _privateConstructorUsedError;

  /// Serializes this BalloonLiftParamsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BalloonLiftParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BalloonLiftParamsModelCopyWith<BalloonLiftParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalloonLiftParamsModelCopyWith<$Res> {
  factory $BalloonLiftParamsModelCopyWith(BalloonLiftParamsModel value,
          $Res Function(BalloonLiftParamsModel) then) =
      _$BalloonLiftParamsModelCopyWithImpl<$Res, BalloonLiftParamsModel>;
  @useResult
  $Res call({double maxVolume, double maxPower, double powerUsage});
}

/// @nodoc
class _$BalloonLiftParamsModelCopyWithImpl<$Res,
        $Val extends BalloonLiftParamsModel>
    implements $BalloonLiftParamsModelCopyWith<$Res> {
  _$BalloonLiftParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BalloonLiftParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxVolume = null,
    Object? maxPower = null,
    Object? powerUsage = null,
  }) {
    return _then(_value.copyWith(
      maxVolume: null == maxVolume
          ? _value.maxVolume
          : maxVolume // ignore: cast_nullable_to_non_nullable
              as double,
      maxPower: null == maxPower
          ? _value.maxPower
          : maxPower // ignore: cast_nullable_to_non_nullable
              as double,
      powerUsage: null == powerUsage
          ? _value.powerUsage
          : powerUsage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalloonLiftParamsModelImplCopyWith<$Res>
    implements $BalloonLiftParamsModelCopyWith<$Res> {
  factory _$$BalloonLiftParamsModelImplCopyWith(
          _$BalloonLiftParamsModelImpl value,
          $Res Function(_$BalloonLiftParamsModelImpl) then) =
      __$$BalloonLiftParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double maxVolume, double maxPower, double powerUsage});
}

/// @nodoc
class __$$BalloonLiftParamsModelImplCopyWithImpl<$Res>
    extends _$BalloonLiftParamsModelCopyWithImpl<$Res,
        _$BalloonLiftParamsModelImpl>
    implements _$$BalloonLiftParamsModelImplCopyWith<$Res> {
  __$$BalloonLiftParamsModelImplCopyWithImpl(
      _$BalloonLiftParamsModelImpl _value,
      $Res Function(_$BalloonLiftParamsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BalloonLiftParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxVolume = null,
    Object? maxPower = null,
    Object? powerUsage = null,
  }) {
    return _then(_$BalloonLiftParamsModelImpl(
      maxVolume: null == maxVolume
          ? _value.maxVolume
          : maxVolume // ignore: cast_nullable_to_non_nullable
              as double,
      maxPower: null == maxPower
          ? _value.maxPower
          : maxPower // ignore: cast_nullable_to_non_nullable
              as double,
      powerUsage: null == powerUsage
          ? _value.powerUsage
          : powerUsage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BalloonLiftParamsModelImpl implements _BalloonLiftParamsModel {
  const _$BalloonLiftParamsModelImpl(
      {required this.maxVolume,
      required this.maxPower,
      required this.powerUsage});

  factory _$BalloonLiftParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalloonLiftParamsModelImplFromJson(json);

  @override
  final double maxVolume;
  @override
  final double maxPower;
  @override
  final double powerUsage;

  @override
  String toString() {
    return 'BalloonLiftParamsModel(maxVolume: $maxVolume, maxPower: $maxPower, powerUsage: $powerUsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalloonLiftParamsModelImpl &&
            (identical(other.maxVolume, maxVolume) ||
                other.maxVolume == maxVolume) &&
            (identical(other.maxPower, maxPower) ||
                other.maxPower == maxPower) &&
            (identical(other.powerUsage, powerUsage) ||
                other.powerUsage == powerUsage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maxVolume, maxPower, powerUsage);

  /// Create a copy of BalloonLiftParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BalloonLiftParamsModelImplCopyWith<_$BalloonLiftParamsModelImpl>
      get copyWith => __$$BalloonLiftParamsModelImplCopyWithImpl<
          _$BalloonLiftParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalloonLiftParamsModelImplToJson(
      this,
    );
  }
}

abstract class _BalloonLiftParamsModel implements BalloonLiftParamsModel {
  const factory _BalloonLiftParamsModel(
      {required final double maxVolume,
      required final double maxPower,
      required final double powerUsage}) = _$BalloonLiftParamsModelImpl;

  factory _BalloonLiftParamsModel.fromJson(Map<String, dynamic> json) =
      _$BalloonLiftParamsModelImpl.fromJson;

  @override
  double get maxVolume;
  @override
  double get maxPower;
  @override
  double get powerUsage;

  /// Create a copy of BalloonLiftParamsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BalloonLiftParamsModelImplCopyWith<_$BalloonLiftParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForcesConstantsModel {
  double get gravityForce => throw _privateConstructorUsedError;
  double get volumeDecreaseRatio => throw _privateConstructorUsedError;
  double get volumeIncreaseRatio => throw _privateConstructorUsedError;
  double get volumeIncreaseRatioMax => throw _privateConstructorUsedError;
  double get volumeToLiftRatio => throw _privateConstructorUsedError;

  /// Create a copy of ForcesConstantsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForcesConstantsModelCopyWith<ForcesConstantsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForcesConstantsModelCopyWith<$Res> {
  factory $ForcesConstantsModelCopyWith(ForcesConstantsModel value,
          $Res Function(ForcesConstantsModel) then) =
      _$ForcesConstantsModelCopyWithImpl<$Res, ForcesConstantsModel>;
  @useResult
  $Res call(
      {double gravityForce,
      double volumeDecreaseRatio,
      double volumeIncreaseRatio,
      double volumeIncreaseRatioMax,
      double volumeToLiftRatio});
}

/// @nodoc
class _$ForcesConstantsModelCopyWithImpl<$Res,
        $Val extends ForcesConstantsModel>
    implements $ForcesConstantsModelCopyWith<$Res> {
  _$ForcesConstantsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForcesConstantsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gravityForce = null,
    Object? volumeDecreaseRatio = null,
    Object? volumeIncreaseRatio = null,
    Object? volumeIncreaseRatioMax = null,
    Object? volumeToLiftRatio = null,
  }) {
    return _then(_value.copyWith(
      gravityForce: null == gravityForce
          ? _value.gravityForce
          : gravityForce // ignore: cast_nullable_to_non_nullable
              as double,
      volumeDecreaseRatio: null == volumeDecreaseRatio
          ? _value.volumeDecreaseRatio
          : volumeDecreaseRatio // ignore: cast_nullable_to_non_nullable
              as double,
      volumeIncreaseRatio: null == volumeIncreaseRatio
          ? _value.volumeIncreaseRatio
          : volumeIncreaseRatio // ignore: cast_nullable_to_non_nullable
              as double,
      volumeIncreaseRatioMax: null == volumeIncreaseRatioMax
          ? _value.volumeIncreaseRatioMax
          : volumeIncreaseRatioMax // ignore: cast_nullable_to_non_nullable
              as double,
      volumeToLiftRatio: null == volumeToLiftRatio
          ? _value.volumeToLiftRatio
          : volumeToLiftRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForcesConstantsModelImplCopyWith<$Res>
    implements $ForcesConstantsModelCopyWith<$Res> {
  factory _$$ForcesConstantsModelImplCopyWith(_$ForcesConstantsModelImpl value,
          $Res Function(_$ForcesConstantsModelImpl) then) =
      __$$ForcesConstantsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double gravityForce,
      double volumeDecreaseRatio,
      double volumeIncreaseRatio,
      double volumeIncreaseRatioMax,
      double volumeToLiftRatio});
}

/// @nodoc
class __$$ForcesConstantsModelImplCopyWithImpl<$Res>
    extends _$ForcesConstantsModelCopyWithImpl<$Res, _$ForcesConstantsModelImpl>
    implements _$$ForcesConstantsModelImplCopyWith<$Res> {
  __$$ForcesConstantsModelImplCopyWithImpl(_$ForcesConstantsModelImpl _value,
      $Res Function(_$ForcesConstantsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForcesConstantsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gravityForce = null,
    Object? volumeDecreaseRatio = null,
    Object? volumeIncreaseRatio = null,
    Object? volumeIncreaseRatioMax = null,
    Object? volumeToLiftRatio = null,
  }) {
    return _then(_$ForcesConstantsModelImpl(
      gravityForce: null == gravityForce
          ? _value.gravityForce
          : gravityForce // ignore: cast_nullable_to_non_nullable
              as double,
      volumeDecreaseRatio: null == volumeDecreaseRatio
          ? _value.volumeDecreaseRatio
          : volumeDecreaseRatio // ignore: cast_nullable_to_non_nullable
              as double,
      volumeIncreaseRatio: null == volumeIncreaseRatio
          ? _value.volumeIncreaseRatio
          : volumeIncreaseRatio // ignore: cast_nullable_to_non_nullable
              as double,
      volumeIncreaseRatioMax: null == volumeIncreaseRatioMax
          ? _value.volumeIncreaseRatioMax
          : volumeIncreaseRatioMax // ignore: cast_nullable_to_non_nullable
              as double,
      volumeToLiftRatio: null == volumeToLiftRatio
          ? _value.volumeToLiftRatio
          : volumeToLiftRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ForcesConstantsModelImpl implements _ForcesConstantsModel {
  const _$ForcesConstantsModelImpl(
      {required this.gravityForce,
      required this.volumeDecreaseRatio,
      required this.volumeIncreaseRatio,
      required this.volumeIncreaseRatioMax,
      required this.volumeToLiftRatio});

  @override
  final double gravityForce;
  @override
  final double volumeDecreaseRatio;
  @override
  final double volumeIncreaseRatio;
  @override
  final double volumeIncreaseRatioMax;
  @override
  final double volumeToLiftRatio;

  @override
  String toString() {
    return 'ForcesConstantsModel(gravityForce: $gravityForce, volumeDecreaseRatio: $volumeDecreaseRatio, volumeIncreaseRatio: $volumeIncreaseRatio, volumeIncreaseRatioMax: $volumeIncreaseRatioMax, volumeToLiftRatio: $volumeToLiftRatio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForcesConstantsModelImpl &&
            (identical(other.gravityForce, gravityForce) ||
                other.gravityForce == gravityForce) &&
            (identical(other.volumeDecreaseRatio, volumeDecreaseRatio) ||
                other.volumeDecreaseRatio == volumeDecreaseRatio) &&
            (identical(other.volumeIncreaseRatio, volumeIncreaseRatio) ||
                other.volumeIncreaseRatio == volumeIncreaseRatio) &&
            (identical(other.volumeIncreaseRatioMax, volumeIncreaseRatioMax) ||
                other.volumeIncreaseRatioMax == volumeIncreaseRatioMax) &&
            (identical(other.volumeToLiftRatio, volumeToLiftRatio) ||
                other.volumeToLiftRatio == volumeToLiftRatio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      gravityForce,
      volumeDecreaseRatio,
      volumeIncreaseRatio,
      volumeIncreaseRatioMax,
      volumeToLiftRatio);

  /// Create a copy of ForcesConstantsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForcesConstantsModelImplCopyWith<_$ForcesConstantsModelImpl>
      get copyWith =>
          __$$ForcesConstantsModelImplCopyWithImpl<_$ForcesConstantsModelImpl>(
              this, _$identity);
}

abstract class _ForcesConstantsModel implements ForcesConstantsModel {
  const factory _ForcesConstantsModel(
      {required final double gravityForce,
      required final double volumeDecreaseRatio,
      required final double volumeIncreaseRatio,
      required final double volumeIncreaseRatioMax,
      required final double volumeToLiftRatio}) = _$ForcesConstantsModelImpl;

  @override
  double get gravityForce;
  @override
  double get volumeDecreaseRatio;
  @override
  double get volumeIncreaseRatio;
  @override
  double get volumeIncreaseRatioMax;
  @override
  double get volumeToLiftRatio;

  /// Create a copy of ForcesConstantsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForcesConstantsModelImplCopyWith<_$ForcesConstantsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
