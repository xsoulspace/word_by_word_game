import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/heat_engine_view.dart';

class CurrentTechnologyButton extends StatelessWidget {
  const CurrentTechnologyButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    final levelCubit = context.watch<LevelBloc>();
    final mechanics = context.read<MechanicsCollection>();
    final technologyCubit = context.watch<TechnologiesCubit>();
    final currentTechnology = technologyCubit.researchingTechnology;
    final dialogController = context.read<DialogController>();
    if (!levelCubit.featuresSettings.isTechnologiesEnabled) {
      return const SizedBox();
    }
    final technologyProgress = technologyCubit.researchingTechnologyProgress;
    final unlockCondition = technologyProgress?.unlockCondition;
    final (:isUnlocked, :percentage, :investedScore, :requiredScore) =
        mechanics.technology.checkIsUnlockedForLanguage(
      unlockCondition: unlockCondition ??
          technologyCubit.researchingTechnology?.unlockCondition,
    );
    var pointsLeft = requiredScore - investedScore;
    pointsLeft = pointsLeft < 0 ? 0 : pointsLeft;
    return UiBaseButton(
      onPressed: () => dialogController
          .showTechnologiesTree(TechnologiesTreeDialogDto.nonSelectable),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          AnimatedProgressBar(
            width: 80,
            height: 42,
            value: percentage,
            backgroundColor: context.colorScheme.primary.withOpacity(0.1),
            color: context.colorScheme.primary.withOpacity(0.6),
            borderRadiusValue: 52,
            border: Border.all(color: context.colorScheme.primary),
          ),
          Positioned(
            left: 6,
            top: 0,
            bottom: 0,
            child: Tooltip(
              message: const LocalizedMap(
                value: {
                  Languages.en: 'Researches',
                  Languages.ru: 'Исследования',
                  Languages.it: 'Ricerche',
                },
              ).getValue(locale),
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Icon(
                  isUnlocked
                      ? CupertinoIcons.lab_flask_solid
                      : CupertinoIcons.lab_flask,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 6,
            top: 0,
            bottom: 4,
            child: Center(
              child: Text(
                requiredScore.formattedScore == 0
                    ? '0 %'
                    : // ignore: lines_longer_than_80_chars
                    '${((investedScore.formattedScore / requiredScore.formattedScore) * 100).toStringAsFixed(0)}%',
                style: context.textThemeBold.titleLarge!.copyWith(
                  color: context.colorScheme.surface.withOpacity(0.9),
                  shadows: [
                    Shadow(
                      blurRadius: 0.2,
                      color: context.colorScheme.tertiary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
