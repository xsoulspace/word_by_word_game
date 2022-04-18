part of pack_preloaders;

class GameLoadingScreen extends StatelessWidget {
  const GameLoadingScreen({
    final Key? key,
  }) : super(key: key);
  @override
  Widget build(final BuildContext context) {
    final settings = context.watch<GeneralSettingsController>();
    final statusText = gameLoadingStatusesTitles[settings.loadingStatus]
            ?.getByLanguage(intl.Intl.systemLocale) ??
        '';

    return ColoredBox(
      color: AppColors.black,
      child: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(AppColors.primary2),
              ),
              const SizedBox(height: 5),
              Text(statusText),
            ],
          ),
        ),
      ),
    );
  }
}
