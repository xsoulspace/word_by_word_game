part of abstract;

@immutable
class GameLevelModel {
  const GameLevelModel({
    required this.id,
    required this.unselectedBooks,
    required this.players,
  });
  final String id;

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  final List<BookModel> unselectedBooks;
  final Map<PlayerProfileModelId, GamePlayerModel> players;
}
