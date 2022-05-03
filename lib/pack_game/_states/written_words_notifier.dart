part of pack_game;

class WrittenWordsNotifier extends GameNotifier {
  WrittenWordsNotifier({
    required final RuntimeGameNotifier runtimeGameNotifier,
  }) : super(runtimeGameNotifier: runtimeGameNotifier);

  final writtenWords = <GameWordModel, PlayerProfileModelId>{};
  final lastWord = ValueNotifier<GameWordModel>('');
  WordWriterStateModel get wordWriterState => game.wordWriterState;
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

    await updateGame(
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

  @override
  void dispose() {
    lastWord.dispose();
    super.dispose();
  }
}
