import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/pause/adventure_view.dart';
import 'package:word_by_word_game/subgames/quick_game/settings/locale_switcher_button.dart';

class SettingsView extends HookWidget {
  const SettingsView({super.key});

  @override
  Widget build(final BuildContext context) => const DecoratedDialogScaffold(
        bottomButton: ViewBackButton(),
        padding: EdgeInsets.symmetric(horizontal: 6),
        children: [
          Center(
            // TODO(arenukvern): l10n
            child: Text(
              'SETTINGS',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Gap(16),
          Row(
            children: [
              // TODO(arenukvern): l10n
              Text('Language'),
              Gap(12),
              Flexible(child: LocaleSwitcherGrid()),
            ],
          ),
        ],
      );
}
