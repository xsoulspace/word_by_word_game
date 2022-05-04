part of pack_game;

GlobalMenuScreenState useGlobalMenuScreenState() => use(
      LifeHook(
        debugLabel: 'GlobalMenuScreenState',
        state: GlobalMenuScreenState(),
      ),
    );

class GlobalMenuScreenState implements LifeState {
  GlobalMenuScreenState();

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
