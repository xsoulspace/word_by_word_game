import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_locale/wbw_locale.dart';

import '../../../wbw_core.dart';

part 'weather_mechanics.freezed.dart';
part 'weather_mechanics.g.dart';

/// ## Winds theory:
/// https://en.wikipedia.org/wiki/Beaufort_scale
///
///
/// ## Weights theory:
///
/// To generate random numbers in Dart with a defined probability
/// for certain numbers to appear more often than others, you can use
/// the following approach:
///
/// Assign weights to each number based on their desired probability.
/// The higher the weight, the more likely the number will be selected.
///
/// For example, if you want the number 5 to appear twice as often as
/// the number 3, you can assign a weight of 2 to 5 and a weight of 1 to 3.
///
/// Create a list that contains the numbers repeated according
/// to their weights. For example, if you have weights of 2 for 5
/// and 1 for 3, your list could be [5, 5, 3].
///
/// Use a random number generator to select a random index
/// from the list. This will give you a random number with
/// the desired probability. You can use the Random class
/// in Dart to generate random numbers.
///
/// Here's an example code snippet that demonstrates this approach:
///
/// ```dart
/// import 'dart:math';
/// void main() {
///   // List with repeated numbers based on their weights
///   List<int> numbers = [5, 5, 3];
///   Random random = Random();
///   // Generate 10 random numbers
///   for (int i = 0; i < 10; i++) {
///     int randomIndex = random.nextInt(numbers.length);
///     int randomNumber = numbers[randomIndex];
///     print(randomNumber);
///   }
/// }
/// ```
/// In this example, the number 5 has a higher probability
/// of being selected than the number 3 due to its weight of 2.
///
/// Running the code will generate 10 random numbers
/// with the desired probability distribution.
enum WindScale {
  calm(xMin: 0, xMax: 0.5, yMin: -0.01, yMax: 0.01, weight: 50),
  lightAir(xMin: 0.5, xMax: 1.5, yMin: -0.03, yMax: 0.05, weight: 100),
  lightBreeze(xMin: 1.6, xMax: 3.3, yMin: -0.08, yMax: 0.1, weight: 150),
  gentleBreeze(xMin: 3.4, xMax: 5.5, yMin: -0.8, yMax: 0.12, weight: 80),
  moderateBreeze(xMin: 5.5, xMax: 7.9, yMin: -0.12, yMax: 0.15, weight: 50),
  freshBreeze(xMin: 8, xMax: 10.7, yMin: -0.12, yMax: 0.17, weight: 10),
  strongBreeze(xMin: 10.8, xMax: 13.8, yMin: -0.15, yMax: 0.2, weight: 5),
  highWind(xMin: 13.9, xMax: 17.1, yMin: -0.18, yMax: 0.3, weight: 1),
  gale(xMin: 17.2, xMax: 20.7, yMin: -0.3, yMax: 0.35, weight: 1),
  severeGale(xMin: 20.8, xMax: 24.4, yMin: -0.5, yMax: 0.5, weight: 1),
  storm(xMin: 24.5, xMax: 28.4, yMin: -1, yMax: 1, weight: 1),
  violentStorm(xMin: 28.5, xMax: 32.6, yMin: -2.5, yMax: 2.5, weight: 1),
  hurricane(xMin: 32.7, xMax: 50, yMin: -5, yMax: 5, weight: 1);

  const WindScale({
    required this.xMin,
    required this.xMax,
    required this.yMin,
    required this.yMax,
    required this.weight,
  });
  final double xMin;
  final int weight;
  final double xMax;
  final double yMin;
  final double yMax;
  static final weightedValues = values
      .expand((final e) => List.generate(e.weight, (final i) => e))
      .toList();
  String getLocalizedName(final BuildContext context) => switch (this) {
        WindScale.calm => S.of(context).windCalm,
        WindScale.lightAir => S.of(context).windLightAir,
        WindScale.lightBreeze => S.of(context).windLightBreeze,
        WindScale.gentleBreeze => S.of(context).windGentleBreeze,
        WindScale.moderateBreeze => S.of(context).windModerateBreeze,
        WindScale.freshBreeze => S.of(context).windFreshBreeze,
        WindScale.strongBreeze => S.of(context).windStrongBreeze,
        WindScale.highWind => S.of(context).windHighWind,
        WindScale.gale => S.of(context).windGale,
        WindScale.severeGale => S.of(context).windSevereGale,
        WindScale.storm => S.of(context).windStorm,
        WindScale.violentStorm => S.of(context).windViolentStorm,
        WindScale.hurricane => S.of(context).windHurricane,
      };
}

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    @Default(WindScale.calm) final WindScale windScale,
    @Default(20) final int durationInGameSeconds,
  }) = _WeatherModel;
  const WeatherModel._();
  factory WeatherModel.fromJson(final Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
  ({WeatherModel weather, bool isCompleted}) decreaseDuration() {
    if (durationInGameSeconds == 0) return (isCompleted: true, weather: this);
    return (
      weather: copyWith(durationInGameSeconds: durationInGameSeconds - 1),
      isCompleted: false,
    );
  }

  static const initial = WeatherModel();
}

/// The wind can blow right, top, bottom.
/// The force vector2 should never blow left
/// as user will never be able to reach the end of level.
@freezed
class WindModel with _$WindModel {
  const factory WindModel({
    @Default(SerializedVector2.zero) final SerializedVector2 force,
  }) = _WindModel;
  factory WindModel.fromJson(final Map<String, dynamic> json) =>
      _$WindModelFromJson(json);
  static const zero = WindModel();
}

/// Idea:
///
/// [WeatherModel] defines the weather
/// of entire level.
///
/// Based on [WeatherModel.windScale] the [WindModel]
/// should be generated for height range.
/// For example:
///
/// from 0 to 10 - force is 0.1, +0
/// from 10 to 15 - force is 0.5, -0.1
/// from 15 to 30 - force is 0.2, +0.2,
///
/// When the [WeatherModel.windScale] is changed, the [WindModel]
/// should be changed as well.
///
///
/// When [WeatherModel.durationInGameSeconds] works
/// the [WindModel] should be changed.
class WeatherMechanics {
  final _random = Randomizer();
  List<WeatherModel> generateWeather({
    final int count = 3,
  }) =>
      List.generate(
        count,
        (final i) {
          final randomIndex = _random.nextInt(
            max: WindScale.weightedValues.length,
          );
          final windScale = WindScale.weightedValues[randomIndex];
          return WeatherModel(
            windScale: windScale,
            durationInGameSeconds: _random.nextInt(max: 40, min: 10),
          );
        },
      );

  WindModel getWindByWeather({
    required final WeatherModel weather,
    required final int heightInTiles,
  }) =>
      getWind(heightInTiles: heightInTiles, scale: weather.windScale);
  WindModel getWind({
    required final WindScale scale,
    required final int heightInTiles,
  }) {
    final yDirection = _random.nextBool() ? -1 : 1;
    final y = _random.nextInt(
          max: (scale.yMax * 1000).toInt(),
          min: (scale.yMin * 1000).toInt(),
        ) /
        1000;
    final x = _random.nextInt(
          max: (scale.xMax * 1000).toInt(),
          min: (scale.xMin * 1000).toInt(),
        ) /
        1000;
    const realityModifier = 10;
    return WindModel(
      force: SerializedVector2(
        x: x / realityModifier,
        y: y * yDirection / realityModifier,
      ),
    );
  }
}
