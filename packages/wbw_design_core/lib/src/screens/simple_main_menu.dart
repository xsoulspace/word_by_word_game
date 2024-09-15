import 'dart:math';

import 'package:flutter/material.dart';

import '../theme/color_palette.dart';
import '../widgets/game_menu_button.dart';
import '../widgets/game_menu_button_painter.dart';

class SimpleMainMenu extends StatefulWidget {
  const SimpleMainMenu({
    required this.onStart,
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

  final VoidCallback onStart;
  final VoidCallback onSettings;
  final VoidCallback onExit;
  final VoidCallback onPlayersAndHighscore;
  final VoidCallback onCredits;
  final VoidCallback onContinueQuick;
  final VoidCallback onNewQuick;
  final VoidCallback onContinueAdventure;
  final VoidCallback onChooseAdventure;

  @override
  _SimpleMainMenuState createState() => _SimpleMainMenuState();
}

class _SimpleMainMenuState extends State<SimpleMainMenu>
    with SingleTickerProviderStateMixin {
  bool _isStartMenuExpanded = false;
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _opacityAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    _scaleAnimation =
        Tween<double>(begin: 0.8, end: 1).animate(_animationController);

    _rotationAnimation =
        Tween<double>(begin: 0, end: 2 * pi).animate(_animationController);
  }

  void _toggleStartMenu() {
    setState(() {
      _isStartMenuExpanded = !_isStartMenuExpanded;
      if (_isStartMenuExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double radius = screenSize.width < 600
        ? 100
        : 160; // Adjust radius based on screen width
    final List<_MenuButtonData> buttons = [
      _MenuButtonData(
        label: 'Start Game',
        icon: Icons.play_arrow,
        onPressed: _toggleStartMenu,
        styleType: ButtonStyleType.gradient,
        gradientColors: [AppColors.accentGreen, AppColors.accentYellow],
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Settings',
        icon: Icons.settings,
        onPressed: widget.onSettings,
        styleType: ButtonStyleType.outlined,
        borderColor: AppColors.accentYellow,
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Exit',
        icon: Icons.exit_to_app,
        onPressed: widget.onExit,
        styleType: ButtonStyleType.filled,
        color: AppColors.accentGreen,
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Players',
        icon: Icons.scoreboard,
        onPressed: widget.onPlayersAndHighscore,
        styleType: ButtonStyleType.gradient,
        gradientColors: [AppColors.accentYellow, AppColors.accentGreen],
        radius: 40,
      ),
      _MenuButtonData(
        label: 'Credits',
        icon: Icons.info,
        onPressed: widget.onCredits,
        styleType: ButtonStyleType.outlined,
        borderColor: AppColors.accentYellow,
        radius: 30,
      ),
    ];

    final List<_MenuButtonData> startSubButtons = [
      _MenuButtonData(
        label: 'Continue Quick',
        icon: Icons.play_arrow,
        onPressed: widget.onContinueQuick,
        styleType: ButtonStyleType.filled,
        color: AppColors.accentGreen,
        radius: 30,
      ),
      _MenuButtonData(
        label: 'New Quick',
        icon: Icons.add,
        onPressed: widget.onNewQuick,
        styleType: ButtonStyleType.gradient,
        gradientColors: [AppColors.accentYellow, AppColors.accentGreen],
        radius: 30,
      ),
      _MenuButtonData(
        label: 'Continue Adventure',
        icon: Icons.explore,
        onPressed: widget.onContinueAdventure,
        styleType: ButtonStyleType.outlined,
        borderColor: AppColors.accentYellow,
        radius: 30,
      ),
      _MenuButtonData(
        label: 'Choose Adventure',
        icon: Icons.map,
        onPressed: widget.onChooseAdventure,
        styleType: ButtonStyleType.gradient,
        gradientColors: [AppColors.accentGreen, AppColors.accentYellow],
        radius: 30,
      ),
    ];

    return Center(
      child: SizedBox(
        width: radius * 2,
        height: radius * 2,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Rotating Central Game Icon
            RotationTransition(
              turns: _rotationAnimation,
              child: Container(
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
                // child: Image.asset(
                //   'assets/images/hot_air_balloon.png',
                //   fit: BoxFit.contain,
                // ),
                child: const Icon(Icons.air),
              ),
            ),
            // Radial Menu Buttons with Animations
            ..._buildRadialButtons(buttons, radius),
            // Start Game Submenu with Animated Transition
            if (_isStartMenuExpanded)
              FadeTransition(
                opacity: _opacityAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: _buildStartSubMenu(startSubButtons, radius),
                ),
              ),
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

  Widget _buildStartSubMenu(
    final List<_MenuButtonData> subButtons,
    final double radius,
  ) {
    const double subRadius = 80;
    final double angleBetween = 360 / subButtons.length;
    final List<Widget> subMenuButtons = [];

    for (int i = 0; i < subButtons.length; i++) {
      final double angle = (angleBetween * i - 90) * pi / 180;
      final double x = subRadius * cos(angle);
      final double y = subRadius * sin(angle);

      subMenuButtons.add(
        Transform.translate(
          offset: Offset(x, y),
          child: GameMenuButton(
            label: subButtons[i].label,
            icon: subButtons[i].icon,
            onPressed: subButtons[i].onPressed,
            styleType: subButtons[i].styleType,
            gradientColors: subButtons[i].gradientColors,
            borderColor: subButtons[i].borderColor,
            color: subButtons[i].color,
            radius: subButtons[i].radius,
          ),
        ),
      );
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        // Overlay Background to Dim Main Menu
        GestureDetector(
          onTap: _toggleStartMenu,
          child: Container(
            width: radius * 2,
            height: radius * 2,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        // Submenu Buttons
        ...subMenuButtons,
        // Central 'Back' Button
        Transform.translate(
          offset: const Offset(0, 0),
          child: GameMenuButton(
            label: 'Back',
            icon: Icons.arrow_back,
            onPressed: _toggleStartMenu,
            styleType: ButtonStyleType.outlined,
            borderColor: AppColors.accentYellow,
            radius: 30,
          ),
        ),
      ],
    );
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
