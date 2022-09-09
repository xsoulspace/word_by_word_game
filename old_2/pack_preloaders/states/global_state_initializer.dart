part of pack_preloaders;

class GlobalStateInitializer implements StateInitializer {
  GlobalStateInitializer({
    required this.settings,
    required this.runtimeGameNotifier,
  });
  final GeneralSettingsNotifier settings;
  final RuntimeGameNotifier runtimeGameNotifier;

  @override
  Future<void> onLoad({required final BuildContext context}) async {
    await Future.wait([
      settings.onLoad(context: context),
      runtimeGameNotifier.onLoad(context: context),
    ]);
  }
}
