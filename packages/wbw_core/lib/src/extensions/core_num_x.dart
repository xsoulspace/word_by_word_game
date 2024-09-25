import '../data_models/data_models.dart';

extension CoreNumX on num {
  int get formattedScore => this ~/ kScoreFactor;
}
