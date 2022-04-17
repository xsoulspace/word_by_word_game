part of pack_settings;

SettingsScreenState useSettingsScreenState() => use(
      LifeHook(
        debugLabel: 'SettingsScreenState',
        state: SettingsScreenState(),
      ),
    );

class SettingsScreenState implements LifeState {
  SettingsScreenState();

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
