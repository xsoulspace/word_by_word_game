part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class ScoreModel with _$ScoreModel {
  const factory ScoreModel({
    required final double value,
  }) = _ScoreModel;

  const ScoreModel._();

  factory ScoreModel.fromJson(final Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);
}
