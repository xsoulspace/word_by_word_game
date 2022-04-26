part of pack_game;

class BookShelfLevelNotifier extends LevelNotifier {
  BookShelfLevelNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
  }) : super(runtimeGameNotifier: runtimeGameNotifier);

  late BookShelfLevelModel bookShelfLevelModel = getCurrentLevel();

  int get currentLevelIndex => game.currentBookShelfLevelIndex;

  @override
  Future<void> addPlayer({required final PlayerProfileModel profile}) async {
    super.addPlayer(profile: profile);
  }

  Future<void> nextLevel() async {
    final updatedGame = _copyGame(
      currentBookShelfLevelIndex: currentLevelIndex + 1,
    );

    await updateGame(game: updatedGame);
  }

  Future<void> updateCurrentLevel({
    required final BookShelfLevelModel level,
  }) async {
    final updatedLeveles = [...game.bookShelfLevels]
      ..removeAt(currentLevelIndex)
      ..insert(currentLevelIndex, level);
    final updatedGame = _copyGame(bookShelfLevels: updatedLeveles);
    await updateGame(game: updatedGame);
  }

  @useResult
  BookShelfLevelModel getCurrentLevel() {
    return game.bookShelfLevels[currentLevelIndex];
  }
}
