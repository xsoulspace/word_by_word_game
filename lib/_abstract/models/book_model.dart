part of abstract;

enum BookKind {
  science,
  prose,
  poem,
}

enum BookAxis {
  horizontal,
  vertical,
  frontal,
}

typedef BookModelId = String;

/// The book is an object that can be taken from the shelf
/// only if [GamePlayerModel] has [GameLetter] equals to
/// [letterCount]
@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class BookModel with _$BookModel {
  const factory BookModel({
    required final BookModelId id,
    required final BookKind kind,
    required final Map<PlayerProfileModelId, GameLetter> playersInvestments,
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

  factory BookModel.prose() => BookModel(
        width: proseWidth,
        height: bookHeight,
        axis: BookAxis.frontal,
        kind: BookKind.prose,
        id: IdCreator.create(),
        playersInvestments: const {},
        lettersCount: 10,
      );

  factory BookModel.poem() => BookModel(
        width: poemWidth,
        height: bookHeight,
        axis: BookAxis.vertical,
        kind: BookKind.poem,
        id: IdCreator.create(),
        playersInvestments: const {},
        lettersCount: 7,
      );

  factory BookModel.science() => BookModel(
        width: scienceWidth,
        height: bookHeight,
        axis: BookAxis.horizontal,
        kind: BookKind.science,
        id: IdCreator.create(),
        playersInvestments: const {},
        lettersCount: 14,
      );
  static const poemWidth = 25.0;
  static const proseWidth = 90.0;
  static const scienceWidth = 60.0;
  static const booksWidths = <BookKind, double>{
    BookKind.poem: poemWidth,
    BookKind.prose: proseWidth,
    BookKind.science: scienceWidth,
  };

  static const bookHeight = 110.0;

  /// 3 is a book count in book column
  static const maxShelfSlotHeight = scienceWidth * 3;
}
