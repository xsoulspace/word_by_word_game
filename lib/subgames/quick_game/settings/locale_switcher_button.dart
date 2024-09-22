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

    return LanguageSwitcherMenu(
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

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: Languages.all.length,
      itemBuilder: (final context, final index) {
        final language = Languages.all[index];
        return LanguageChip(
          key: ValueKey(language),
          language: language,
          isSelected: language == currentLanguage,
          onSelected: (final selected) async {
            if (selected) {
              await LocaleSwitcherButton.applyNewLanguage(context, language);
            }
          },
        );
      },
    );
  }
}

class LanguageChip extends StatelessWidget {
  const LanguageChip({
    required this.language,
    required this.isSelected,
    required this.onSelected,
    super.key,
  });
  final Languages language;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  @override
  Widget build(final BuildContext context) {
    final locale = namedLocalesMap[language];
    return FocusableActionDetector(
      onShowHoverHighlight: (final isHovered) {
        // if (isHovered) {
        //   onSelected(true);
        // }
      },
      actions: {
        ActivateIntent: CallbackAction<ActivateIntent>(
          onInvoke: (final _) => onSelected(true),
        ),
      },
      child: FilterChip(
        label: Text(locale?.name ?? ''),
        selected: isSelected,
        onSelected: onSelected,
        backgroundColor: Theme.of(context).colorScheme.surface,
        selectedColor: Theme.of(context).colorScheme.primary,
        labelStyle: TextStyle(
          color: isSelected
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
