import 'package:wbw_design_core/wbw_design_core.dart';

import '../../wbw_core.dart';

export './dictionary_mechanics.dart';
export './score_mechanics.dart';
export './word_composition_mechanics.dart';
export './world_time_mechanics.dart';
export 'engine_mechanics.dart';
export 'objects/objects.dart';
export 'technology_mechanics.dart';

class MechanicsCollection {
  MechanicsCollection._({
    required this.engine,
    required this.wordComposition,
    required this.worldTime,
    required this.score,
    required this.dictionary,
    required this.tutorial,
    required this.weather,
    required this.hotAirBalloon,
    required this.technology,
  });
  // ignore: avoid_unused_constructor_parameters
  factory MechanicsCollection.getV1(final BuildContext context) {
    final score = ScoreMechanics();
    return MechanicsCollection._(
      engine: EngineMechanics(),
      wordComposition: WordCompositionMechanics(),
      worldTime: WorldTimeMechanics(),
      score: ScoreMechanics(),
      dictionary: DictionaryMechanics(),
      tutorial: TutorialMechanics(),
      weather: WeatherMechanics(),
      hotAirBalloon: HotAirBalloonMechanics(),
      technology: TechnologyMechanics(scoreMechanics: score),
    );
  }
  final EngineMechanics engine;
  final TechnologyMechanics technology;
  final WeatherMechanics weather;
  final HotAirBalloonMechanics hotAirBalloon;
  final DictionaryMechanics dictionary;
  final ScoreMechanics score;
  final WordCompositionMechanics wordComposition;
  final WorldTimeMechanics worldTime;
  final TutorialMechanics tutorial;
}
