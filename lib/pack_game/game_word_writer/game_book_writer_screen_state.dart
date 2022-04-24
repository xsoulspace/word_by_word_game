part of pack_game;

GameWordWriterScreenState useGameWordWriterScreenState() => use(
      LifeHook(
        debugLabel: 'GameWordWriterScreenState',
        state: GameWordWriterScreenState(),
      ),
    );

class GameWordWriterScreenState implements LifeState {
  GameWordWriterScreenState();

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
