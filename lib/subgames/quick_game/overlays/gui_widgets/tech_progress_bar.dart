import 'package:flutter/cupertino.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/gui_widgets.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/animated_progress_bar.dart';

class TechProgressBar extends StatelessWidget {
  const TechProgressBar({super.key});

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
    ) = technologiesCubit
        .getCurrentLevel();
    final dialogController = context.read<DialogController>();
    const width = 80.0;
    if (!levelCubit.featuresSettings.isTechnologiesEnabled) {
      return const SizedBox(width: width);
    }
    var pointsLeft = 0;
    pointsLeft = pointsLeft < 0 ? 0 : pointsLeft;
    final borderSide = BorderSide(color: context.colorScheme.primary);
    final isMaxLevel = lastLevelIndex == TechnologyLevelIndex.maxLevel;
    final nextScore = isMaxLevel
        ? 0
        : scoresByLevel[lastLevelIndex.index].formattedScore;
    final percentageDelay = 1.seconds;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UiLabledProgressBar(
          hiddenWhenNotHovered: false,
          tooltipMessage: {
            languages.en: 'Technologies Progress',
            languages.ru: 'Прогресс технологий',
            languages.it: 'Progresso tecnologie',
          },
          icon: const Icon(CupertinoIcons.lab_flask, color: Colors.black),
          text: isMaxLevel ? 'Max' : lastLevelIndex.index.toString(),
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
          percentage: isMaxLevel
              ? 1
              : (nextScore - scoreLeftForNextLevel.value.formattedScore) /
                    nextScore,
          percentageDelay: percentageDelay,
        ),
        if (isMaxLevel)
          UiTextCounter(
            value: scoreLeftForNextLevel.value.formattedScore,
            style: context.textTheme.labelLarge?.copyWith(
              color: context.colorScheme.primary.withOpacity(0.6),
            ),
            delay: percentageDelay,
          )
        else
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              UiTextCounter(
                value: nextScore - scoreLeftForNextLevel.value.formattedScore,
                style: context.textTheme.labelLarge?.copyWith(
                  color: context.colorScheme.primary.withOpacity(0.6),
                ),
                delay: percentageDelay,
              ),
              Text(
                '/$nextScore',
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.onSurface.withOpacity(0.6),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
