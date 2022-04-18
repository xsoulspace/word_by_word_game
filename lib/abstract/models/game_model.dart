part of abstract;

typedef GameModelId = int;

@immutable
class GameModel {
  const GameModel({
    required this.id,
    required this.createdAt,
    required this.levels,
    this.currentLevelIndex = 0,
  });
  final GameModelId id;
  final DateTime createdAt;
  final List<GameLevelModel> levels;
  final int currentLevelIndex;
}
