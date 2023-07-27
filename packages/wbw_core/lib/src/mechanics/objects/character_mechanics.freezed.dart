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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlyingObjectsParams {
  FuelStorageModel get fuel => throw _privateConstructorUsedError;

  /// it can be changed and can be dependent from the character.
  double get fuelNormalPower => throw _privateConstructorUsedError;

  /// 0.005 with +- sign.
  /// + is go down.
  /// - is go up.
  /// 0 is just use horizontal direction.
  ///
  /// The current logic is to force a player to always
  /// have enough fuel to be on the line.
  ///
  /// But the other idea, is to also somehow give the player
  /// controls for the [requiredLiftForce] i.e. ability to
  /// keep line, go up and go down
  double get requiredLiftForce => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlyingObjectsParamsCopyWith<FlyingObjectsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlyingObjectsParamsCopyWith<$Res> {
  factory $FlyingObjectsParamsCopyWith(
          FlyingObjectsParams value, $Res Function(FlyingObjectsParams) then) =
      _$FlyingObjectsParamsCopyWithImpl<$Res, FlyingObjectsParams>;
  @useResult
  $Res call(
      {FuelStorageModel fuel,
      double fuelNormalPower,
      double requiredLiftForce});

  $FuelStorageModelCopyWith<$Res> get fuel;
}

/// @nodoc
class _$FlyingObjectsParamsCopyWithImpl<$Res, $Val extends FlyingObjectsParams>
    implements $FlyingObjectsParamsCopyWith<$Res> {
  _$FlyingObjectsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fuel = null,
    Object? fuelNormalPower = null,
    Object? requiredLiftForce = null,
  }) {
    return _then(_value.copyWith(
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
      fuelNormalPower: null == fuelNormalPower
          ? _value.fuelNormalPower
          : fuelNormalPower // ignore: cast_nullable_to_non_nullable
              as double,
      requiredLiftForce: null == requiredLiftForce
          ? _value.requiredLiftForce
          : requiredLiftForce // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FuelStorageModelCopyWith<$Res> get fuel {
    return $FuelStorageModelCopyWith<$Res>(_value.fuel, (value) {
      return _then(_value.copyWith(fuel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FlyingObjectsParamsCopyWith<$Res>
    implements $FlyingObjectsParamsCopyWith<$Res> {
  factory _$$_FlyingObjectsParamsCopyWith(_$_FlyingObjectsParams value,
          $Res Function(_$_FlyingObjectsParams) then) =
      __$$_FlyingObjectsParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FuelStorageModel fuel,
      double fuelNormalPower,
      double requiredLiftForce});

  @override
  $FuelStorageModelCopyWith<$Res> get fuel;
}

/// @nodoc
class __$$_FlyingObjectsParamsCopyWithImpl<$Res>
    extends _$FlyingObjectsParamsCopyWithImpl<$Res, _$_FlyingObjectsParams>
    implements _$$_FlyingObjectsParamsCopyWith<$Res> {
  __$$_FlyingObjectsParamsCopyWithImpl(_$_FlyingObjectsParams _value,
      $Res Function(_$_FlyingObjectsParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fuel = null,
    Object? fuelNormalPower = null,
    Object? requiredLiftForce = null,
  }) {
    return _then(_$_FlyingObjectsParams(
      fuel: null == fuel
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
      fuelNormalPower: null == fuelNormalPower
          ? _value.fuelNormalPower
          : fuelNormalPower // ignore: cast_nullable_to_non_nullable
              as double,
      requiredLiftForce: null == requiredLiftForce
          ? _value.requiredLiftForce
          : requiredLiftForce // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_FlyingObjectsParams extends _FlyingObjectsParams {
  const _$_FlyingObjectsParams(
      {this.fuel = const FuelStorageModel(),
      this.fuelNormalPower = 2.0,
      this.requiredLiftForce = 0.5})
      : super._();

  @override
  @JsonKey()
  final FuelStorageModel fuel;

  /// it can be changed and can be dependent from the character.
  @override
  @JsonKey()
  final double fuelNormalPower;

  /// 0.005 with +- sign.
  /// + is go down.
  /// - is go up.
  /// 0 is just use horizontal direction.
  ///
  /// The current logic is to force a player to always
  /// have enough fuel to be on the line.
  ///
  /// But the other idea, is to also somehow give the player
  /// controls for the [requiredLiftForce] i.e. ability to
  /// keep line, go up and go down
  @override
  @JsonKey()
  final double requiredLiftForce;

  @override
  String toString() {
    return 'FlyingObjectsParams(fuel: $fuel, fuelNormalPower: $fuelNormalPower, requiredLiftForce: $requiredLiftForce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlyingObjectsParams &&
            (identical(other.fuel, fuel) || other.fuel == fuel) &&
            (identical(other.fuelNormalPower, fuelNormalPower) ||
                other.fuelNormalPower == fuelNormalPower) &&
            (identical(other.requiredLiftForce, requiredLiftForce) ||
                other.requiredLiftForce == requiredLiftForce));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fuel, fuelNormalPower, requiredLiftForce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlyingObjectsParamsCopyWith<_$_FlyingObjectsParams> get copyWith =>
      __$$_FlyingObjectsParamsCopyWithImpl<_$_FlyingObjectsParams>(
          this, _$identity);
}

abstract class _FlyingObjectsParams extends FlyingObjectsParams {
  const factory _FlyingObjectsParams(
      {final FuelStorageModel fuel,
      final double fuelNormalPower,
      final double requiredLiftForce}) = _$_FlyingObjectsParams;
  const _FlyingObjectsParams._() : super._();

  @override
  FuelStorageModel get fuel;
  @override

  /// it can be changed and can be dependent from the character.
  double get fuelNormalPower;
  @override

  /// 0.005 with +- sign.
  /// + is go down.
  /// - is go up.
  /// 0 is just use horizontal direction.
  ///
  /// The current logic is to force a player to always
  /// have enough fuel to be on the line.
  ///
  /// But the other idea, is to also somehow give the player
  /// controls for the [requiredLiftForce] i.e. ability to
  /// keep line, go up and go down
  double get requiredLiftForce;
  @override
  @JsonKey(ignore: true)
  _$$_FlyingObjectsParamsCopyWith<_$_FlyingObjectsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LiftForceModel {
  double get liftPower => throw _privateConstructorUsedError;
  BalloonLiftPowersModel get updatedPowers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $BalloonLiftPowersModelCopyWith<$Res> get updatedPowers {
    return $BalloonLiftPowersModelCopyWith<$Res>(_value.updatedPowers, (value) {
      return _then(_value.copyWith(updatedPowers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LiftForceModelCopyWith<$Res>
    implements $LiftForceModelCopyWith<$Res> {
  factory _$$_LiftForceModelCopyWith(
          _$_LiftForceModel value, $Res Function(_$_LiftForceModel) then) =
      __$$_LiftForceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double liftPower, BalloonLiftPowersModel updatedPowers});

  @override
  $BalloonLiftPowersModelCopyWith<$Res> get updatedPowers;
}

/// @nodoc
class __$$_LiftForceModelCopyWithImpl<$Res>
    extends _$LiftForceModelCopyWithImpl<$Res, _$_LiftForceModel>
    implements _$$_LiftForceModelCopyWith<$Res> {
  __$$_LiftForceModelCopyWithImpl(
      _$_LiftForceModel _value, $Res Function(_$_LiftForceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? liftPower = null,
    Object? updatedPowers = null,
  }) {
    return _then(_$_LiftForceModel(
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

class _$_LiftForceModel implements _LiftForceModel {
  const _$_LiftForceModel(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiftForceModel &&
            (identical(other.liftPower, liftPower) ||
                other.liftPower == liftPower) &&
            (identical(other.updatedPowers, updatedPowers) ||
                other.updatedPowers == updatedPowers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, liftPower, updatedPowers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiftForceModelCopyWith<_$_LiftForceModel> get copyWith =>
      __$$_LiftForceModelCopyWithImpl<_$_LiftForceModel>(this, _$identity);
}

abstract class _LiftForceModel implements LiftForceModel {
  const factory _LiftForceModel(
      {required final double liftPower,
      required final BalloonLiftPowersModel updatedPowers}) = _$_LiftForceModel;

  @override
  double get liftPower;
  @override
  BalloonLiftPowersModel get updatedPowers;
  @override
  @JsonKey(ignore: true)
  _$$_LiftForceModelCopyWith<_$_LiftForceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BalloonLiftPowersModel {
  double get volume => throw _privateConstructorUsedError;
  double get power => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalloonLiftPowersModelCopyWith<BalloonLiftPowersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalloonLiftPowersModelCopyWith<$Res> {
  factory $BalloonLiftPowersModelCopyWith(BalloonLiftPowersModel value,
          $Res Function(BalloonLiftPowersModel) then) =
      _$BalloonLiftPowersModelCopyWithImpl<$Res, BalloonLiftPowersModel>;
  @useResult
  $Res call({double volume, double power});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? power = null,
  }) {
    return _then(_value.copyWith(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BalloonLiftPowersModelCopyWith<$Res>
    implements $BalloonLiftPowersModelCopyWith<$Res> {
  factory _$$_BalloonLiftPowersModelCopyWith(_$_BalloonLiftPowersModel value,
          $Res Function(_$_BalloonLiftPowersModel) then) =
      __$$_BalloonLiftPowersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double volume, double power});
}

/// @nodoc
class __$$_BalloonLiftPowersModelCopyWithImpl<$Res>
    extends _$BalloonLiftPowersModelCopyWithImpl<$Res,
        _$_BalloonLiftPowersModel>
    implements _$$_BalloonLiftPowersModelCopyWith<$Res> {
  __$$_BalloonLiftPowersModelCopyWithImpl(_$_BalloonLiftPowersModel _value,
      $Res Function(_$_BalloonLiftPowersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
    Object? power = null,
  }) {
    return _then(_$_BalloonLiftPowersModel(
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_BalloonLiftPowersModel implements _BalloonLiftPowersModel {
  const _$_BalloonLiftPowersModel({this.volume = 0.0, this.power = 0.0});

  @override
  @JsonKey()
  final double volume;
  @override
  @JsonKey()
  final double power;

  @override
  String toString() {
    return 'BalloonLiftPowersModel(volume: $volume, power: $power)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalloonLiftPowersModel &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.power, power) || other.power == power));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volume, power);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalloonLiftPowersModelCopyWith<_$_BalloonLiftPowersModel> get copyWith =>
      __$$_BalloonLiftPowersModelCopyWithImpl<_$_BalloonLiftPowersModel>(
          this, _$identity);
}

abstract class _BalloonLiftPowersModel implements BalloonLiftPowersModel {
  const factory _BalloonLiftPowersModel(
      {final double volume, final double power}) = _$_BalloonLiftPowersModel;

  @override
  double get volume;
  @override
  double get power;
  @override
  @JsonKey(ignore: true)
  _$$_BalloonLiftPowersModelCopyWith<_$_BalloonLiftPowersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BalloonLiftParamsModel {
  double get maxVolume => throw _privateConstructorUsedError;
  double get maxPower => throw _privateConstructorUsedError;
  double get powerUsage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_BalloonLiftParamsModelCopyWith<$Res>
    implements $BalloonLiftParamsModelCopyWith<$Res> {
  factory _$$_BalloonLiftParamsModelCopyWith(_$_BalloonLiftParamsModel value,
          $Res Function(_$_BalloonLiftParamsModel) then) =
      __$$_BalloonLiftParamsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double maxVolume, double maxPower, double powerUsage});
}

/// @nodoc
class __$$_BalloonLiftParamsModelCopyWithImpl<$Res>
    extends _$BalloonLiftParamsModelCopyWithImpl<$Res,
        _$_BalloonLiftParamsModel>
    implements _$$_BalloonLiftParamsModelCopyWith<$Res> {
  __$$_BalloonLiftParamsModelCopyWithImpl(_$_BalloonLiftParamsModel _value,
      $Res Function(_$_BalloonLiftParamsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxVolume = null,
    Object? maxPower = null,
    Object? powerUsage = null,
  }) {
    return _then(_$_BalloonLiftParamsModel(
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

class _$_BalloonLiftParamsModel implements _BalloonLiftParamsModel {
  const _$_BalloonLiftParamsModel(
      {this.maxVolume = 0.0, this.maxPower = 0.0, this.powerUsage = 0.0});

  @override
  @JsonKey()
  final double maxVolume;
  @override
  @JsonKey()
  final double maxPower;
  @override
  @JsonKey()
  final double powerUsage;

  @override
  String toString() {
    return 'BalloonLiftParamsModel(maxVolume: $maxVolume, maxPower: $maxPower, powerUsage: $powerUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalloonLiftParamsModel &&
            (identical(other.maxVolume, maxVolume) ||
                other.maxVolume == maxVolume) &&
            (identical(other.maxPower, maxPower) ||
                other.maxPower == maxPower) &&
            (identical(other.powerUsage, powerUsage) ||
                other.powerUsage == powerUsage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxVolume, maxPower, powerUsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalloonLiftParamsModelCopyWith<_$_BalloonLiftParamsModel> get copyWith =>
      __$$_BalloonLiftParamsModelCopyWithImpl<_$_BalloonLiftParamsModel>(
          this, _$identity);
}

abstract class _BalloonLiftParamsModel implements BalloonLiftParamsModel {
  const factory _BalloonLiftParamsModel(
      {final double maxVolume,
      final double maxPower,
      final double powerUsage}) = _$_BalloonLiftParamsModel;

  @override
  double get maxVolume;
  @override
  double get maxPower;
  @override
  double get powerUsage;
  @override
  @JsonKey(ignore: true)
  _$$_BalloonLiftParamsModelCopyWith<_$_BalloonLiftParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForcesConstantsModel {
  double get gravityForce => throw _privateConstructorUsedError;
  double get volumeDecreaseRatio => throw _privateConstructorUsedError;
  double get volumeIncreaseRatio => throw _privateConstructorUsedError;
  double get volumeToLiftRatio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gravityForce = null,
    Object? volumeDecreaseRatio = null,
    Object? volumeIncreaseRatio = null,
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
      volumeToLiftRatio: null == volumeToLiftRatio
          ? _value.volumeToLiftRatio
          : volumeToLiftRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForcesConstantsModelCopyWith<$Res>
    implements $ForcesConstantsModelCopyWith<$Res> {
  factory _$$_ForcesConstantsModelCopyWith(_$_ForcesConstantsModel value,
          $Res Function(_$_ForcesConstantsModel) then) =
      __$$_ForcesConstantsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double gravityForce,
      double volumeDecreaseRatio,
      double volumeIncreaseRatio,
      double volumeToLiftRatio});
}

/// @nodoc
class __$$_ForcesConstantsModelCopyWithImpl<$Res>
    extends _$ForcesConstantsModelCopyWithImpl<$Res, _$_ForcesConstantsModel>
    implements _$$_ForcesConstantsModelCopyWith<$Res> {
  __$$_ForcesConstantsModelCopyWithImpl(_$_ForcesConstantsModel _value,
      $Res Function(_$_ForcesConstantsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gravityForce = null,
    Object? volumeDecreaseRatio = null,
    Object? volumeIncreaseRatio = null,
    Object? volumeToLiftRatio = null,
  }) {
    return _then(_$_ForcesConstantsModel(
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
      volumeToLiftRatio: null == volumeToLiftRatio
          ? _value.volumeToLiftRatio
          : volumeToLiftRatio // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ForcesConstantsModel implements _ForcesConstantsModel {
  const _$_ForcesConstantsModel(
      {this.gravityForce = 0.0,
      this.volumeDecreaseRatio = 0.0,
      this.volumeIncreaseRatio = 0.0,
      this.volumeToLiftRatio = 0.0});

  @override
  @JsonKey()
  final double gravityForce;
  @override
  @JsonKey()
  final double volumeDecreaseRatio;
  @override
  @JsonKey()
  final double volumeIncreaseRatio;
  @override
  @JsonKey()
  final double volumeToLiftRatio;

  @override
  String toString() {
    return 'ForcesConstantsModel(gravityForce: $gravityForce, volumeDecreaseRatio: $volumeDecreaseRatio, volumeIncreaseRatio: $volumeIncreaseRatio, volumeToLiftRatio: $volumeToLiftRatio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForcesConstantsModel &&
            (identical(other.gravityForce, gravityForce) ||
                other.gravityForce == gravityForce) &&
            (identical(other.volumeDecreaseRatio, volumeDecreaseRatio) ||
                other.volumeDecreaseRatio == volumeDecreaseRatio) &&
            (identical(other.volumeIncreaseRatio, volumeIncreaseRatio) ||
                other.volumeIncreaseRatio == volumeIncreaseRatio) &&
            (identical(other.volumeToLiftRatio, volumeToLiftRatio) ||
                other.volumeToLiftRatio == volumeToLiftRatio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gravityForce,
      volumeDecreaseRatio, volumeIncreaseRatio, volumeToLiftRatio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForcesConstantsModelCopyWith<_$_ForcesConstantsModel> get copyWith =>
      __$$_ForcesConstantsModelCopyWithImpl<_$_ForcesConstantsModel>(
          this, _$identity);
}

abstract class _ForcesConstantsModel implements ForcesConstantsModel {
  const factory _ForcesConstantsModel(
      {final double gravityForce,
      final double volumeDecreaseRatio,
      final double volumeIncreaseRatio,
      final double volumeToLiftRatio}) = _$_ForcesConstantsModel;

  @override
  double get gravityForce;
  @override
  double get volumeDecreaseRatio;
  @override
  double get volumeIncreaseRatio;
  @override
  double get volumeToLiftRatio;
  @override
  @JsonKey(ignore: true)
  _$$_ForcesConstantsModelCopyWith<_$_ForcesConstantsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
