import 'package:flutter/material.dart';

import '../widgets/game_menu_button.dart';

class SimpleMainMenu extends StatelessWidget {
  const SimpleMainMenu({
    required this.onStart,
    required this.onSettings,
    required this.onExit,
    super.key,
  });
  final VoidCallback onStart;
  final VoidCallback onSettings;
  final VoidCallback onExit;

  @override
  Widget build(final BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameMenuButton(
              label: 'Start Game',
              icon: Icons.play_arrow,
              onPressed: onStart,
            ),
            const SizedBox(height: 20),
            GameMenuButton(
              label: 'Settings',
              icon: Icons.settings,
              onPressed: onSettings,
            ),
            const SizedBox(height: 20),
            GameMenuButton(
              label: 'Exit',
              icon: Icons.exit_to_app,
              onPressed: onExit,
            ),
          ],
        ),
      );
}
