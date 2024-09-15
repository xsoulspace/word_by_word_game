import 'dart:math';

import 'package:flutter/material.dart';

import '../theme/color_palette.dart';
import '../widgets/game_menu_button.dart';
import '../widgets/game_menu_button_painter.dart';

class SimpleMainMenu extends StatelessWidget {
  const SimpleMainMenu({
    required this.onStart,
    required this.onSettings,
    required this.onExit,
    required this.onPlayersAndHighscore,
    required this.onCredits,
    super.key,
  });

  final VoidCallback onStart;
  final VoidCallback onSettings;
  final VoidCallback onExit;
  final VoidCallback onPlayersAndHighscore;
  final VoidCallback onCredits;

  @override
  Widget build(final BuildContext context) {
    const double radius = 130; // Increased radius to fit all buttons
    final List<_MenuButtonData> buttons = [
      _MenuButtonData(
        label: 'Start Game',
        icon: Icons.play_arrow,
        onPressed: onStart,
        styleType: ButtonStyleType.gradient,
        gradientColors: [AppColors.accentGreen, AppColors.accentYellow],
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Settings',
        icon: Icons.settings,
        onPressed: onSettings,
        styleType: ButtonStyleType.outlined,
        borderColor: AppColors.accentYellow,
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Exit',
        icon: Icons.exit_to_app,
        onPressed: onExit,
        styleType: ButtonStyleType.filled,
        color: AppColors.accentGreen,
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Players',
        icon: Icons.scoreboard,
        onPressed: onPlayersAndHighscore,
        styleType: ButtonStyleType.gradient,
        gradientColors: [AppColors.accentYellow, AppColors.accentGreen],
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Credits',
        icon: Icons.info,
        onPressed: onCredits,
        styleType: ButtonStyleType.outlined,
        borderColor: AppColors.accentYellow,
        radius: 30,
      ),
    ];

    return Center(
      child: SizedBox(
        width: radius * 3,
        height: radius * 3,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Central Game Icon
            Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.accentGreen,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: const Icon(
                Icons.gamepad,
                size: 60,
                color: AppColors.buttonText,
              ),
            ),
            // Radial Menu Buttons with Animations
            ..._buildRadialButtons(buttons, radius),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildRadialButtons(
    final List<_MenuButtonData> buttons,
    final double radius,
  ) {
    final double angleBetween = 360 / buttons.length;
    final List<Widget> positionedButtons = [];

    for (int i = 0; i < buttons.length; i++) {
      final double angle = (angleBetween * i - 90) * pi / 180;
      final double x = radius * cos(angle);
      final double y = radius * sin(angle);

      positionedButtons.add(
        Transform.translate(
          offset: Offset(x, y),
          child: GameMenuButton(
            label: buttons[i].label,
            icon: buttons[i].icon,
            onPressed: buttons[i].onPressed,
            styleType: buttons[i].styleType,
            gradientColors: buttons[i].gradientColors,
            borderColor: buttons[i].borderColor,
            color: buttons[i].color,
            radius: buttons[i].radius,
          ),
        ),
      );
    }

    return positionedButtons;
  }
}

class _MenuButtonData {
  _MenuButtonData({
    required this.label,
    required this.icon,
    required this.onPressed,
    required this.styleType,
    required this.radius,
    this.gradientColors,
    this.borderColor,
    this.color,
  });
  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final ButtonStyleType styleType;
  final List<Color>? gradientColors;
  final Color? borderColor;
  final Color? color;
  final double radius;
}
