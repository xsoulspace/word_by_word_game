import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  Widget build(final BuildContext context) => KeyboardBindingsViewFocusScope(
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
                    child: _UiMainMenuList(tuple: tuple),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class KeyboardBindingsViewFocusScope extends StatelessWidget {
  const KeyboardBindingsViewFocusScope({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(final BuildContext context) {
    final bindings = context.watch<KeyboardBindingsNotifier>();
    return FocusScope(
      autofocus: true,
      onKeyEvent: (final node, final event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (bindings
            .getBindings(KeyboardBindingsType.mainMenuUp)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.up);
          return KeyEventResult.handled;
        } else if (bindings
            .getBindings(KeyboardBindingsType.mainMenuDown)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.down);
          return KeyEventResult.handled;
        } else if (bindings
            .getBindings(KeyboardBindingsType.mainMenuLeft)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.left);
          return KeyEventResult.handled;
        } else if (bindings
            .getBindings(KeyboardBindingsType.mainMenuRight)
            .contains(event.logicalKey)) {
          node.focusInDirection(TraversalDirection.right);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: child,
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
          UiLinearDivider(),
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
    return Hero(
      tag: const ValueKey('keyboardBindingsTips'),
      child: FocusableActionDetector(
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
            child: AnimatedSize(
              duration: 300.milliseconds,
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
    canvas
      ..drawLine(
        Offset(0, centerY),
        Offset(centerX - triangleSize, centerY),
        paint,
      )
      // Draw right line
      ..drawLine(
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

class UiVerticalLinearDivider extends StatelessWidget {
  const UiVerticalLinearDivider({super.key});

  @override
  Widget build(final BuildContext context) => CustomPaint(
        painter: _VerticalLinearDividerPainter(),
        size: const Size(20, 60),
      );
}

class _VerticalLinearDividerPainter extends CustomPainter {
  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = UiColors.mediumLight.withOpacity(0.5)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const triangleSize = 8.0;
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    // Draw top line
    canvas
      ..drawLine(
        Offset(centerX, 0),
        Offset(centerX, centerY - triangleSize),
        paint,
      )
      // Draw bottom line
      ..drawLine(
        Offset(centerX, centerY + triangleSize),
        Offset(centerX, size.height),
        paint,
      );

    // Draw triangle
    final path = Path()
      ..moveTo(centerX, centerY - triangleSize)
      ..lineTo(centerX - triangleSize / 2, centerY)
      ..lineTo(centerX, centerY + triangleSize)
      ..lineTo(centerX + triangleSize / 2, centerY)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant final CustomPainter oldDelegate) => false;
}

class UiTriangle extends StatelessWidget {
  const UiTriangle({
    super.key,
    this.size = 5.0,
    this.quarterTurns = 0,
    this.color,
  });
  final int quarterTurns;
  final double size;
  final Color? color;

  @override
  Widget build(final BuildContext context) => RotatedBox(
        quarterTurns: quarterTurns,
        child: CustomPaint(
          painter: _TrianglePainter(
            size: size,
            color: color ?? UiColors.mediumLight.withOpacity(0.5),
          ),
          size: Size(size * 2, size),
        ),
      );
}

class _TrianglePainter extends CustomPainter {
  _TrianglePainter({
    required this.size,
    required this.color,
  });

  final double size;
  final Color color;

  @override
  void paint(final Canvas canvas, final Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height / 2)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height / 2)
      ..lineTo(size.width / 2, size.height)
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
