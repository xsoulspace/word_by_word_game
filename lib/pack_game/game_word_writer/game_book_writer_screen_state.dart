part of pack_game;

GameBookWriterScreenState useGameBookWriterScreenState() => use(
      LifeHook(
        debugLabel: 'GameBookWriterScreenState',
        state: GameBookWriterScreenState(),
      ),
    );

class GameBookWriterScreenState implements LifeState {
  GameBookWriterScreenState();

  @override
  ValueChanged<VoidCallback>? setState;
  final firstPartController = TextEditingController();
  final secondPartController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    firstPartController.dispose();
    secondPartController.dispose();
  }

  String get fullWord =>
      '${firstPartController.text}${secondPartController.text}';
  int get lettersCounter => fullWord.length;

  void onChooseBooks() {}
}
