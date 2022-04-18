part of abstract;

enum BookKind {
  science,
  prose,
  poem,
}

typedef BookModelId = int;

/// The book is an object that can be taken from the shelf
/// only if [GamePlayerModel] has [GameLetter] equals to
/// [letterCount]
@immutable
class BookModel {
  const BookModel({
    required this.id,
    required this.kind,
    required this.playersInvestments,
    this.score = ScoreModel.zero,
  });
  final BookModelId id;
  final BookKind kind;
  final Map<PlayerProfileModelId, GameLetter> playersInvestments;
  final ScoreModel score;
}
