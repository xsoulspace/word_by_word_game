part of abstract;

typedef BookShelfSlotModelId = String;

@freezed
class BookShelfSlotModel with _$BookShelfSlotModel {
  @JsonSerializable(explicitToJson: true)
  const factory BookShelfSlotModel({
    required final BookShelfSlotModelId id,
    required final List<BookModel> books,
  }) = _BookShelfSlotModel;
  const BookShelfSlotModel._();
  factory BookShelfSlotModel.fromJson(final Map<String, dynamic> json) =>
      _$BookShelfSlotModelFromJson(json);
  factory BookShelfSlotModel.empty() =>
      BookShelfSlotModel(books: [], id: IdCreator.create());

  double get maxHeight => books.fold(
        0,
        (final combinedHeight, final book) => combinedHeight + book.height,
      );
}
