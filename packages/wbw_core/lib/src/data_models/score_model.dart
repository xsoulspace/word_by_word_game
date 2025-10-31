// part of 'data_models.dart';
part of 'data_models.dart';

const kScoreFactor = 10;

@immutable
@freezed
abstract class ScoreModel with _$ScoreModel {
  /// to create use [ScoreMechanics.getScoreFromWord]
  const factory ScoreModel({required final double value}) = _ScoreModel;

  const ScoreModel._();

  factory ScoreModel.fromJson(final Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);
  static const zero = ScoreModel(value: 0);

  ScoreModel operator *(final num factor) => ScoreModel(value: value * factor);

  ScoreModel operator +(final num factor) => ScoreModel(value: value + factor);

  bool operator >=(final num factor) => value >= factor;

  bool operator <=(final num factor) => value <= factor;

  bool get isZero => value == 0;
}
