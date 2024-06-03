import 'package:flutter/material.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/power_bar.dart';

class FocusedObjectBar extends StatelessWidget {
  const FocusedObjectBar({super.key});

  @override
  Widget build(final BuildContext context) => const Column(
        children: [
          UIPowerBar(),
        ],
      );
}
