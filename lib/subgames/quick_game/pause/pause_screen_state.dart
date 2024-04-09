// ignore_for_file: use_build_context_synchronously

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
  // @override
  // void initState() {
  //   super.initState();
  //   if (Platform.isAndroid) unawaited(YandexAdsSdk().onLoad());
  // }

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
      'https://xsoulspace.dev/#/home/p/TjPS8bk5XNT85GIva57K/privacy',
      // 'https://github.com/xsoulspace/word_by_word_game/blob/master/PRIVACY_POLICY.md',
    );
  }

  Future<void> onShowAbout() async {
    final context = getContext();
    final locale = useLocale(context);
    final theme = Theme.of(context);
    final uiTheme = context.uiTheme;
    final s = S.of(context);
    final madeWith = '${const LocalizedMap(
      value: {
        Languages.en: 'Made with',
        Languages.ru: 'Сделано с помощью',
        Languages.it: 'Fatto con',
      },
    ).getValue(locale)} '
        'Flame Engine, Flutter & Dart.';
    final List<Widget> aboutBoxChildren = <Widget>[
      ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 200,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            uiTheme.verticalBoxes.medium,
            Text(s.creatingGame),
            uiTheme.verticalBoxes.medium,
            Visibility(
              visible: Envs.isLinksAllowed,
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
              visible: Envs.isLinksAllowed,
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
            Text(S.of(context).graphicsCreditsThanks),
            uiTheme.verticalBoxes.medium,
            Visibility(
              visible: Envs.isLinksAllowed,
              child: TextButton(
                onPressed: () => launchUrlString('https://sonnenstein.itch.io'),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Sonnenstein'),
                ),
              ),
            ),
            Visibility(
              visible: Envs.isLinksAllowed,
              child: TextButton(
                onPressed: () =>
                    launchUrlString('https://pixelfrog-assets.itch.io'),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Pixel Frog (${const LocalizedMap(
                      value: {
                        Languages.en: 'Used this pack during v3 development',
                        Languages.ru:
                            'Использовал пакет графики для разработки 3 версии',
                        Languages.it:
                            // ignore: lines_longer_than_80_chars
                            'Utilizzato questo pacchetto durante lo sviluppo della v3',
                      },
                    ).getValue(locale)})',
                  ),
                ),
              ),
            ),
            uiTheme.verticalBoxes.medium,
            Text(madeWith),
            uiTheme.verticalBoxes.large,
            Text(s.thankYou),
          ],
        ),
      ),
    ];
    final applicationLegalese =
        '\u{a9} 2020-${DateTime.now().year} ${const LocalizedMap(
      value: {
        Languages.en: 'Game by Anton Malofeev, Irina Veter',
        Languages.ru: 'Создатели игры: Антон Малофеев, Ирина Ветер',
        Languages.it: 'Gioco di Anton Malofeev, Irina Veter',
      },
    ).getValue(locale)}';

    final packageInfo = await PackageInfo.fromPlatform();
    final applicationVersion =
        '${packageInfo.version}+${packageInfo.buildNumber}';
    final icon = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            'assets/icon.png',
          ).image,
        ),
        borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),
      ),
      width: 64,
      height: 64,
    );
    if (!mounted) return;
    final applicationName = Envs.store.isYandexGames
        ? const LocalizedMap(
            value: {
              Languages.en: 'Word By Word Adventure',
              Languages.ru: 'Слово после слова Приключение',
              Languages.it: 'Parola dopo parola Avventura',
            },
          ).getValue(locale)
        : 'Word By Word';
    if (Envs.isLinksAllowed) {
      showAboutDialog(
        applicationName: applicationName,
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
            title: Text(applicationName),
            contentPadding: const EdgeInsets.all(24),
            children: [
              Row(
                children: [
                  icon,
                  const Gap(12),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 240),
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
                  ),
                ],
              ),
              uiTheme.verticalBoxes.medium,
              Text(s.creatingGame),
              uiTheme.verticalBoxes.large,
              Text(
                S.of(context).graphicsCreditsThanks,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              uiTheme.verticalBoxes.medium,
              const Text('Sonnenstein, Pixel Frog'),
              uiTheme.verticalBoxes.large,
              Text(madeWith),
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
