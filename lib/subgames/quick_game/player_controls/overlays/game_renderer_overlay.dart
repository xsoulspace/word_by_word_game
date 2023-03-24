import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/global_game_bloc.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/level_bloc.dart';
import 'package:word_by_word_game/pack_core/navigation/app_router.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/overlays/warning_notification.dart';

part 'game_renderer_overlay_state.dart';

class LevelsHudScreenOverlay extends HookWidget {
  const LevelsHudScreenOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final state = _useLevelsHudScreenOverlayState(read: context.read);
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LastWordWidget(),
              uiTheme.verticalBoxes.medium,
              const UIPlayersSideBar(),
            ],
          ),
        ),
        Positioned(
          top: 20,
          right: UIPlayersSideBar.maxWidth + 20,
          left: UIPlayersSideBar.maxWidth + 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Flexible(child: UIWarningNotification()),
            ],
          ),
        ),
        if (kDebugMode && !Envs.isMarketingMode)
          Positioned(
            top: 60,
            right: 20,
            child: IconButton(
              onPressed: () {
                final worldTime = context.read<MechanicsCollection>().worldTime;
                if (worldTime.paused) {
                  worldTime.resume();
                } else {
                  worldTime.pause();
                }
              },
              color: theme.colorScheme.errorContainer,
              icon: const Icon(Icons.motion_photos_pause_outlined),
            ),
          ),
      ],
    );
  }
}
