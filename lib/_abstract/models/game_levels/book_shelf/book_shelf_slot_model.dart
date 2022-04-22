part of abstract;

@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
  makeCollectionsUnmodifiable: false,
)
class BookShelfSlotModel with _$BookShelfSlotModel {
  const factory BookShelfSlotModel({
    required final List<BookModel> books,
  }) = _BookShelfSlotModel;
  const BookShelfSlotModel._();
  factory BookShelfSlotModel.fromJson(final Map<String, dynamic> json) =>
      _$BookShelfSlotModelFromJson(json);
  factory BookShelfSlotModel.empty() => const BookShelfSlotModel(books: []);

  double get maxHeight => books.fold(
        0,
        (final combinedHeight, final book) => combinedHeight + book.height,
      );
}
