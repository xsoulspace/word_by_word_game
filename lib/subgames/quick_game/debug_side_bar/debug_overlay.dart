import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/subgames/quick_game/debug_side_bar/debug_side_bar.dart';

class DebugOverlay extends StatelessWidget {
  const DebugOverlay({super.key});

  @override
  Widget build(final BuildContext context) => const Stack(
        children: [
          Positioned(
            top: 20,
            right: 0,
            child: UiDebugSideBar(),
          ),
        ],
      );
}
