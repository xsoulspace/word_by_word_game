import 'package:map_editor/ui/renderer/editor_renderer.dart';

class ObstacleLevelHelper {
  void onLoad() {}

  int roundToTileDimension(final double n) =>
      _roundToMultiple(n.toInt(), kTileDimension) ~/ kTileDimension;

  /// Rounds [n] to the nearest multiple of [multiple].
  /// https://stackoverflow.com/questions/64548983/round-a-number-to-nearest-100-in-flutter
  /// https://stackoverflow.com/questions/71776534/how-to-round-integer-number-using-precision-in-flutter
  int _roundToMultiple(final int n, final int multiple) {
    final int a = n % multiple;
    if (a > 0) {
      return (n ~/ multiple) * multiple + multiple;
    }
    return n;
  }
}
