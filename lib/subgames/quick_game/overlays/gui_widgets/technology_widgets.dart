import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';

class CurrentTechnologyButton extends StatelessWidget {
  const CurrentTechnologyButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final levelCubit = context.watch<LevelBloc>();
    final technologyCubit = context.watch<TechnologiesCubit>();
    final currentTechnology = technologyCubit.researchingTechnology;
    final dialogController = context.read<DialogController>();
    if (!levelCubit.state.featuresSettings.isTechnologiesEnabled) {
      return const SizedBox();
    }
    return TextButton.icon(
      onPressed: () =>
          dialogController.showTechnologiesTree(selectable: kDebugMode),

      icon: Icon(
        currentTechnology?.unlockCondition.getIsUnlockedForLanguage() == true
            ? CupertinoIcons.lab_flask_solid
            : CupertinoIcons.lab_flask,
      ),
      // TODO(arenukvern): l10n
      label: Text(currentTechnology?.title.getValue() ?? 'Not researching'),
    );
  }
}
