part of pack_game;

GameBookShelfScreenState useGameBookShelfScreenState() => use(
      LifeHook(
        debugLabel: 'GameBookShelfScreenState',
        state: GameBookShelfScreenState(),
      ),
    );

class GameBookShelfScreenState implements LifeState {
  GameBookShelfScreenState();

  @override
  VoidCallback? setState;

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
