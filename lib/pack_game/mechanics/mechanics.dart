import 'package:word_by_word_game/pack_game/pack_game.dart';

export './word_composition_mechanics.dart';
export './world_time_mechanics.dart';

class MechanicsCollection {
  MechanicsCollection._({
    required this.wordComposition,
    required this.worldTime,
  });
  static final v1 = MechanicsCollection._(
    wordComposition: WordCompositionMechanics(),
    worldTime: WorldTimeMechanics(),
  );
  final WordCompositionMechanics wordComposition;
  final WorldTimeMechanics worldTime;
}
