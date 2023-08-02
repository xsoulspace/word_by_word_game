import 'dart:math' as math;

import 'package:flutter/material.dart';

@immutable
class Randomizer {
  Randomizer({
    required this.max,
    this.min = 0,
  });
  final int min;
  final int max;
  final _random = math.Random();

  /// Generates a positive random integer uniformly distributed on the range
  /// from [min], inclusive, to [max], exclusive.
  int next() => min + _random.nextInt(max - min);
}
