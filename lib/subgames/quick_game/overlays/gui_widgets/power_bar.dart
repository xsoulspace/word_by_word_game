import 'dart:ui';

import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/gui_widgets.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/animated_progress_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';

class UIPowerBar extends StatelessWidget with TechLevelMixin {
  const UIPowerBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final isAdvancedGame = context.select<LevelBloc, bool>(
      (final cubit) => cubit.featuresSettings.isAdvancedGame,
    );
    final isPlaying = context.select<StatesStatusesCubit, bool>(
      (final cubit) => cubit.state.levelStateStatus == LevelStateStatus.playing,
    );
    if (!isPlaying) return const SizedBox.shrink();
    final playerParams = context.select<LevelPlayersBloc, PlayerCharacterModel>(
      (final value) => value.state.playerCharacter,
    );
    final locale = useLocale(context);
    final powers = playerParams.balloonPowers;
    final currentPower = playerParams.balloonPowers.power;
    final maxPower = playerParams.balloonParams.maxPower;
    final power = clampDouble(
      currentPower,
      0,
      playerParams.balloonParams.maxPower,
    );
    final powerRatio = power / maxPower;
    final borderSide = BorderSide(
      color: context.colorScheme.error.withOpacity(0.3),
    );
    final focusedObject = context.watch<LevelPlayersBloc>().focusedObject;
    const isUsingPoints = true;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TutorialFrame(
          highlightPosition:
              MediaQuery.sizeOf(context).width >
                  WidthFormFactor.mobileTutorialMaxWidth
              ? Alignment.centerRight
              : Alignment.bottomCenter,
          uiKey: TutorialUiItem.baloonPower,
          child: UiLabledProgressBar(
            percentageDelay: 550.milliseconds,
            tooltipMessage: {
              uiLanguages.en:
                  // ignore: lines_longer_than_80_chars
                  'Power. This force creates the lift force that moves the balloon upwards.',
              uiLanguages.ru:
                  // ignore: lines_longer_than_80_chars
                  'Сила. Создает подъёмную силу, которая перемещает баллон вверх.',
              uiLanguages.it:
                  // ignore: lines_longer_than_80_chars
                  'Potenza. Questa forza crea la forza che si muove il balsamo in su.',
            },
            text: isUsingPoints
                ? (powers.power ~/ kScoreFactor).toString()
                : '',
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
                UiAssetHelper.useImagePath(UiAssetsIcons.fire.path),
                width: 32,
                height: 32,
              ),
            ),
          ),
        ),
        if (isAdvancedGame) ...[
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
            constraints: const BoxConstraints(maxWidth: 150),
            child: UiBaseButton(
              onPressed: () {
                context.read<GuiFocusableObjectsNotifier>().startChoosing();
              },
              builder: (final context, final focused, final onlyFocused) =>
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Gap(6),
                          Flexible(
                            child: Text(
                              // TODO(arenukvern): l10n
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
                        UiAssetHelper.useImagePath(UiAssetsIcons.fire.path),
                        width: 32,
                        height: 32,
                      ),
                    ],
                  ),
            ),
          ),
          const Gap(6),
          const TechProgressBar(),
        ],
      ],
    );
  }
}
