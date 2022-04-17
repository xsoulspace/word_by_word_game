part of pack_game;

StartGameScreenState useStartGameScreenState() => use(
      LifeHook(
        debugLabel: 'StartGameScreenState',
        state: StartGameScreenState(),
      ),
    );

class StartGameScreenState implements LifeState {
  StartGameScreenState();

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
