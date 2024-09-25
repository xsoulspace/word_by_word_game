import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';

class LocaleSwitcherButton extends StatelessWidget {
  const LocaleSwitcherButton({
    super.key,
  });
  static Future<void> applyNewLanguage(
    final BuildContext context,
    final Languages newLanguage,
  ) async {
    final uiKeyboardController = context.read<UiKeyboardController>();
    final userNotifier = context.read<AppSettingsNotifier>();
    final locale = namedLocalesMap[newLanguage];
    await userNotifier.updateLocale(locale?.locale);
    uiKeyboardController.onChangeLanguage(
      KeyboardLanguage.fromLanguage(newLanguage),
    );
  }

  @override
  Widget build(final BuildContext context) {
    final localeNotifier = useLocale(context);
    final language = Languages.values.byName(localeNotifier.languageCode);

    return UiLanguageSwitcherMenu(
      value: language,
      languages: Languages.all,
      isShortAbbreviationUsed: false,
      onChanged: (final newLanguage) async =>
          applyNewLanguage(context, newLanguage),
    );
  }
}

class LocaleSwitcherGrid extends StatelessWidget {
  const LocaleSwitcherGrid({
    super.key,
  });

  @override
  Widget build(final BuildContext context) {
    final localeNotifier = useLocale(context);
    final currentLanguage =
        Languages.values.byName(localeNotifier.languageCode);
    return Wrap(
      spacing: 4,
      runSpacing: 4,
      children: Languages.all
          .map(
            (final language) => _LanguageChip(
              language: language,
              isSelected: language == currentLanguage,
              onSelected: (final selected) async {
                if (selected) {
                  await LocaleSwitcherButton.applyNewLanguage(
                    context,
                    language,
                  );
                }
              },
            ),
          )
          .toList(),
    );
  }
}

class _LanguageChip extends StatelessWidget {
  const _LanguageChip({
    required this.language,
    required this.isSelected,
    required this.onSelected,
  });
  final Languages language;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(final BuildContext context) {
    final locale = namedLocalesMap[language];
    return UiStyledButton(
      styleType: isSelected ? ButtonStyleType.outlined : ButtonStyleType.text,
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (final _) => onSelected(true),
        ),
      },
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      onPressed: () => onSelected(true),
      label: locale?.name ?? '',
      textStyle: const TextStyle(fontSize: 16),
    );
  }
}
