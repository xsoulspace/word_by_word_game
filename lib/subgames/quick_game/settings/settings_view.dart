import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';
import 'package:word_by_word_game/subgames/quick_game/settings/locale_switcher_button.dart';

class SettingsView extends HookWidget {
  const SettingsView({super.key});

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    return DecoratedDialogScaffold(
      bottomButton: const ViewBackButton(),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      children: [
        UiGaps.small,
        Center(
          child: Text(
            LocalizedMap(
              value: {
                uiLanguages.en: 'SETTINGS',
                uiLanguages.ru: 'НАСТРОЙКИ',
                uiLanguages.it: 'IMPOSTAZIONI',
              },
            ).getValue(locale),
            style: const TextStyle(fontSize: 24),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [UiHorizontalDivider()],
        ),
        UiGaps.extraLarge,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocalizedMap(
                  value: {
                    uiLanguages.en: 'Language',
                    uiLanguages.ru: 'Язык',
                    uiLanguages.it: 'Lingua',
                  },
                ).getValue(locale),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: UiColors.mediumLight,
                ),
              ),
              const Gap(2),
              const Expanded(child: LocaleSwitcherGrid()),
            ],
          ),
        ),
        UiGaps.extraLarge,
        UiGaps.extraLarge,
      ],
    );
  }
}
