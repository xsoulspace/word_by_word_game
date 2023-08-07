part of 'models.dart';

const kScoreFactor = 10;

@immutable
@freezed
class ScoreModel with _$ScoreModel {
  const factory ScoreModel({
    required final double value,
  }) = _ScoreModel;

  const ScoreModel._();

  factory ScoreModel.fromJson(final Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);
  static const zero = ScoreModel(value: 0);

  ScoreModel operator *(final num factor) => ScoreModel(value: value * factor);

  ScoreModel operator +(final num factor) => ScoreModel(value: value + factor);

  bool operator >=(final num factor) => value >= factor;
}
