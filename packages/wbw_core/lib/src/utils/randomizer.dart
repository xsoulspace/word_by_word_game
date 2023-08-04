import 'dart:math' as math;

class Randomizer {
  Randomizer();
  final _random = math.Random();

  /// Generates a positive random integer uniformly distributed on the range
  /// from [min], inclusive, to [max], exclusive.
  int nextInt({
    final int min = 0,
    final int max = 0,
  }) =>
      min + _random.nextInt(max);
  bool nextBool() => _random.nextBool();
}
