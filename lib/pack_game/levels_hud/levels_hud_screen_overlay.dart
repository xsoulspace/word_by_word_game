import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'levels_hud_screen_overlay_state.dart';

class LevelsHudScreenOverlay extends HookWidget {
  const LevelsHudScreenOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final state = _useStateState(read: context.read);
    return Stack(
      children: [
        Positioned(
          top: 20,
          right: 20,
          child: IconButton(
            onPressed: state.onPause,
            icon: const Icon(Icons.motion_photos_pause_outlined),
          ),
        ),
        if (kDebugMode)
          Positioned(
            top: 60,
            right: 20,
            child: IconButton(
              onPressed: () {
                context.read<MechanicsCollection>().worldTime.pause();
              },
              color: theme.colorScheme.errorContainer,
              icon: const Icon(Icons.motion_photos_pause_outlined),
            ),
          ),
      ],
    );
  }
}
