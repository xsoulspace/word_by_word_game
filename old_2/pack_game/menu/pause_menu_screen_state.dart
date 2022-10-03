part of pack_game;

PauseMenuScreenState usePauseMenuScreenState() => use(
      LifeHook(
        debugLabel: 'PauseMenuScreenState',
        state: PauseMenuScreenState(),
      ),
    );

class PauseMenuScreenState extends LifeState {
  PauseMenuScreenState();

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
