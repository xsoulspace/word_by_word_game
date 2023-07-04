import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
import 'package:word_by_word_game/subgames/quick_game/players_side_bar/players_side_bar.dart';

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
        Stack(
          children: [
            Positioned(
              left: 0,
              top: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (DeviceRuntimeType.isMobile) const SizedBox(height: 24),
                  const LastWordWidget().animate().fadeIn().slideX(begin: -0.1),
                  uiTheme.verticalBoxes.medium,
                  const UIPlayersSideBar(),
                ],
              ),
            ),
            if (kDebugMode && !Envs.isMarketingMode)
              Positioned(
                top: 60,
                right: 20,
                child: IconButton(
                  onPressed: () {
                    final worldTime =
                        context.read<MechanicsCollection>().worldTime;
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
        ),
        const Positioned(
          top: 20,
          right: 20,
          left: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: UIWarningNotification()),
            ],
          ),
        ),
      ],
    );
  }
}
