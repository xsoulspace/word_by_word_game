import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class LandActionsView extends StatelessWidget {
  const LandActionsView({super.key});

  @override
  Widget build(final BuildContext context) {
    final buildingNotifier = context.watch<GuiBuildingNotifier>();
    return Column(
      children: [
        const Text('Land Actions'),
        if (buildingNotifier.isPlacing) const Text('Placing'),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {
                if (buildingNotifier.isPlacing) {
                  buildingNotifier.cancelPlacing();
                } else {
                  buildingNotifier.startPlacing(type: GuiBuildingTypeEnum.tent);
                }
              },
              icon: const Icon(Icons.home_outlined),
              // TODO(arenukvern): l10n
              label: const Text('Build Tent'),
            ),
          ],
        ),
      ],
    );
  }
}
