// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wbw_game.dart';

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
      _$FlyingObjectsParamsCopyWithImpl<$Res>;
  $Res call(
      {FuelStorageModel fuel,
      double fuelNormalPower,
      double requiredLiftForce});

  $FuelStorageModelCopyWith<$Res> get fuel;
}

/// @nodoc
class _$FlyingObjectsParamsCopyWithImpl<$Res>
    implements $FlyingObjectsParamsCopyWith<$Res> {
  _$FlyingObjectsParamsCopyWithImpl(this._value, this._then);

  final FlyingObjectsParams _value;
  // ignore: unused_field
  final $Res Function(FlyingObjectsParams) _then;

  @override
  $Res call({
    Object? fuel = freezed,
    Object? fuelNormalPower = freezed,
    Object? requiredLiftForce = freezed,
  }) {
    return _then(_value.copyWith(
      fuel: fuel == freezed
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
      fuelNormalPower: fuelNormalPower == freezed
          ? _value.fuelNormalPower
          : fuelNormalPower // ignore: cast_nullable_to_non_nullable
              as double,
      requiredLiftForce: requiredLiftForce == freezed
          ? _value.requiredLiftForce
          : requiredLiftForce // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $FuelStorageModelCopyWith<$Res> get fuel {
    return $FuelStorageModelCopyWith<$Res>(_value.fuel, (value) {
      return _then(_value.copyWith(fuel: value));
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
  $Res call(
      {FuelStorageModel fuel,
      double fuelNormalPower,
      double requiredLiftForce});

  @override
  $FuelStorageModelCopyWith<$Res> get fuel;
}

/// @nodoc
class __$$_FlyingObjectsParamsCopyWithImpl<$Res>
    extends _$FlyingObjectsParamsCopyWithImpl<$Res>
    implements _$$_FlyingObjectsParamsCopyWith<$Res> {
  __$$_FlyingObjectsParamsCopyWithImpl(_$_FlyingObjectsParams _value,
      $Res Function(_$_FlyingObjectsParams) _then)
      : super(_value, (v) => _then(v as _$_FlyingObjectsParams));

  @override
  _$_FlyingObjectsParams get _value => super._value as _$_FlyingObjectsParams;

  @override
  $Res call({
    Object? fuel = freezed,
    Object? fuelNormalPower = freezed,
    Object? requiredLiftForce = freezed,
  }) {
    return _then(_$_FlyingObjectsParams(
      fuel: fuel == freezed
          ? _value.fuel
          : fuel // ignore: cast_nullable_to_non_nullable
              as FuelStorageModel,
      fuelNormalPower: fuelNormalPower == freezed
          ? _value.fuelNormalPower
          : fuelNormalPower // ignore: cast_nullable_to_non_nullable
              as double,
      requiredLiftForce: requiredLiftForce == freezed
          ? _value.requiredLiftForce
          : requiredLiftForce // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_FlyingObjectsParams extends _FlyingObjectsParams {
  const _$_FlyingObjectsParams(
      {this.fuel = const FuelStorageModel(value: 150),
      this.fuelNormalPower = 50.5,
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
            const DeepCollectionEquality().equals(other.fuel, fuel) &&
            const DeepCollectionEquality()
                .equals(other.fuelNormalPower, fuelNormalPower) &&
            const DeepCollectionEquality()
                .equals(other.requiredLiftForce, requiredLiftForce));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fuel),
      const DeepCollectionEquality().hash(fuelNormalPower),
      const DeepCollectionEquality().hash(requiredLiftForce));

  @JsonKey(ignore: true)
  @override
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
