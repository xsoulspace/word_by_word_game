part of 'locale_switcher_button.dart';

class _LocaleSwitcherButtonDiDto {
  _LocaleSwitcherButtonDiDto.use(final Locator read)
      : appSettingsNotifier = read(),
        uiKeyboardController = read();
  final AppSettingsCubit appSettingsNotifier;
  final UiKeyboardController uiKeyboardController;
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
  Locale? locale;

  @override
  void initState() {
    super.initState();
    final languageCode = diDto.appSettingsNotifier.locale?.languageCode;
    if (languageCode == null) return;
    final language = Languages.byLanguageCode(languageCode);
    locale = Locales.byLanguage(language);
  }

  void onUpdateLocale(final Locale? value) {
    diDto.appSettingsNotifier.locale = value;
    final definedLocale = diDto.appSettingsNotifier.definedLocale;
    diDto.uiKeyboardController.onChangeLanguage(
      KeyboardLanguage.fromlanguage(
        Languages.byLanguageCode(definedLocale.languageCode),
      ),
    );
    locale = value;
    setState();
  }

  final systemLocale = const LocalizedMap(
    value: {
      Languages.en: 'System',
      Languages.ru: 'Как в системе',
      Languages.it: 'Sistema',
    },
  );
}
