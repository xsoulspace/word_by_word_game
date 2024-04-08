import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_advanced_frame.dart';

class CurrentTechnologyButton extends StatelessWidget {
  const CurrentTechnologyButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final levelCubit = context.watch<LevelBloc>();
    final mechanics = context.read<MechanicsCollection>();
    final technologyCubit = context.watch<TechnologiesCubit>();
    final currentTechnology = technologyCubit.researchingTechnology;
    final dialogController = context.read<DialogController>();
    if (!levelCubit.state.featuresSettings.isTechnologiesEnabled) {
      return const SizedBox();
    }
    final technologyProgress = technologyCubit.researchingTechnologyProgress;
    final unlockCondition = technologyProgress?.unlockCondition;
    final (:isUnlocked, :percentage) = () {
      if (unlockCondition == null) return (isUnlocked: false, percentage: 0.0);
      return mechanics.technology.checkIsUnlockedForLanguage(
        unlockCondition: unlockCondition,
      );
    }();
    return TextButton.icon(
      onPressed: () => dialogController
          .showTechnologiesTree(TechnologiesTreeDialogDto.nonSelectable),
      icon: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Icon(
          isUnlocked
              ? CupertinoIcons.lab_flask_solid
              : CupertinoIcons.lab_flask,
        ),
      ),
      label: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentTechnology?.title.getValue() ??
                const LocalizedMap(
                  value: {
                    Languages.en: 'Not researching',
                    Languages.ru: 'Не исследуется',
                    Languages.it: 'Non studiata',
                  },
                ).getValue(),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 100),
            child: UiTechnologyLinearProgress(percentage: percentage),
          ),
        ],
      ),
    );
  }
}
