part of abstract;

typedef GameLetterCount = int;
typedef GameKnowledge = int;

@immutable
@freezed
class ScoreModel with _$ScoreModel {
  @JsonSerializable(explicitToJson: true)
  const factory ScoreModel({
    @Default(0) final int knowledgeCount,
    @Default(0) final int lettersCount,
  }) = _ScoreModel;
  const ScoreModel._();
  factory ScoreModel.fromJson(final Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);

  static const zero = ScoreModel();
}
