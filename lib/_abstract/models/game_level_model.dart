part of abstract;

@immutable
@Freezed()
class GameLevelModel with _$GameLevelModel {
  const factory GameLevelModel({
    required final String id,

    /// All untaken books should be kept in the list
    ///
    /// In case if [GamePlayerModel] took new book, the book
    /// should be transfered to his list of books
    required final List<BookModel> unselectedBooks,
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
  }) = _GameLevelModel;
  const GameLevelModel._();
  static const empty = GameLevelModel(
    id: '',
    players: {},
    unselectedBooks: [],
  );
}
