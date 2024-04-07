import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';

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
    final isUnlocked = unlockCondition != null &&
        mechanics.technology.checkIsUnlockedInSomeLanguages(
          unlockCondition: unlockCondition,
        );
    return TextButton.icon(
      onPressed: () => dialogController
          .showTechnologiesTree(TechnologiesTreeDialogDto.nonSelectable),
      icon: Icon(
        isUnlocked ? CupertinoIcons.lab_flask_solid : CupertinoIcons.lab_flask,
      ),
      // TODO(arenukvern): l10n
      label: Text(currentTechnology?.title.getValue() ?? 'Not researching'),
    );
  }
}
