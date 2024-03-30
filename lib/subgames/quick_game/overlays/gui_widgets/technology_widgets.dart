import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';

class CurrentTechnologyButton extends StatelessWidget {
  const CurrentTechnologyButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final technologyCubit = context.watch<TechnologiesCubit>();
    final state = technologyCubit.state;
    final currentTechnology = state.researchingTechnology;
    return TextButton.icon(
      onPressed: () {
        context.read<DialogController>().showTechnologiesTree();
      },
      icon: Icon(
        currentTechnology == null
            ? CupertinoIcons.lab_flask
            : CupertinoIcons.lab_flask_solid,
      ),
      label: Text(currentTechnology?.title.getValue() ?? 'Select research'),
    );
  }
}
