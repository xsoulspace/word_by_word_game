part of abstract;

typedef GameModelId = String;
typedef LevelPlayers = List<GamePlayerModel>;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class GameModel with _$GameModel {
  @JsonSerializable(explicitToJson: true)
  const factory GameModel({
    required final GameModelId id,
    required final DateTime createdAt,
    required final List<BookShelfLevelModel> bookShelfLevels,
    required final PlayerProfileModelId hostPlayerId,
    required final WordWriterStateModel wordWriterState,
    final PlayerProfileModelId? currentPlayerId,
    @Default(0) final int currentBookShelfLevelIndex,
  }) = _GameModel;
  const GameModel._();
  factory GameModel.fromJson(final Map<String, dynamic> json) =>
      _$GameModelFromJson(json);

  factory GameModel.create({
    required final PlayerProfileModelId hostPlayerId,
    required final List<BookShelfLevelModel> bookShelfLevels,
  }) =>
      GameModel(
        wordWriterState: WordWriterStateModel.empty(),
        hostPlayerId: hostPlayerId,
        bookShelfLevels: bookShelfLevels,
        createdAt: DateTime.now(),
        id: IdCreator.create(),
        currentBookShelfLevelIndex: 0,
      );

  static final empty = GameModel(
    wordWriterState: WordWriterStateModel.empty(),
    createdAt: DateTime.now(),
    hostPlayerId: '0',
    id: '0',
    bookShelfLevels: const [],
  );

  bool get isEmpty => id == '0';
}
