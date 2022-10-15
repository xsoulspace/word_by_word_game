part of 'pause_screen.dart';

class _PauseScreenStateDiDto {
  _PauseScreenStateDiDto.use(final Locator read)
      : routeState = read(),
        appRouterController = AppRouterController.use(read),
        mechanics = read(),
        globalGameBloc = read();
  final RouteState routeState;
  final GlobalGameBloc globalGameBloc;
  final AppRouterController appRouterController;
  final MechanicsCollection mechanics;
}

_PauseScreenState _usePauseScreenState({
  required final Locator read,
}) =>
    use(
      ContextfulLifeHook(
        debugLabel: '_PauseScreenState',
        state: _PauseScreenState(
          diDto: _PauseScreenStateDiDto.use(read),
        ),
      ),
    );

class _PauseScreenState extends ContextfulLifeState {
  _PauseScreenState({
    required this.diDto,
  });
  final _PauseScreenStateDiDto diDto;
  void onContinue({
    required final LevelModelId id,
  }) {
    diDto.appRouterController.toPlayableLevel(id: id);
    diDto.mechanics.worldTime.resume();
  }

  void onToAllLevels() {
    diDto.appRouterController.toAllLevel();
  }

  void onToPlayersAndHighscore() {
    diDto.appRouterController.toPlayersAndHighscore();
  }

  void onToSettings() {
    diDto.appRouterController.toSettings();
  }

  void onPrivacyPolicy() {
    // launchUrlString('https://xsoulspace.dev/game/wbw/privacy');
    launchUrlString(
      'https://github.com/xsoulspace/word_by_word_game/blob/master/PRIVACY_POLICY.md',
    );
  }

  Future<void> onShowAbout() async {
    final context = getContext();
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final s = S.of(context);
    final packageInfo = await PackageInfo.fromPlatform();
    final List<Widget> aboutBoxChildren = <Widget>[
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 200),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            uiTheme.verticalBoxes.medium,
            Text(s.creatingGame),
            uiTheme.verticalBoxes.medium,
            Text(s.sendFeedback),
            uiTheme.verticalBoxes.medium,
            TextButton(
              child: Text(s.supportGame),
              onPressed: () => launchUrlString('https://boosty.to/arenukvern'),
            ),
            uiTheme.verticalBoxes.medium,
            Text(s.thankYou),
          ],
        ),
      )
    ];

    showAboutDialog(
      applicationName: 'Word By Word',
      applicationIcon: Image.asset(
        'assets/icon.png',
        width: 32,
        height: 32,
      ),
      applicationLegalese: '\u{a9} 2020-${DateTime.now().year} '
          'Game by Anton Malofeev, Irina Veter',
      applicationVersion: '${packageInfo.version}+${packageInfo.buildNumber}',
      children: aboutBoxChildren,
      context: context,
    );
  }
}
