part of abstract;

@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class BookShelfModel with _$BookShelfModel {
  const factory BookShelfModel({
    required final double width,
    required final double height,
    required final List<BookShelfSlotModel> slots,
  }) = _BookShelfModel;
  const BookShelfModel._();
  factory BookShelfModel.fromJson(final Map<String, dynamic> json) =>
      _$BookShelfModelFromJson(json);

  factory BookShelfModel.empty({
    required final double width,
    required final double height,
  }) =>
      BookShelfModel(
        height: height,
        width: width,
        slots: [],
      );
  @useResult
  List<BookModel> getAllBooks() => slots.fold<List<BookModel>>(
        [],
        (final slotBooks, final slot) => [...slotBooks, ...slot.books],
      );
}
