part of pack_game;

class BookShelfLevelNotifier extends LevelNotifier {
  BookShelfLevelNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
    required final WrittenWordsNotifier writtenWordsNotifier,
  }) : super(
          runtimeGameNotifier: runtimeGameNotifier,
          writtenWordsNotifier: writtenWordsNotifier,
        );

  @override
  Future<void> onLoad({required final BuildContext context}) {
    _updateCurrentLevelParams();
    return super.onLoad(context: context);
  }

  void _updateCurrentLevelParams() {
    players.assignAll(_bookShelfLevelModel.players);
    writtenWordsNotifier.loadWords();
    notify();
  }

  int get currentLevelIndex => game.currentBookShelfLevelIndex;
  late BookShelfLevelModel _bookShelfLevelModel = getCurrentLevel();

  List<BookShelfModel> get shelves => _bookShelfLevelModel.shelves;

  @override
  Future<void> addPlayer({required final PlayerProfileModel player}) async {
    super.addPlayer(player: player);
  }

  Future<void> nextLevel() async {
    final updatedGame = _copyGame(
      currentBookShelfLevelIndex: currentLevelIndex + 1,
    );

    await updateGame(game: updatedGame);
    _bookShelfLevelModel = getCurrentLevel();
    _updateCurrentLevelParams();
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

  Future<int> addWordLettersToBook({
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

    final updatedLevel = BookUpdater(
      book: book,
      level: _bookShelfLevelModel,
    ).updateBook(book: updatedBook);

    await updateCurrentLevel(level: updatedLevel);

    return lettersLeft;
  }

  void updateBook({
    required final BookModel book,
  }) {}
}
