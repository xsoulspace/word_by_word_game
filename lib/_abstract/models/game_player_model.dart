part of abstract;

@immutable
class GamePlayerModel {
  const GamePlayerModel({
    required this.id,
    required this.books,
  });
  final PlayerProfileModelId id;
  final List<BookModel> books;
}
