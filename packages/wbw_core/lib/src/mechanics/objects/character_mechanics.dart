import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_mechanics.freezed.dart';
part 'character_mechanics.g.dart';

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
    required final double volumeIncreaseRatioMax,
    required final double volumeToLiftRatio,
  }) = _ForcesConstantsModel;
  static const initial = ForcesConstantsModel(
    gravityForce: 0.12,
    volumeDecreaseRatio: 0.08,
    volumeIncreaseRatio: 60,
    volumeIncreaseRatioMax: 80,
    volumeToLiftRatio: 0.001,
  );
}
