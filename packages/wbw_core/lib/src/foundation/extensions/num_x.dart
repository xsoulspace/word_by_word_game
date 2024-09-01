import '../../../wbw_core.dart';

extension NumX on num {
  int get formattedScore => this ~/ kScoreFactor;
}
