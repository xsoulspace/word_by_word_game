part of pack_game;

class WrittenWordsNotifier extends ChangeNotifier {
  final writtenWords = <GameWordModel, PlayerProfileModelId>{};

  void loadWords({
    final BookShelfLevelModel? bookShelfLevel,
  }) {
    if (bookShelfLevel != null) {
      writtenWords.addAll(bookShelfLevel.writtenWords);
    }
  }

  void clear() {
    writtenWords.clear();
  }

  void addWord({
    required final GamePlayerModel player,
    required final GameWordModel word,
  }) {}

  void getLastWord() {}

  void checkWord({
    required final GameWordModel word,
  }) {}
}
