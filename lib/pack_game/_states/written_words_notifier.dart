part of pack_game;

class WrittenWordsNotifier extends GameNotifier {
  WrittenWordsNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
  }) : super(runtimeGameNotifier: runtimeGameNotifier);

  final writtenWords = <GameWordModel, PlayerProfileModelId>{};
  final lastWord = ValueNotifier<GameWordModel>('');

  void loadWords({
    final BookShelfLevelModel? bookShelfLevel,
  }) {
    if (bookShelfLevel != null) {
      writtenWords.addAll(bookShelfLevel.writtenWords);
      lastWord.value = game.lastWrittenWord;
    }
    notify();
  }

  void clear() {
    writtenWords.clear();
    lastWord.value = '';
    notify();
  }

  Future<void> addWord({
    required final GamePlayerModel player,
    required final GameWordModel word,
  }) async {
    writtenWords[word] = player.id;
    lastWord.value = word;
    notify();

    await updateGame(
      game: _copyGame(
        lastWrittenWord: word,
      ),
    );
  }

  bool checkWord({
    required final GameWordModel word,
  }) =>
      writtenWords[word] != null;

  @override
  void dispose() {
    lastWord.dispose();
    super.dispose();
  }
}
