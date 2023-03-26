part of abstract;

@immutable
@freezed
class GamePlayerModel with _$GamePlayerModel {
  @JsonSerializable(explicitToJson: true)
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
