import 'package:flutter/cupertino.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/heat_engine_view.dart';

class CurrentTechnologyButton extends StatelessWidget {
  const CurrentTechnologyButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final levelCubit = context.watch<LevelBloc>();
    final technologiesCubit = context.watch<TechnologiesCubit>();
    final (
      levelIndex: lastLevelIndex,
      :scoreLeftForNextLevel,
      :technologies,
      :title,
      :scoresByLevel,
    ) = technologiesCubit.getCurrentLevel();
    final dialogController = context.read<DialogController>();
    const width = 80.0;
    if (!levelCubit.featuresSettings.isTechnologiesEnabled) {
      return const SizedBox(width: width);
    }
    var pointsLeft = 0;
    pointsLeft = pointsLeft < 0 ? 0 : pointsLeft;
    final borderSide = BorderSide(
      color: context.colorScheme.primary,
    );
    final nextScore = scoresByLevel[lastLevelIndex].formattedScore;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UiLabledProgressBar(
          hiddenWhenNotHovered: false,
          tooltipMessage: const {
            Languages.en: 'Technologies Progress',
            Languages.ru: 'Прогресс технологий',
            Languages.it: 'Progresso tecnologie',
          },
          icon: const Icon(
            CupertinoIcons.lab_flask,
            color: Colors.black,
          ),
          text: lastLevelIndex.toString(),
          backgroundColor: context.colorScheme.primary.withOpacity(0.1),
          filledColor: context.colorScheme.primary.withOpacity(0.4),
          textColor: context.colorScheme.onPrimary,
          borderColor: context.colorScheme.primary,
          width: width,
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
          onPressed: dialogController.showTechnologiesTree,
          percentage: (nextScore - scoreLeftForNextLevel.value.formattedScore) /
              nextScore,
        ),
        Builder(
          builder: (final context) => Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      '${nextScore - scoreLeftForNextLevel.value.formattedScore}',
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.primary.withOpacity(0.6),
                  ),
                ),
                TextSpan(
                  text: '/$nextScore',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: context.colorScheme.onSurface.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
