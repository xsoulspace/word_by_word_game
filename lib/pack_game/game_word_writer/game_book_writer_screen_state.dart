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

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
