part of abstract;

typedef BookShelfModelId = String;

@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class BookShelfModel with _$BookShelfModel {
  @JsonSerializable(explicitToJson: true)
  const factory BookShelfModel({
    required final BookShelfModelId id,
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
        id: '',
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
