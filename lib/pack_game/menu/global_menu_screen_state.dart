part of pack_game;

GlobalMenuScreenState useGlobalMenuScreenState() => use(
      LifeHook(
        debugLabel: 'GlobalMenuScreenState',
        state: GlobalMenuScreenState(),
      ),
    );

class GlobalMenuScreenState extends LifeState {
  GlobalMenuScreenState();

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
