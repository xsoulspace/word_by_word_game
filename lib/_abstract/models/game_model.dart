part of abstract;

typedef GameModelId = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class GameModel with _$GameModel {
  const factory GameModel({
    required final GameModelId id,
    required final DateTime createdAt,
    required final List<BookShelfLevelModel> bookShelfLevels,
    @Default(0) final int currentBookShelfLevelIndex,
  }) = _GameModel;
  const GameModel._();
  factory GameModel.fromJson(final Map<String, dynamic> json) =>
      _$GameModelFromJson(json);

  static final empty = GameModel(
    createdAt: DateTime.now(),
    id: '0',
    bookShelfLevels: const [],
  );
}
