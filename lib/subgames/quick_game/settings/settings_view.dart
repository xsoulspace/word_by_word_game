import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';
import 'package:word_by_word_game/subgames/quick_game/settings/locale_switcher_button.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({required this.onBack, super.key});
  final VoidCallback onBack;

  @override
  Widget build(final BuildContext context) => Column(
        children: [
          const Spacer(),
          const ViewTitle(
            title: LocalizedMap(
              value: {
                Languages.en: 'Settings',
                Languages.ru: 'Настройки',
                Languages.it: 'Impostazioni',
              },
            ),
          ),
          const Spacer(),
          const LocaleSwitcherButton(),
          const Gap(24),
          ViewBackButton(onBack: onBack),
          const Spacer(),
        ],
      );
}
