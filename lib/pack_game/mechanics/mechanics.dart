import 'package:word_by_word_game/pack_game/pack_game.dart';

export './fuel_mechanics.dart';
export './word_composition_mechanics.dart';
export './world_time_mechanics.dart';

class MechanicsCollection {
  MechanicsCollection._({
    required this.wordComposition,
    required this.worldTime,
    required this.fuelMechanics,
  });
  static final v1 = MechanicsCollection._(
    wordComposition: WordCompositionMechanics(),
    worldTime: WorldTimeMechanics(),
    fuelMechanics: FuelMechanics(),
  );
  final FuelMechanics fuelMechanics;
  final WordCompositionMechanics wordComposition;
  final WorldTimeMechanics worldTime;
}
