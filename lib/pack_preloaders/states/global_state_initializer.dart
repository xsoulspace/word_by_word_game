part of pack_preloaders;

class GlobalStateInitializer implements StateInitializer {
  GlobalStateInitializer({
    required final this.settings,
  });
  final SettingsController settings;

  @override
  Future<void> onLoad({required final BuildContext context}) {
    // TODO: implement onLoad
    throw UnimplementedError();
  }
}
