part of abstract;

@immutable
@Freezed()
class GamePlayerModel with _$GamePlayerModel {
  const factory GamePlayerModel({
    required final PlayerProfileModelId id,
    required final List<BookModel> books,
  }) = _GamePlayerModel;
}
