import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

import '../../wbw_design_core.dart';
import '../theme/color_palette.dart';
import '../widgets/game_menu_button.dart';

class SimpleMainMenu extends StatelessWidget {
  const SimpleMainMenu({
    required this.onSettings,
    required this.onExit,
    required this.onPlayersAndHighscore,
    required this.onCredits,
    required this.onContinueQuick,
    required this.onNewQuick,
    required this.onContinueAdventure,
    required this.onChooseAdventure,
    super.key,
  });

  final VoidCallback onSettings;
  final VoidCallback onExit;
  final VoidCallback onPlayersAndHighscore;
  final VoidCallback onCredits;
  final VoidCallback onContinueQuick;
  final VoidCallback onNewQuick;
  final VoidCallback onContinueAdventure;
  final VoidCallback onChooseAdventure;

  @override
  Widget build(final BuildContext context) {
    final bindings = context.watch<KeyboardBindingsNotifier>();

    return FocusScope(
      autofocus: true,
      onKeyEvent: (final node, final event) {
        /// prevents from handling other events like KeyUpEvent
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (bindings
            .getBindings(KeyboardBindingsType.mainMenuUp)
            .contains(event.logicalKey)) {
          // Move focus to the previous button
          node.previousFocus();
          return KeyEventResult.handled;
        } else if (bindings
            .getBindings(KeyboardBindingsType.mainMenuDown)
            .contains(event.logicalKey)) {
          // Move focus to the next button
          node.nextFocus();
          return KeyEventResult.handled;
        }

        return KeyEventResult.ignored;
      },
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (DeviceRuntimeType.isNativeDesktop)
            Positioned(
              bottom: 8,
              right: 8,
              child: const KeyboardBindingsTips()
                  .animate()
                  .slideY(
                    begin: 1,
                    end: 0,
                    curve: Curves.easeInOut,
                    duration: 1200.milliseconds,
                  )
                  .fadeIn(
                    duration: 1500.milliseconds,
                    curve: Curves.easeInOut,
                  ),
            ),
          Positioned(
            right: MediaQuery.sizeOf(context).width * 0.17,
            top: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.timer_outlined, color: UiColors.light),
                    const Gap(19),
                    UiAnimatedText(
                      'QUICK PLAY',
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: UiColors.mediumLight.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                const Gap(3),
                GameMenuButton(
                  onPressed: onContinueQuick,
                  label: 'Continue',
                ),
                GameMenuButton(
                  onPressed: onNewQuick,
                  label: 'Restart',
                ),
                const Divider(),
                const Divider(),
                Row(
                  children: [
                    const Icon(Icons.explore_outlined, color: UiColors.light),
                    const Gap(19),
                    UiAnimatedText(
                      'ADVENTURE',
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: UiColors.mediumLight.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
                const Gap(3),
                GameMenuButton(
                  onPressed: onContinueAdventure,
                  label: 'Continue',
                ),
                GameMenuButton(
                  onPressed: onChooseAdventure,
                  label: 'Choose',
                ),
                const Divider(),
                const Divider(),
                GameMenuButton(
                  // icon: Icons.settings_outlined,
                  onPressed: onSettings,
                  label: 'Settings',
                ),
                GameMenuButton(
                  // icon: Icons.roundabout_left,
                  onPressed: onCredits,
                  label: 'Credits',
                ),
                if (DeviceRuntimeType.isDesktop)
                  GameMenuButton(
                    // icon: Icons.exit_to_app_outlined,
                    onPressed: onExit,
                    label: 'Quit',
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class KeyboardBindingsTips extends HookWidget {
  const KeyboardBindingsTips({super.key});

  @override
  Widget build(final BuildContext context) {
    final bindings = context.watch<KeyboardBindingsNotifier>();
    return Container(
      decoration: BoxDecoration(
        color: UiColors.mediumDark,
        borderRadius: BorderRadius.circular(UiDecorators.radiusSmall),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 12,
      ),
      child: DefaultTextStyle.merge(
        style: const TextStyle(
          color: UiColors.offWhite,
          fontSize: UiFontSizes.s12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _KeyButton(
              keyTitle: bindings
                  .getBindingDefaultTitle(KeyboardBindingsType.mainMenuUp),
              title: 'Up',
            ),
            const Gap(12),
            _KeyButton(
              keyTitle: bindings
                  .getBindingDefaultTitle(KeyboardBindingsType.mainMenuDown),
              title: 'Down',
            ),
            const Gap(12),
            _KeyButton(
              keyTitle: bindings
                  .getBindingDefaultTitle(KeyboardBindingsType.mainMenuSelect),
              title: 'Select',
            ),
            const Gap(12),
            _KeyButton(
              keyTitle: bindings
                  .getBindingDefaultTitle(KeyboardBindingsType.mainMenuBack),
              title: 'Back',
            ),
          ],
        ),
      ),
    );
  }
}

class _KeyButton extends StatelessWidget {
  const _KeyButton({
    required this.keyTitle,
    required this.title,
    super.key,
  });

  final String keyTitle;
  final String title;
  @override
  Widget build(final BuildContext context) => Row(
        children: [
          Text(title),
          const Gap(4),
          Container(
            decoration: BoxDecoration(
              color: UiColors.offWhite,
              borderRadius: BorderRadius.circular(UiDecorators.radiusSmall),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 2,
            ),
            child: Text(
              keyTitle,
              style: const TextStyle(
                fontSize: UiFontSizes.s12,
                color: UiColors.mediumDark,
              ),
            ),
          ),
        ],
      );
}
