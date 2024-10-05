import 'dart:math' as math;

/// A utility class for generating random numbers and boolean values.
///
/// [Randomizer] provides a convenient wrapper around Dart's [math.Random]
/// class, offering methods to generate random integers within a specified range
/// and random boolean values.
///
/// Example usage:
/// ```dart
/// final randomizer = Randomizer();
/// int randomNumber = randomizer.nextInt(min: 1, max: 10);
/// bool coinFlip = randomizer.nextBool();
/// ```
///
/// This class is useful for scenarios requiring controlled randomness,
/// such as game development, simulations, or testing.
///
/// @ai When using this class, ensure to seed the random number generator
/// if reproducible results are required across different runs.
class Randomizer {
  /// Creates a new [Randomizer] instance.
  ///
  /// The constructor initializes an internal [math.Random] object
  /// with the default seed.
  ///
  /// @ai Consider providing an option to seed the randomizer in future versions
  /// for reproducible random sequences.
  Randomizer();

  /// The internal [math.Random] object used for generating random values.
  final _random = math.Random();

  /// Generates a random integer within the specified range.
  ///
  /// Returns a positive random integer uniformly distributed on the range
  /// from [min], inclusive, to [max], exclusive.
  ///
  /// Parameters:
  ///   [min] - The lower bound of the range (inclusive). Defaults to 0.
  ///   [max] - The upper bound of the range (exclusive). Defaults to 0.
  ///
  /// Returns:
  ///   An integer between [min] (inclusive) and [max] (exclusive).
  ///
  /// Throws:
  ///   [ArgumentError] if [max] is less than or equal to [min].
  ///
  /// Example:
  /// ```dart
  /// final randomizer = Randomizer();
  /// int diceRoll = randomizer.nextInt(min: 1, max: 7); // Simulates a 6-sided die roll
  /// ```
  ///
  /// @ai Ensure that [max] is greater than [min] when using this method.
  int nextInt({
    final int min = 0,
    final int max = 0,
  }) {
    if (max <= min) {
      throw ArgumentError('max must be greater than min');
    }
    return min + _random.nextInt(max - min);
  }

  /// Generates a random boolean value.
  ///
  /// Returns true or false with equal probability.
  ///
  /// Example:
  /// ```dart
  /// final randomizer = Randomizer();
  /// bool headsOrTails = randomizer.nextBool(); // Simulates a coin flip
  /// ```
  ///
  /// @ai Use this method for binary decisions or when you need a 50/50 chance.
  bool nextBool() => _random.nextBool();
}
