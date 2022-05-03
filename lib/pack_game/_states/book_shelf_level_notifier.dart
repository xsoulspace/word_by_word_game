part of pack_game;

class BookShelfLevelNotifier extends LevelNotifier {
  BookShelfLevelNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
  }) : super(runtimeGameNotifier: runtimeGameNotifier);

  int get currentLevelIndex => game.currentBookShelfLevelIndex;
  late BookShelfLevelModel _bookShelfLevelModel = getCurrentLevel();

  List<BookShelfModel> get shelves => _bookShelfLevelModel.shelves;

  @override
  Future<void> addPlayer({required final PlayerProfileModel profile}) async {
    super.addPlayer(profile: profile);
  }

  Future<void> nextLevel() async {
    final updatedGame = _copyGame(
      currentBookShelfLevelIndex: currentLevelIndex + 1,
    );

    await updateGame(game: updatedGame);
    _bookShelfLevelModel = getCurrentLevel();
    notify();
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

  void updateCurrentLevelParams() {
    players.assignAll(_bookShelfLevelModel.players);
    notify();
  }

  Future<int> addWordToBook({
    required final GamePlayerModel player,
    required final String word,
    required final BookModel book,
  }) async {
    final lettersCount = word.length;
    int applyingCount = 0;
    final lettersLeft = book.lettersCount - lettersCount;
    if (lettersLeft <= 0) {
      applyingCount = book.lettersCount;
    } else {
      applyingCount = lettersCount;
    }
    final updatedBook = book.copyWith(
      playersInvestments: book.updatePlayerInvestments(
        gamePlayer: player,
        letterCount: applyingCount,
      ),
    );
    // TODO(arenukvern): update level
    return lettersLeft;
  }

  void updateBook({
    required final BookModel book,
  }) {}
}
