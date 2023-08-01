import '../../wbw_core.dart';

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
    required this.weather,
    required this.hotAirBalloon,
  });
  static final v1 = MechanicsCollection._(
    wordComposition: WordCompositionMechanics(),
    worldTime: WorldTimeMechanics(),
    fuel: FuelMechanics(),
    score: ScoreMechanics(),
    dictionary: DictionaryMechanics(),
    tutorial: TutorialMechanics(),
    weather: WeatherMechanics(),
    hotAirBalloon: HotAirBalloonMechanics(),
  );
  final WeatherMechanics weather;
  final HotAirBalloonMechanics hotAirBalloon;
  final DictionaryMechanics dictionary;
  final ScoreMechanics score;
  final FuelMechanics fuel;
  final WordCompositionMechanics wordComposition;
  final WorldTimeMechanics worldTime;
  final TutorialMechanics tutorial;
}
