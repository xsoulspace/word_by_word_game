part of pack_game;

GameBookShelfScreenState useGameBookShelfScreenState() => use(
      LifeHook(
        debugLabel: 'GameBookShelfScreenState',
        state: GameBookShelfScreenState(),
      ),
    );

class GameBookShelfScreenState extends LifeState {
  GameBookShelfScreenState();

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
