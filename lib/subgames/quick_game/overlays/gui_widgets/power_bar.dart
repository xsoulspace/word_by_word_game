import 'dart:ui';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug_cubit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/gui_widgets.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/heat_engine_view.dart';

class UIPowerBar extends StatelessWidget {
  const UIPowerBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final playerParams = context.select<LevelPlayersBloc, PlayerCharacterModel>(
      (final value) => value.state.playerCharacter,
    );
    final locale = useLocale(context);
    final powers = playerParams.balloonPowers;
    final size = MediaQuery.sizeOf(context);
    final currentPower = playerParams.balloonPowers.power;
    final maxPower = playerParams.balloonParams.maxPower;
    final power =
        clampDouble(currentPower, 0, playerParams.balloonParams.maxPower);
    final powerRatio = power / maxPower;
    final maxHeight = clampDouble(size.width * 0.3, 80, 100);
    final borderSide = BorderSide(
      color: context.colorScheme.error.withOpacity(0.3),
    );
    final focusedObject = context.watch<LevelPlayersBloc>().focusedObject;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TutorialFrame(
          highlightPosition: MediaQuery.sizeOf(context).width >
                  WidthFormFactor.mobileTutorialMaxWidth
              ? Alignment.centerRight
              : Alignment.bottomCenter,
          uiKey: TutorialUiItem.baloonPower,
          child: UiLabledProgressBar(
            //  \n ${powers.power ~/ kScoreFactor}/${playerParams.balloonParams.maxPower ~/ kScoreFactor}',
            tooltipMessage: const {
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
            width: 80,
            iconPadding: EdgeInsets.zero,
            border: Border(
              bottom: borderSide,
              left: borderSide,
              right: borderSide,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.elliptical(8, 8),
              bottomRight: Radius.elliptical(8, 8),
            ),
            backgroundColor: context.colorScheme.error.withOpacity(0.3),
            borderColor: context.colorScheme.error,
            filledColor: context.colorScheme.error.withOpacity(0.6),
            textColor: context.colorScheme.surface.withOpacity(0.9),
            percentage: powerRatio,
            icon: GestureDetector(
              onTap: () => context.read<DebugCubit>().tryOpenDebugPane(),
              child: Image.asset(
                UiAssetHelper.useImagePath(UiIcons.fire.path),
                width: 32,
                height: 32,
              ),
            ),
          ),
        ),
        const Gap(6),
        AnimatedContainer(
          duration: 350.milliseconds,
          decoration: BoxDecoration(
            color: context.colorScheme.surface.withOpacity(0.4),
            border: Border(
              bottom: borderSide,
              left: borderSide,
              right: borderSide,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.elliptical(8, 8),
              bottomRight: Radius.elliptical(8, 8),
            ),
          ),
          constraints: const BoxConstraints(
            maxWidth: 150,
          ),
          child: UiBaseButton(
            onPressed: () {
              context.read<GuiFocusableObjectsNotifier>().startChoosing();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Gap(6),
                    Flexible(
                      child: // TODO(arenukvern): l10n
                          Text(
                        focusedObject.tileId.localizedTitle(locale),
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyMedium!.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const Gap(6),
                  ],
                ),
                // TODO(arenukvern): replace with focused object icon
                Image.asset(
                  UiAssetHelper.useImagePath(UiIcons.fire.path),
                  width: 32,
                  height: 32,
                ),
              ],
            ),
          ),
        ),
        const Gap(6),
        const CurrentTechnologyButton(),
      ],
    );
  }
}
