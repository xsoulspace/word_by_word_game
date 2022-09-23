import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';

part 'character_mechanics.freezed.dart';

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class FlyingObjectsParams with _$FlyingObjectsParams {
  const factory FlyingObjectsParams({
    @Default(FuelStorageModel(value: 150)) final FuelStorageModel fuel,

    /// it can be changed and can be dependent from the character.
    @Default(50.5) final double fuelNormalPower,

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
    @Default(0.5) final double requiredLiftForce,
  }) = _FlyingObjectsParams;
  const FlyingObjectsParams._();

  factory FlyingObjectsParams.fromCharacterModel(
    final PlayerCharacterModel character,
  ) {
    return FlyingObjectsParams(
      fuel: character.fuel,
      fuelNormalPower: character.fuelNormalPower,
      requiredLiftForce: character.requiredLiftForce,
    );
  }

  /// immutable
  /// Is the power if the character trying to move above the highest line
  /// (allowed altitude)
  double get fuelHighPower => 0;

  /// immutable
  double get baseGravityForce => 0.05;

  /// can be changed but it is external force, and should not be changed
  /// by the player. nature force
  double get windForce => .03;

  /// -1 or +1 - can be changed, nature force
  int get windSign => 0;
  double get minXBoundry => 250.0;
  double get minYBoundry => 100.0;
}

class ForceResult {
  ForceResult({
    this.fuel = 0.0,
    this.force = 0.0,
  });
  final double force;
  final double fuel;
}

class BasicFlyingObjectMechanics {
  BasicFlyingObjectMechanics({
    required this.params,
  });
  final FlyingObjectsParams params;
  double getGravityForce(final double y) {
    final force = params.baseGravityForce * (y / 10);
    if (force > 0.2) {
      return 0.2;
    }
    return force;
  }

  ForceResult getLiftForce(final double y) {
    double fuel = params.fuel.value;
    if (fuel < 0) {
      return ForceResult();
    }
    double fuelPower = params.fuelNormalPower;
    if (y < params.minYBoundry) {
      fuelPower = params.fuelHighPower;
    }

    final double requiredLift = getGravityForce(y) + params.requiredLiftForce;
    double fuelConsumption = requiredLift / params.fuelNormalPower;
    if (fuelConsumption < fuel) {
      fuel -= fuelConsumption;
    } else {
      if (fuel == 0) {
        fuelConsumption = 0;
      } else {
        fuelConsumption -= fuel;
      }
      if (fuelConsumption < 0) {
        fuelConsumption = fuel;
      } else {
        fuel -= fuelConsumption;
      }
    }

    final liftForce = fuelConsumption * fuelPower;

    return ForceResult(
      fuel: fuel,
      force: liftForce,
    );
  }

  ForceResult getYVelocity(final double y) {
    final liftForceResult = getLiftForce(y);
    final velocity = liftForceResult.force - getGravityForce(y);

    return ForceResult(
      force: velocity,
      fuel: liftForceResult.fuel,
    );
  }

  double get xVelocity {
    return params.windSign * params.windForce;
  }
}
