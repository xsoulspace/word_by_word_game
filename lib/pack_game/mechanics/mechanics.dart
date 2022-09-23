import 'package:word_by_word_game/pack_game/mechanics/score_mechanics.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

export './dictionary_mechanics.dart';
export './fuel_mechanics.dart';
export './word_composition_mechanics.dart';
export './world_time_mechanics.dart';
export 'objects/objects.dart';

class MechanicsCollection {
  MechanicsCollection._({
    required this.wordComposition,
    required this.worldTime,
    required this.fuel,
    required this.score,
    required this.dictionary,
  });
  static final v1 = MechanicsCollection._(
    wordComposition: WordCompositionMechanics(),
    worldTime: WorldTimeMechanics(),
    fuel: FuelMechanics(),
    score: ScoreMechanics(),
    dictionary: DictionaryMechanics(),
  );
  final DictionaryMechanics dictionary;
  final ScoreMechanics score;
  final FuelMechanics fuel;
  final WordCompositionMechanics wordComposition;
  final WorldTimeMechanics worldTime;
}
