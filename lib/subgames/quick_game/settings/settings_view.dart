import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';
import 'package:word_by_word_game/subgames/quick_game/settings/locale_switcher_button.dart';

class SettingsView extends HookWidget {
  const SettingsView({super.key});

  @override
  Widget build(final BuildContext context) => Column(
        children: [
          const Spacer(),
          const LocaleSwitcherButton(),
          const Gap(24),
          ViewBackButton(onBack: () => Navigator.pop(context)),
          const Spacer(),
        ],
      );
}
