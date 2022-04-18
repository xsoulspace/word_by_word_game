part of abstract;

typedef PlayerProfileModelId = int;

@immutable
class PlayerProfileModel {
  const PlayerProfileModel({
    required this.id,
    required this.color,
    required this.name,
    required this.bookHighscore,
  });
  final PlayerProfileModelId id;
  final Color color;
  final String name;

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list
  final List<BookModel> bookHighscore;
}
