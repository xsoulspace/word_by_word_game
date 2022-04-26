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
  @JsonSerializable(explicitToJson: true)
  const factory BookShelfLevelModel({
    required final String id,

    /// All untaken books should be kept in the list
    ///
    /// In case if [GamePlayerModel] took new book, the book
    /// should be transfered to his list of books
    required final List<BookShelfModel> shelves,
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
  }) = _BookShelfLevelModel;
  const BookShelfLevelModel._();
  factory BookShelfLevelModel.fromJson(final Map<String, dynamic> json) =>
      _$BookShelfLevelModelFromJson(json);
  factory BookShelfLevelModel.create({
    required final Map<PlayerProfileModelId, GamePlayerModel> players,
    required final List<BookShelfModel> shelves,
  }) =>
      BookShelfLevelModel(
        id: IdCreator.create(),
        players: players,
        shelves: shelves,
      );
  static const empty = BookShelfLevelModel(
    id: '0',
    players: {},
    shelves: [],
  );
}
