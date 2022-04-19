part of abstract;

typedef GameLetter = int;
typedef GameKnowledge = int;

@immutable
@Freezed()
class ScoreModel with _$ScoreModel {
  const factory ScoreModel({
    @Default(0) final int knowledgeCount,
    @Default(0) final int lettersCount,
  }) = _ScoreModel;
  static const zero = ScoreModel();
}
