import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'levels_hud_screen_overlay_state.dart';

class LevelsHudScreenOverlay extends StatelessWidget {
  const LevelsHudScreenOverlay({super.key});

  @override
  Widget build(final BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 20,
          right: 20,
          child: IconButton(
            onPressed: () {
              context.read<MechanicsCollection>().worldTime.pause();
              final id = context.read<LevelBloc>().getLiveState().id;
              AppRouterController.use(context.read).toPause(id: id);
            },
            icon: const Icon(Icons.pause),
          ),
        ),
      ],
    );
  }
}
