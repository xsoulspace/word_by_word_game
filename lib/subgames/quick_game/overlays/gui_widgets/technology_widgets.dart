import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
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
    final technologyTitle = currentTechnology?.title.getValue(locale);
    return UiLabledProgressBar(
      tooltipMessage: {
        Languages.en: 'Researches $technologyTitle',
        Languages.ru: 'Исследования $technologyTitle',
        Languages.it: 'Ricerche $technologyTitle',
      },
      backgroundColor: context.colorScheme.primary.withOpacity(0.1),
      filledColor: context.colorScheme.primary.withOpacity(0.4),
      textColor: context.colorScheme.onPrimary,
      borderColor: context.colorScheme.primary,
      icon: Icon(
        isUnlocked ? CupertinoIcons.lab_flask_solid : CupertinoIcons.lab_flask,
        color: Colors.black,
      ),
      onPressed: () => dialogController
          .showTechnologiesTree(TechnologiesTreeDialogDto.nonSelectable),
      percentage: percentage,
    );
  }
}
