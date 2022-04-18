part of pack_preloaders;

class GlobalStateInitializer implements StateInitializer {
  GlobalStateInitializer({
    required final this.settings,
  });
  final GeneralSettingsController settings;

  @override
  Future<void> onLoad({required final BuildContext context}) async {
    // TODO: implement onLoad
    // throw UnimplementedError();
  }
}
