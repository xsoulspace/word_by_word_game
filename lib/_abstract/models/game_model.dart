part of abstract;

typedef GameModelId = String;

@immutable
@Freezed()
class GameModel with _$GameModel {
  const factory GameModel({
    required final GameModelId id,
    required final DateTime createdAt,
    required final List<GameLevelModel> levels,
    @Default(0) final int currentLevelIndex,
  }) = _GameModel;
  static final empty = GameModel(
    createdAt: DateTime.now(),
    id: '',
    levels: const [],
  );
}
