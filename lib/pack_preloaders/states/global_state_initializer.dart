part of pack_preloaders;

class GlobalStateInitializer implements StateInitializer {
  GlobalStateInitializer({
    required this.settings,
    required this.runtimeGameNotifier,
    required this.gameService,
  });
  final GeneralSettingsNotifier settings;
  final RuntimeGameNotifier runtimeGameNotifier;
  final GameServiceI gameService;

  @override
  Future<void> onLoad({required final BuildContext context}) async {
    await Future.wait([
      settings.onLoad(context: context),
      runtimeGameNotifier.onLoad(context: context),
    ]);
  }
}
