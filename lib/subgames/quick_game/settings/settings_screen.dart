import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/router.dart';
import 'package:word_by_word_game/subgames/quick_game/settings/widgets/locale_switcher_button.dart';

part 'settings_screen_state.dart';

class SettingsScreen extends HookWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    // final state = _useSettingsScreenState(read: context.read);
    final uiTheme = context.uiTheme;
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            uiTheme.verticalBoxes.large,
            Row(
              children: [
                GameBackButton(
                  onPressed: () {
                    AppPathsController.of(context).toPauseOrRoot(
                      globalGameBloc: context.read(),
                    );
                  },
                ),
                Expanded(
                  child: Text(
                    S.of(context).settings,
                    style: theme.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            uiTheme.verticalBoxes.extraLarge,
            uiTheme.verticalBoxes.extraLarge,
            const LocaleSwitcherButton(),
          ],
        ),
      ),
    );
  }
}
