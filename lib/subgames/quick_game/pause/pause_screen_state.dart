// ignore_for_file: use_build_context_synchronously

part of 'pause_screen.dart';

class _PauseScreenStateDiDto {
  _PauseScreenStateDiDto.use(final BuildContext context)
    : mechanics = context.read(),
      globalGameBloc = context.read();
  final GlobalGameBloc globalGameBloc;
  final MechanicsCollection mechanics;
}

class PauseScreenState extends ValueNotifier<void> {
  PauseScreenState({
    required final BuildContext context,
    required this.uxState,
    required this.uiState,
  }) : dto = _PauseScreenStateDiDto.use(context),
       super(null);
  final LevelStartDialogUxNotifier uxState;
  final LevelStartDialogUiState uiState;
  final _PauseScreenStateDiDto dto;
  // @override
  // void initState() {
  //   super.initState();
  //   if (Platform.isAndroid) unawaited(YandexAdsSdk().onLoad());
  // }

  Future<void> onShowStartDialog({
    required final BuildContext context,
    required final CanvasDataModelId canvasDataId,
  }) async {
    uxState.canvasDataId = canvasDataId;
    uiState.onSwitchDialogVisiblity();
  }

  late final onContinueFromSamePlace = uxState.onContinueFromSamePlace;
  late final onDeleteLevel = uxState.onDeleteLevel;

  Future<void> onPrivacyPolicy() async {
    // launchUrlString('https://xsoulspace.dev/game/wbw/privacy');
    await launchUrlString(
      'https://xsoulspace.dev/#/home/p/TjPS8bk5XNT85GIva57K/privacy',
      // 'https://github.com/xsoulspace/word_by_word_game/blob/master/PRIVACY_POLICY.md',
    );
  }

  Future<void> onShowAbout(final BuildContext context) async {
    final locale = useLocale(context, listen: false);
    final theme = Theme.of(context);
    final s = S.of(context);
    final madeWith =
        '${LocalizedMap(value: {languages.en: 'Made with', languages.ru: 'Сделано с помощью', languages.it: 'Fatto con'}).getValue(locale)} Flame Engine, Flutter & Dart.';
    final List<Widget> aboutBoxChildren = <Widget>[
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 200),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UiGaps.medium,
            Text(s.creatingGame),
            UiGaps.medium,
            Visibility(
              visible: Envs.isLinksAllowed,
              child: TextButton(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(s.sendFeedback),
                ),
                onPressed: () =>
                    launchUrlString('https://discord.com/invite/y54DpJwmAn'),
              ),
            ),
            UiGaps.small,
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
            UiGaps.large,
            Text(S.of(context).graphicsCreditsThanks),
            UiGaps.medium,
            Visibility(
              visible: Envs.isLinksAllowed,
              child: TextButton(
                onPressed: () => launchUrlString('https://sonnenstein.itch.io'),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Sonnenstein - Evening Tileset'),
                ),
              ),
            ),
            UiGaps.medium,
            Text(madeWith),
            UiGaps.large,
            Text(s.thankYou),
          ],
        ),
      ),
    ];
    final applicationLegalese =
        '\u{a9} 2020-${DateTime.now().year} ${LocalizedMap(value: {languages.en: 'Game by Anton Malofeev, Irina Veter', languages.ru: 'Создатели игры: Антон Малофеев, Ирина Ветер', languages.it: 'Gioco di Anton Malofeev, Irina Veter'}).getValue(locale)}';

    final packageInfo = await PackageInfo.fromPlatform();
    final applicationVersion =
        '${packageInfo.version}+${packageInfo.buildNumber}';
    final icon = Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: Image.asset('assets/icon.png').image),
        borderRadius: const BorderRadius.all(Radius.elliptical(12, 12)),
      ),
      width: 64,
      height: 64,
    );
    final applicationName = Envs.store.isYandexGames
        ? LocalizedMap(
            value: {
              languages.en: 'Word By Word Adventure',
              languages.ru: 'Слово после слова Приключение',
              languages.it: 'Parola dopo parola Avventura',
            },
          ).getValue(locale)
        : 'Word By Word: Adventure';
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
                          UiGaps.small,
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
              UiGaps.medium,
              Text(s.creatingGame),
              UiGaps.large,
              Text(
                S.of(context).graphicsCreditsThanks,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              UiGaps.medium,
              const Text('Sonnenstein - Evening Tileset'),
              UiGaps.large,
              Text(madeWith),
              UiGaps.large,
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
