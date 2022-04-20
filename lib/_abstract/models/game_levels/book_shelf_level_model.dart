part of abstract;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class BookShelfLevelModel with _$BookShelfLevelModel {
  const factory BookShelfLevelModel({
    required final String id,

    /// All untaken books should be kept in the list
    ///
    /// In case if [GamePlayerModel] took new book, the book
    /// should be transfered to his list of books
    required final List<BookModel> unselectedBooks,
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
  }) = _BookShelfLevelModel;
  const BookShelfLevelModel._();
  factory BookShelfLevelModel.fromJson(final Map<String, dynamic> json) =>
      _$BookShelfLevelModelFromJson(json);
  factory BookShelfLevelModel.create({
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
    required final List<BookModel> unselectedBooks,
  }) =>
      BookShelfLevelModel(
        id: IdCreator.create(),
        players: players,
        unselectedBooks: unselectedBooks,
      );
  static const empty = BookShelfLevelModel(
    id: '0',
    players: {},
    unselectedBooks: [],
  );
}
