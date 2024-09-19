import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

import '../../wbw_design_core.dart';
import '../theme/color_palette.dart';
import '../widgets/game_menu_button.dart';

typedef SimpleMainMenuTuple = ({
  VoidCallback onSettings,
  VoidCallback onExit,
  VoidCallback onPlayersAndHighscore,
  VoidCallback onCredits,
  VoidCallback onContinueQuick,
  VoidCallback onNewQuick,
  VoidCallback onContinueAdventure,
  VoidCallback onChooseAdventure,
});

class SimpleMainMenu extends StatelessWidget {
  const SimpleMainMenu({
    required this.tuple,
    super.key,
  });

  final SimpleMainMenuTuple tuple;

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
            const Positioned(
              bottom: 8,
              right: 8,
              child: KeyboardBindingsTips(),
            ),
          Positioned(
            right: MediaQuery.sizeOf(context).width * 0.18,
            top: 0,
            bottom: 0,
            child: _UiMainMenuList(tuple: tuple),
          ),
        ],
      ),
    );
  }
}

class _UiMainMenuList extends StatelessWidget {
  const _UiMainMenuList({required this.tuple, super.key});

  final SimpleMainMenuTuple tuple;

  @override
  Widget build(final BuildContext context) {
    const leadingGap = 8.0;
    const iconWidth = 24.0;
    const leadingGapWithIcon = leadingGap + iconWidth;
    const divider = Row(
      children: [
        Gap(leadingGapWithIcon),
        UiLinearDivider(),
      ],
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Gap(leadingGapWithIcon),
            UiAnimatedText(
              'QUICK PLAY',
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: UiColors.mediumLight.withOpacity(0.9),
              ),
            ),
          ],
        ),
        const Gap(3),
        GameMenuButton(
          onPressed: tuple.onContinueQuick,
          label: 'continue',
          focusIcon: Icons.timer_outlined,
        ),
        GameMenuButton(
          onPressed: tuple.onNewQuick,
          label: 'restart',
          focusIcon: Icons.timer_outlined,
        ),
        const Divider(),
        divider,
        const Divider(),
        Row(
          children: [
            const Gap(leadingGapWithIcon),
            UiAnimatedText(
              'ADVENTURE',
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: UiColors.mediumLight.withOpacity(0.9),
              ),
            ),
          ],
        ),
        const Gap(3),
        GameMenuButton(
          onPressed: tuple.onContinueAdventure,
          label: 'continue',
          focusIcon: Icons.explore_outlined,
        ),
        GameMenuButton(
          onPressed: tuple.onChooseAdventure,
          label: 'choose',
          focusIcon: Icons.explore_outlined,
        ),
        const Divider(),
        divider,
        const Divider(),
        GameMenuButton(
          // icon: Icons.settings_outlined,
          onPressed: tuple.onSettings,
          label: 'settings',
        ),
        GameMenuButton(
          // icon: Icons.roundabout_left,
          onPressed: tuple.onCredits,
          label: 'credits',
        ),
        if (DeviceRuntimeType.isDesktop)
          GameMenuButton(
            // icon: Icons.exit_to_app_outlined,
            onPressed: tuple.onExit,
            label: 'quit',
          ),
      ],
    ).animate().fadeIn(
          duration: 1200.milliseconds,
          curve: Curves.easeInOutBack,
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
                keyTitle: bindings.getBindingDefaultTitle(
                  KeyboardBindingsType.mainMenuSelect,
                ),
                title: 'Select',
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
    );
  }
}

/// --- <> ---
class UiLinearDivider extends StatelessWidget {
  const UiLinearDivider({super.key});

  @override
  Widget build(final BuildContext context) => CustomPaint(
        painter: _LinearDividerPainter(),
        size: const Size(60, 20),
      );
}

class _LinearDividerPainter extends CustomPainter {
  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = UiColors.mediumLight.withOpacity(0.5)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const triangleSize = 8.0;
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    // Draw left line
    canvas.drawLine(
      Offset(0, centerY),
      Offset(centerX - triangleSize, centerY),
      paint,
    );

    // Draw right line
    canvas.drawLine(
      Offset(centerX + triangleSize, centerY),
      Offset(size.width, centerY),
      paint,
    );

    // Draw triangle
    final path = Path()
      ..moveTo(centerX - triangleSize, centerY)
      ..lineTo(centerX, centerY - triangleSize / 2)
      ..lineTo(centerX + triangleSize, centerY)
      ..lineTo(centerX, centerY + triangleSize / 2)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => false;
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
