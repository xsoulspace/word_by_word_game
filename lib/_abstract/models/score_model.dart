part of abstract;

typedef GameLetter = int;
typedef GameKnowledge = int;

@immutable
class ScoreModel {
  const ScoreModel({
    this.knowledgeCount = 0,
    this.lettersCount = 0,
  });
  static const zero = ScoreModel();
  final GameLetter lettersCount;
  final GameKnowledge knowledgeCount;
}
