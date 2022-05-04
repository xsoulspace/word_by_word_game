part of pack_game;

class WrittenWordsNotifier extends GameNotifier {
  WrittenWordsNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
  }) : super(runtimeGameNotifier: runtimeGameNotifier);

  @override
  void dispose() {
    lastWord.dispose();
    super.dispose();
  }

  final writtenWords = <GameWordModel, PlayerProfileModelId>{};
  final lastWord = ValueNotifier<GameWordModel>('');
  final highscoreNotifier = ValueNotifier<String>('');

  WordWriterStateModel get wordWriterState => game.wordWriterState;
  Future<void> setWordWriterState(
    final WordWriterStateModel wordWriterState,
  ) async {
    await silentlyUpdateGame(
      game: _copyGame(
        wordWriterState: wordWriterState,
      ),
    );
  }

  void loadWords() {
    writtenWords.assignAll(wordWriterState.writtenWords);
    lastWord.value = wordWriterState.lastWord;

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

    await silentlyUpdateGame(
      game: game.copyWith.wordWriterState(
        lastWord: word,
        writtenWords: {...writtenWords},
      ),
    );
  }

  bool checkWord({
    required final GameWordModel word,
  }) =>
      writtenWords[word] != null;
}
