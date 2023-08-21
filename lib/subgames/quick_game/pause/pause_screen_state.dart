part of 'pause_screen.dart';

bool get kLinksAreAllowed => false;

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

PauseScreenState _usePauseScreenState({
  required final Locator read,
}) =>
    use(
      ContextfulLifeHook(
        debugLabel: '_PauseScreenState',
        state: PauseScreenState(
          diDto: _PauseScreenStateDiDto.use(read),
        ),
      ),
    );

class PauseScreenState extends ContextfulLifeState {
  PauseScreenState({
    required this.diDto,
  });
  final _PauseScreenStateDiDto diDto;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) unawaited(YandexAdsSdk().onLoad());
  }

  Future<void> onContinue({
    required final CanvasDataModelId id,
  }) async {
    await diDto.globalGameBloc.onStartPlayingLevel(
      const StartPlayingLevelEvent(shouldRestartTutorial: false),
    );
    diDto.appRouterController.toPlayableLevel(id: id);
  }

  void onToPlayersAndHighscore() {
    diDto.appRouterController.toPlayersAndHighscore();
  }

  void onToSettings() {
    diDto.appRouterController.toSettings();
  }

  Future<void> onPrivacyPolicy() async {
    // launchUrlString('https://xsoulspace.dev/game/wbw/privacy');
    await launchUrlString(
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
        constraints: const BoxConstraints(
          maxWidth: 200,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            uiTheme.verticalBoxes.medium,
            Text(s.creatingGame),
            uiTheme.verticalBoxes.medium,
            Visibility(
              visible: kLinksAreAllowed,
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(s.sendFeedback),
                ),
                onPressed: () => launchUrlString(
                  'https://discord.com/invite/y54DpJwmAn',
                ),
              ),
            ),
            uiTheme.verticalBoxes.small,
            Visibility(
              visible: kLinksAreAllowed,
              child: TextButton(
                onPressed: () =>
                    launchUrlString('https://boosty.to/arenukvern'),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(s.supportGame),
                ),
              ),
            ),
            uiTheme.verticalBoxes.large,
            const Text('Graphics credits & thanks:'),
            uiTheme.verticalBoxes.medium,
            Visibility(
              visible: kLinksAreAllowed,
              child: TextButton(
                onPressed: () => launchUrlString('https://sonnenstein.itch.io'),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Sonnenstein (we currently working to create new tileset)',
                  ),
                ),
              ),
            ),
            Visibility(
              visible: kLinksAreAllowed,
              child: TextButton(
                onPressed: () =>
                    launchUrlString('https://pixelfrog-assets.itch.io'),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Pixel Frog (Used this pack during v3 development)',
                  ),
                ),
              ),
            ),
            uiTheme.verticalBoxes.large,
            Text(s.thankYou),
          ],
        ),
      ),
    ];
    final applicationLegalese = '\u{a9} 2020-${DateTime.now().year} '
        'Game by Anton Malofeev, Irina Veter';

    final applicationVersion =
        '${packageInfo.version}+${packageInfo.buildNumber}';
    final icon = Image.asset(
      'assets/icon.png',
      width: 32,
      height: 32,
    );
    if (!mounted) return;
    if (kLinksAreAllowed) {
      showAboutDialog(
        applicationName: 'Word By Word',
        applicationIcon: icon,
        applicationLegalese: applicationLegalese,
        applicationVersion: applicationVersion,
        children: aboutBoxChildren,
        context: context,
      );
    } else {
      unawaited(
        showDialog(
          context: context,
          builder: (final context) => SimpleDialog(
            title: const Text('Word By Word'),
            contentPadding: const EdgeInsets.all(24),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  icon,
                  uiTheme.horizontalBoxes.large,
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(applicationLegalese),
                        uiTheme.verticalBoxes.small,
                        Text(
                          applicationVersion,
                          style: theme.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              uiTheme.verticalBoxes.medium,
              Text(s.creatingGame),
              uiTheme.verticalBoxes.large,
              const Text('Made with Flutter & Flame Engine.'),
              uiTheme.verticalBoxes.large,
              TextButton(
                onPressed: () => Navigator.maybePop(context),
                child: Text(S.of(context).ok),
              ),
            ],
          ),
        ),
      );
    }
  }
}
