import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class UIPowerBar extends StatelessWidget {
  const UIPowerBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final playerParams = context.select<LevelPlayersBloc, PlayerCharacterModel>(
      (final value) => value.state.playerCharacter,
    );
    final powers = playerParams.balloonPowers;
    final size = MediaQuery.sizeOf(context);
    final currentPower = playerParams.balloonPowers.power;
    final maxPower = playerParams.balloonParams.maxPower;
    final power =
        clampDouble(currentPower, 0, playerParams.balloonParams.maxPower);
    final powerRatio = power / maxPower;
    final maxWidth = clampDouble(size.width * 0.5, 160, 180);
    return GestureDetector(
      onTap: () {
        context.read<DebugCubit>().tryOpenDebugPane();
      },
      child: Tooltip(
        message:
            // TODO(arenukvern): l10n
            'Power. This force creates the lift force that moves the balloon upwards.',
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Gap(4),
            Icon(
              Icons.fireplace,
              color: context.colorScheme.error,
            ),
            const Gap(4),
            TutorialFrame(
              highlightPosition: MediaQuery.sizeOf(context).width >
                      WidthFormFactor.mobileTutorialMaxWidth
                  ? Alignment.centerRight
                  : Alignment.bottomCenter,
              uiKey: TutorialUiItem.baloonPower,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.elliptical(52, 52),
                      ),
                      color: context.colorScheme.error.withOpacity(0.3),
                      border: Border.all(color: context.colorScheme.error),
                    ),
                    height: 24,
                    width: maxWidth,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: AnimatedContainer(
                      duration: 20.milliseconds,
                      width: powerRatio * maxWidth,
                      decoration: BoxDecoration(
                        color: context.colorScheme.error.withOpacity(0.6),
                        borderRadius: const BorderRadius.all(
                          Radius.elliptical(52, 52),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 8,
                    bottom: 0,
                    child: Center(
                      child: Text(
                        '${playerParams.balloonParams.maxPower ~/ kScoreFactor} / ${powers.power ~/ kScoreFactor}',
                        style: context.textThemeBold.bodyMedium?.copyWith(
                          color:
                              context.colorScheme.background.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
