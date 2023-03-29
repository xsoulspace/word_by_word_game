part of abstract;

enum BookKind {
  science,
  prose,
  poem,
}

enum BookAxis {
  ///  _____
  /// |_____|
  horizontal,

  ///  _
  /// | |
  ///  _
  vertical,

  ///  _____
  /// |     |
  ///  _____
  frontal,
}

typedef BookModelId = String;

/// The book is an object that can be taken from the shelf
/// only if [GamePlayerModel] has [GameLetterCount] equals to
/// [letterCount]
@immutable
@freezed
class BookModel with _$BookModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory BookModel({
    required final BookModelId id,
    required final BookShelfSlotModelId slotId,
    required final BookKind kind,
    required final Map<PlayerProfileModelId, GameLetterCount>
        playersInvestments,
    required final double height,
    required final BookAxis axis,
    required final int lettersCount,

    /// The width should be in the range between
    /// [BookGenerator.minBookWidth, BookGenerator.maxBookWidth]
    required final double width,
  }) = _BookModel;
  const BookModel._();
  factory BookModel.fromJson(final Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  factory BookModel.prose({
    required final BookShelfSlotModelId slotId,
  }) {
    const bookKind = BookKind.prose;
    final bookAxis = bookKindAxis[bookKind]!;
    return BookModel(
      slotId: slotId,
      width: proseWidth,
      height: bookHeight,
      axis: bookAxis,
      kind: bookKind,
      id: IdCreator.create(),
      playersInvestments: const {},
      lettersCount: 10,
    );
  }

  factory BookModel.poem({
    required final BookShelfSlotModelId slotId,
  }) {
    const bookKind = BookKind.poem;
    final bookAxis = bookKindAxis[bookKind]!;
    return BookModel(
      slotId: slotId,
      width: poemWidth,
      height: bookHeight,
      axis: bookAxis,
      kind: bookKind,
      id: IdCreator.create(),
      playersInvestments: const {},
      lettersCount: 7,
    );
  }

  factory BookModel.science({
    required final BookShelfSlotModelId slotId,
  }) {
    const bookKind = BookKind.science;
    final bookAxis = bookKindAxis[bookKind]!;
    return BookModel(
      slotId: slotId,
      width: scienceWidth,
      height: bookHeight,
      axis: bookAxis,
      kind: bookKind,
      id: IdCreator.create(),
      playersInvestments: const {},
      lettersCount: 14,
    );
  }
  static const poemWidth = 25.0;
  static const proseWidth = 90.0;
  static const scienceWidth = 60.0;
  static const booksWidths = <BookKind, double>{
    BookKind.poem: poemWidth,
    BookKind.prose: proseWidth,
    BookKind.science: scienceWidth,
  };
  static const bookKindAxis = <BookKind, BookAxis>{
    BookKind.poem: BookAxis.vertical,
    BookKind.prose: BookAxis.frontal,
    BookKind.science: BookAxis.horizontal,
  };

  static const bookHeight = 110.0;

  /// 3 is a book count in book column
  static const maxShelfSlotHeight = scienceWidth * 3;

  Map<PlayerProfileModelId, GameLetterCount> updatePlayerInvestments({
    required final GamePlayerModel gamePlayer,
    required final GameLetterCount letterCount,
  }) {
    final playerInvestments =
        (playersInvestments[gamePlayer.id] ?? 0) + letterCount;

    return {
      ...playersInvestments,
      gamePlayer.id: playerInvestments,
    };
  }
}
