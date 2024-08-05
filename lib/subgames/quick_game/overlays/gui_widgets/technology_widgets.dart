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
    const width = 80.0;
    if (!levelCubit.featuresSettings.isTechnologiesEnabled) {
      return const SizedBox(width: width);
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
    final borderSide = BorderSide(
      color: context.colorScheme.primary,
    );
    return UiLabledProgressBar(
      tooltipMessage: const {
        Languages.en: 'Technologies tree',
        Languages.ru: 'Дерево технологий',
        Languages.it: 'Albero delle tecnologie',
      },
      icon: Icon(
        isUnlocked ? CupertinoIcons.lab_flask_solid : CupertinoIcons.lab_flask,
        color: Colors.black,
      ),
      // TODO(arenukvern): add tech level
      text: currentTechnology?.index.toString() ?? '0',
      // TODO(arenukvern): there always should be a title
      // title: technologyTitle ??
      //     const LocalizedMap(
      //       value: {
      //         Languages.en: 'Max Level',
      //         Languages.ru: 'Макс. уровень',
      //         Languages.it: 'Livello massimo',
      //       },
      //     ).getValue(locale),

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
      onPressed: () => dialogController
          .showTechnologiesTree(TechnologiesTreeDialogDto.nonSelectable),
      percentage: percentage,
    );
  }
}
