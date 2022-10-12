part of 'locale_switcher_button.dart';

class _LocaleSwitcherButtonDiDto {
  _LocaleSwitcherButtonDiDto.use(final Locator read)
      : appSettingsNotifier = read();
  final AppSettingsNotifier appSettingsNotifier;
}

_LocaleSwitcherButtonState _useLocaleSwitcherButtonState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_LocaleSwitcherButtonState',
        state: _LocaleSwitcherButtonState(
          diDto: _LocaleSwitcherButtonDiDto.use(read),
        ),
      ),
    );

class _LocaleSwitcherButtonState extends LifeState {
  _LocaleSwitcherButtonState({
    required this.diDto,
  });

  final _LocaleSwitcherButtonDiDto diDto;
  late Locale locale;

  @override
  void initState() {
    super.initState();
    final languageCode = diDto.appSettingsNotifier.locale?.languageCode;
    final String effectiveLanguageCode =
        languageCode ?? getLanguageCode(intl.Intl.getCurrentLocale());
    final language = Languages.values.byName(effectiveLanguageCode);
    locale = namedLocalesMap[language]?.locale ?? Locales.en;
  }

  void onUpdateLocale(final Locale? value) {
    if (value == null) return;
    diDto.appSettingsNotifier.locale = value;
    locale = value;
    setState();
  }
}
