part of abstract;

typedef GameLetter = int;
typedef GameKnowledge = int;

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
    @Default(0) final int knowledgeCount,
    @Default(0) final int lettersCount,
  }) = _ScoreModel;
  const ScoreModel._();
  factory ScoreModel.fromJson(final Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);

  static const zero = ScoreModel();
}
