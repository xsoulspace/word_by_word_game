import '../../wbw_core.dart';

/// 1. turn word into score
/// 2. turn score into fuel
///
/// 1. Refuel with new word.
/// 2. Consume
class FuelMechanics {
  /// will turn [score] into [FuelModel]
  FuelModel getFuelFromScore({
    required final ScoreModel score,
  }) =>
      FuelModel(value: score.value);

  /// Will add [fuel] to the [FuelStorageModel]
  FuelStorageModel refuel({
    required final FuelStorageModel fuelStorage,
    required final FuelModel fuel,
  }) =>
      fuelStorage.copyWith(
        value: fuelStorage.value + fuel.value,
      );
}
