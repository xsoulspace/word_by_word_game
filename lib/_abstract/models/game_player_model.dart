part of abstract;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class GamePlayerModel with _$GamePlayerModel {
  const factory GamePlayerModel({
    required final PlayerProfileModelId id,
    required final List<BookModel> books,
  }) = _GamePlayerModel;
  const GamePlayerModel._();
  factory GamePlayerModel.fromJson(final Map<String, dynamic> json) =>
      _$GamePlayerModelFromJson(json);
  factory GamePlayerModel.fromProfileModel({
    required final PlayerProfileModel profile,
  }) =>
      GamePlayerModel(id: profile.id, books: const []);

  static const empty = GamePlayerModel(books: [], id: '0');
}
