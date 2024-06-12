import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug_cubit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/heat_engine_view.dart';

class UIPowerBar extends StatelessWidget {
  const UIPowerBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
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
    final maxHeight = clampDouble(size.width * 0.3, 80, 100);
    final powerWidth = maxHeight / 1.1;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(12),
          Tooltip(
            message: '${const LocalizedMap(
              value: {
                Languages.en:
                    // ignore: lines_longer_than_80_chars
                    'Power. This force creates the lift force that moves the balloon upwards.',
                Languages.ru:
                    // ignore: lines_longer_than_80_chars
                    'Сила. Создает подъёмную силу, которая перемещает баллон вверх.',
                Languages.it:
                    // ignore: lines_longer_than_80_chars
                    'Potenza. Questa forza crea la forza che si muove il balsamo in su.',
              },
            ).getValue(locale)} \n ${powers.power ~/ kScoreFactor}/${playerParams.balloonParams.maxPower ~/ kScoreFactor}',
            child: TutorialFrame(
              highlightPosition: MediaQuery.sizeOf(context).width >
                      WidthFormFactor.mobileTutorialMaxWidth
                  ? Alignment.centerRight
                  : Alignment.bottomCenter,
              uiKey: TutorialUiItem.baloonPower,
              child: Stack(
                children: [
                  AnimatedProgressBar(
                    width: maxHeight,
                    height: 32,
                    value: powerRatio,
                    backgroundColor: context.colorScheme.error.withOpacity(0.3),
                    color: context.colorScheme.error.withOpacity(0.6),
                    borderRadiusValue: 52,
                    border: Border.all(color: context.colorScheme.error),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        UiAssetHelper.useImagePath(UiIcons.fire.path),
                        width: 32,
                        height: 32,
                      ),
                      Text(
                        '${(powers.power / playerParams.balloonParams.maxPower * 100).toInt()}%',
                        style: context.textThemeBold.titleLarge!.copyWith(
                          color: context.colorScheme.surface.withOpacity(0.9),
                          shadows: [
                            Shadow(
                              blurRadius: 0.2,
                              color: context.colorScheme.onSurface
                                  .withOpacity(0.5),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Gap(8),
          GestureDetector(
            onTap: () {
              context.read<DebugCubit>().tryOpenDebugPane();
            },
            child: // TODO(arenukvern): l10n
                Text(
              'Hot Air Balloon',
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium!.copyWith(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
