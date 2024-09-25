import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

import '../../wbw_design_core.dart';

const _kIsPrivacyPolicyEnabled = false;

typedef SimpleMainMenuTuple = ({
  VoidCallback onSettings,
  VoidCallback onExit,
  VoidCallback onPlayersAndHighscore,
  VoidCallback onCredits,
  VoidCallback onContinueQuick,
  VoidCallback onNewQuick,
  VoidCallback onContinueAdventure,
  VoidCallback onChooseAdventure,
  VoidCallback onPrivacyPolicy,
  bool isAdventureSaveExists,
  bool isQuickSaveExists,
});

class SimpleMainMenu extends StatelessWidget {
  const SimpleMainMenu({
    required this.tuple,
    super.key,
  });

  final SimpleMainMenuTuple tuple;

  @override
  Widget build(final BuildContext context) {
    final formFactors = UiPersistentFormFactors.of(context);
    final hasMobileLayout = formFactors.isMobile;

    return KeyboardBindingsViewFocusScope(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.sizeOf(context).width * 0.18 / 2,
              right: MediaQuery.sizeOf(context).width * 0.18,
            ),
            child: Column(
              children: [
                const Flexible(
                  child: _MainMenuTitle(),
                ),
                Expanded(
                  flex: 2,
                  child: Builder(
                    builder: (final context) {
                      Widget child = _UiMainMenuList(tuple: tuple);
                      if (hasMobileLayout) {
                        child = SingleChildScrollView(
                          padding: EdgeInsets.zero,
                          child: child,
                        );
                      }
                      return child;
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _UiMainMenuList extends StatelessWidget {
  const _UiMainMenuList({required this.tuple});

  final SimpleMainMenuTuple tuple;

  @override
  Widget build(final BuildContext context) {
    const leadingGap = 8.0;
    const iconWidth = 24.0;
    const leadingGapWithIcon = leadingGap + iconWidth;
    const divider = Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(leadingGapWithIcon),
          UiHorizontalDivider(),
        ],
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(leadingGapWithIcon),
            UiAnimatedText(
              label: 'QUICK PLAY',
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: UiColors.mediumLight.withOpacity(0.9),
              ),
            ),
          ],
        ),
        const Gap(3),
        if (tuple.isQuickSaveExists)
          UiStyledButton(
            onPressed: tuple.onContinueQuick,
            label: 'continue',
            focusIcon: Icons.timer_outlined,
          ),
        UiStyledButton(
          onPressed: tuple.onNewQuick,
          label: tuple.isQuickSaveExists ? 'restart' : 'new',
          focusIcon: Icons.timer_outlined,
        ),
        divider,
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(leadingGapWithIcon),
            UiAnimatedText(
              label: 'ADVENTURE',
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: UiColors.mediumLight.withOpacity(0.9),
              ),
            ),
          ],
        ),
        const Gap(3),
        if (tuple.isAdventureSaveExists)
          UiStyledButton(
            onPressed: tuple.onContinueAdventure,
            label: 'continue',
            focusIcon: Icons.explore_outlined,
          ),
        UiStyledButton(
          onPressed: tuple.onChooseAdventure,
          label: 'choose',
          focusIcon: Icons.explore_outlined,
        ),
        divider,
        Row(
          children: [
            const Gap(8),
            UiStyledButton(
              styleType: ButtonStyleType.outlined,
              icon: Icons.scoreboard_rounded,
              onPressed: tuple.onPlayersAndHighscore,
              // TODO(arenukvern): l10n
              tooltip: 'Players and Highscore',
            ),
            UiStyledButton(
              styleType: ButtonStyleType.outlined,
              icon: Icons.settings_outlined,
              onPressed: tuple.onSettings,
              // TODO(arenukvern): l10n
              tooltip: 'Settings',
            ),
            if (DeviceRuntimeType.isDesktop)
              UiStyledButton(
                styleType: ButtonStyleType.outlined,
                icon: Icons.exit_to_app_rounded,
                onPressed: tuple.onExit,
                // TODO(arenukvern): l10n
                tooltip: 'Exit',
              ),
          ],
        ),
        const Gap(6),
        UiStyledButton(
          onPressed: tuple.onCredits,
          label: 'credits',
        ),
        if (_kIsPrivacyPolicyEnabled)
          UiStyledButton(
            // TODO(arenukvern): l10n
            label: 'privacy policy',
            onPressed: tuple.onPrivacyPolicy,
          ),
      ],
    ).animate().fadeIn(
          duration: 1200.milliseconds,
          curve: Curves.easeInOutBack,
        );
  }
}

class _MainMenuTitle extends StatelessWidget {
  const _MainMenuTitle();

  @override
  Widget build(final BuildContext context) {
    final shadows = [
      const Shadow(blurRadius: 1),
      const Shadow(blurRadius: 1),
      const Shadow(blurRadius: 1),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'WORLD',
          style: context.textThemeBold.displayLarge!.copyWith(
            letterSpacing: 5,
            color: UiColors.offWhite,
            shadows: shadows,
          ),
          textAlign: TextAlign.start,
        )
            .animate()
            .then(duration: 150.milliseconds)
            .fadeIn()
            .slideY(begin: -0.1),
        Text(
          'BY WORDS',
          style: context.textThemeBold.displayMedium!.copyWith(
            color: UiColors.offWhite,
            shadows: shadows,
          ),
          textAlign: TextAlign.start,
        ),
        const Gap(12),
        Text(
          '2D ADVENTURE GAME',
          style: context.textThemeBold.titleMedium!.copyWith(
            color: UiColors.offWhite,
            shadows: [
              const Shadow(blurRadius: 1),
              const Shadow(blurRadius: 1, color: Colors.black38),
            ],
          ),
          textAlign: TextAlign.start,
        )
            .animate()
            .then(duration: 150.milliseconds)
            .fadeIn()
            .slideY(begin: -0.1),
      ],
    );
  }
}

class KeyboardBindingsTips extends HookWidget {
  const KeyboardBindingsTips({super.key, this.hasBack = true});
  final bool hasBack;

  @override
  Widget build(final BuildContext context) {
    final bindings = context.watch<KeyboardBindingsNotifier>();
    final hovered = useState(false);
    return FocusableActionDetector(
      descendantsAreFocusable: false,
      onShowHoverHighlight: (final isHovered) => hovered.value = isHovered,
      child: AnimatedContainer(
        duration: 300.milliseconds,
        decoration: BoxDecoration(
          color: UiColors.mediumDark.withOpacity(hovered.value ? 0.9 : 0.5),
          borderRadius: BorderRadius.circular(UiDecorators.radiusSmall),
        ),
        child: DefaultTextStyle.merge(
          style: const TextStyle(
            color: UiColors.offWhite,
            fontSize: 12,
          ),
          child: AnimatedSize(
            duration: 300.milliseconds,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 12,
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _KeyButton(
                    keyTitle: bindings.getBindingDefaultTitle(
                      KeyboardBindingsType.mainMenuUp,
                    ),
                    title: 'up',
                  ),
                  const Gap(12),
                  _KeyButton(
                    keyTitle: bindings.getBindingDefaultTitle(
                      KeyboardBindingsType.mainMenuDown,
                    ),
                    title: 'down',
                  ),
                  const Gap(12),
                  _KeyButton(
                    keyTitle: bindings.getBindingDefaultTitle(
                      KeyboardBindingsType.mainMenuLeft,
                    ),
                    title: 'left',
                  ),
                  const Gap(12),
                  _KeyButton(
                    keyTitle: bindings.getBindingDefaultTitle(
                      KeyboardBindingsType.mainMenuRight,
                    ),
                    title: 'right',
                  ),
                  const Gap(12),
                  _KeyButton(
                    keyTitle: bindings.getBindingDefaultTitle(
                      KeyboardBindingsType.mainMenuSelect,
                    ),
                    title: 'select',
                  ),
                  if (hasBack) ...[
                    const Gap(12),
                    _KeyButton(
                      keyTitle: bindings.getBindingDefaultTitle(
                        KeyboardBindingsType.mainMenuBack,
                      ),
                      title: 'Back',
                    ),
                  ],
                ],
              ),
            ),
          ),
        )
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
    );
  }
}

class _KeyButton extends StatelessWidget {
  const _KeyButton({
    required this.keyTitle,
    required this.title,
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
                fontSize: 12,
                color: UiColors.mediumDark,
              ),
            ),
          ),
        ],
      );
}
