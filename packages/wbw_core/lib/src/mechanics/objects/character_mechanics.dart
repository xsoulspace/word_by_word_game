import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../wbw_core.dart';

part 'character_mechanics.freezed.dart';
part 'character_mechanics.g.dart';

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
@Deprecated('')
class FlyingObjectsParams with _$FlyingObjectsParams {
  @Deprecated('')
  const factory FlyingObjectsParams({
    @Default(FuelStorageModel()) final FuelStorageModel fuel,

    /// it can be changed and can be dependent from the character.
    @Default(2.0) final double fuelNormalPower,

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
  @Deprecated('')
  const FlyingObjectsParams._();

  @Deprecated('')
  factory FlyingObjectsParams.fromCharacterModel() => const FlyingObjectsParams(
        fuelNormalPower: 0,
        requiredLiftForce: 0,
      );

  /// immutable
  /// Is the power if the character trying to move above the highest line
  /// (allowed altitude)
  double get fuelHighPower => 0;

  /// immutable
  double get baseGravityForce => 0.05;

  /// can be changed but it is external force, and should not be changed
  /// by the player. nature force
  // double get windForce => .8;
  // double get windForce => -.4;
  double get windForce => .08;

  /// -1 or +1 - can be changed, nature force
  int get windSign => -1;
  double get minXBoundry => 250;
  double get minYBoundry => 100;
}

@Deprecated('')
class ForceResult {
  @Deprecated('')
  ForceResult({
    this.fuel = 0.0,
    this.force = 0.0,
  });
  final double force;
  final double fuel;
}

@Deprecated('')
class BasicFlyingObjectMechanics {
  @Deprecated('')
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

  double get xVelocity => params.windSign * params.windForce;
}

class HotAirBalloonMechanics {
  /// [Height]
  ///
  /// To calculate [height] of the hot air balloon
  /// use tiles count.
  ///
  /// For example hot air baloon is on tile -4, 15
  /// The sea level set to -10
  /// So the [height] is -10 - -4 = -6
  ///
  /// Then fix the sign:
  /// if -6 < 0 then 6
  ///
  /// Example 2
  /// hot air baloon is on tile 8, 15
  /// The sea level set to -10
  /// So the [height] is -10 - 8 = -18
  ///
  /// Then fix the sign:
  /// if -18 < 0 then 18
  ///
  /// To calculate final [height] use topLeftCellPosition
  /// to add its value to the [heigth].
  ///
  /// Height is needed to decrease some volume from
  /// the [currentVolume].
  ///
  /// [powerUsage] is how much energy can be converted to volume.
  /// [volumeIncreaseRatio] is how much volume will be increased
  /// from the [powerUsage].
  LiftForceModel calculateLiftForce({
    required final ForcesConstantsModel constants,
    required final BalloonLiftPowersModel balloonPowers,
    required final BalloonLiftParamsModel balloonParams,
    required final double height,
  }) {
    double powerUsage;
    double powerLeft = balloonPowers.power - balloonParams.powerUsage;
    if (balloonPowers.power == 0) {
      powerLeft = 0;
      powerUsage = 0;
    } else if (powerLeft < 0) {
      powerUsage = balloonParams.powerUsage - powerLeft;
      powerLeft = 0;
    } else if (balloonParams.maxPower < powerLeft) {
      powerUsage = balloonParams.powerUsage;
      powerLeft = balloonParams.maxPower;
    } else {
      powerUsage = balloonParams.powerUsage;
    }
    final increasedVolume = constants.volumeIncreaseRatio * powerUsage;
    final decreasedVolume = constants.volumeDecreaseRatio * height;

    double volume = balloonPowers.volume - decreasedVolume + increasedVolume;
    if (balloonParams.maxVolume < volume) {
      /// The volume & power is wasted.
      /// Updated values should be returned.
      volume = balloonParams.maxVolume;
    } else if (volume < 0) {
      volume = 0;
    }
    final volumeLiftForce = volume * constants.volumeToLiftRatio;
    final liftForce = volumeLiftForce - constants.gravityForce;
    // print({
    //   'powerLeft': powerLeft.toInt(),
    //   'volume': volume.toInt(),
    //   'liftForce': liftForce.toStringAsFixed(2),
    //   'decreasedVolume': decreasedVolume.toStringAsFixed(2),
    //   'increasedVolume': increasedVolume.toStringAsFixed(2),
    //   'height': height.toStringAsFixed(2),
    // });

    return LiftForceModel(
      liftPower: liftForce,
      updatedPowers: balloonPowers.copyWith(
        power: powerLeft,
        volume: volume,
      ),
    );
  }
}

@freezed
class LiftForceModel with _$LiftForceModel {
  const factory LiftForceModel({
    required final double liftPower,
    required final BalloonLiftPowersModel updatedPowers,
  }) = _LiftForceModel;
}

@freezed
class BalloonLiftPowersModel with _$BalloonLiftPowersModel {
  const factory BalloonLiftPowersModel({
    required final double power,
    @Default(0) final double volume,
  }) = _BalloonLiftPowersModel;
  factory BalloonLiftPowersModel.fromJson(final Map<String, dynamic> json) =>
      _$BalloonLiftPowersModelFromJson(json);
  static const initial = BalloonLiftPowersModel(
    power: 2000,
  );
}

@Freezed()
class BalloonLiftParamsModel with _$BalloonLiftParamsModel {
  const factory BalloonLiftParamsModel({
    required final double maxVolume,
    required final double maxPower,
    required final double powerUsage,
  }) = _BalloonLiftParamsModel;
  factory BalloonLiftParamsModel.fromJson(final Map<String, dynamic> json) =>
      _$BalloonLiftParamsModelFromJson(json);
  static const initial = BalloonLiftParamsModel(
    maxVolume: 250,
    maxPower: 10000,
    powerUsage: 0.75,
  );
}

@Freezed()
class ForcesConstantsModel with _$ForcesConstantsModel {
  const factory ForcesConstantsModel({
    required final double gravityForce,
    required final double volumeDecreaseRatio,
    required final double volumeIncreaseRatio,
    required final double volumeToLiftRatio,
  }) = _ForcesConstantsModel;
  static const initial = ForcesConstantsModel(
    gravityForce: 0.12,
    volumeDecreaseRatio: 0.08,
    volumeIncreaseRatio: 80,
    volumeToLiftRatio: 0.001,
  );
}
