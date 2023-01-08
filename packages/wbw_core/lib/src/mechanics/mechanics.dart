import '../tutorial/mechanics/tutorial_mechanics.dart';
import 'dictionary_mechanics.dart';
import 'fuel_mechanics.dart';
import 'score_mechanics.dart';
import 'word_composition_mechanics.dart';
import 'world_time_mechanics.dart';

export './dictionary_mechanics.dart';
export './fuel_mechanics.dart';
export './score_mechanics.dart';
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
    required this.tutorial,
  });
  static final v1 = MechanicsCollection._(
    wordComposition: WordCompositionMechanics(),
    worldTime: WorldTimeMechanics(),
    fuel: FuelMechanics(),
    score: ScoreMechanics(),
    dictionary: DictionaryMechanics(),
    tutorial: TutorialMechanics(),
  );
  final DictionaryMechanics dictionary;
  final ScoreMechanics score;
  final FuelMechanics fuel;
  final WordCompositionMechanics wordComposition;
  final WorldTimeMechanics worldTime;
  final TutorialMechanics tutorial;
}
