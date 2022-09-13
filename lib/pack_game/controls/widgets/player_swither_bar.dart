import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

// TODO(arenukvern): listen  diDto.levelPlayersBloc changes
/// (changed from empty or loading to the live state)
///
class PlayerSwitcher extends HookWidget {
  const PlayerSwitcher({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<LevelPlayersBloc, LevelPlayersBlocState>(
      builder: (final context, final state) {
        final effectiveState = state;
        if (effectiveState is! LiveLevelPlayersBlocState) {
          return const SizedBox();
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(effectiveState.currentPlayerId)],
        );
      },
    );
  }
}
