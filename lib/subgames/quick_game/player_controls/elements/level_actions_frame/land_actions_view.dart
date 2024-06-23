import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class LandActionsView extends StatelessWidget {
  const LandActionsView({super.key});

  @override
  Widget build(final BuildContext context) {
    final buildingNotifier = context.watch<GuiBuildingNotifier>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Tooltip(
          // TODO(arenukvern): l10n
          message: 'Click to go into Building or Hot Air Balloon',
          child: TextButton.icon(
            icon: const Icon(Icons.center_focus_strong),
            // TODO(arenukvern): l10n
            label: const Text('Switch Focus'),
            onPressed: () {
              /// hide bottom bar
              ///
              /// Show Possible to focus panel (horizontal list)
              /// with squares
              ///
              /// NM - depending from distance use different cose
              /// for switching
              ///
              /// Save/Restore FCO to data models
              /// Make PA dependable from FCO
            },
          ),
        ),
        const Gap(12),
        TextButton.icon(
          // TODO(arenukvern): l10n
          // TODO(arenukvern): add score
          label: const Text('Build'),
          icon: const Icon(CupertinoIcons.hammer),
          onPressed: () =>
              buildingNotifier.startPlacing(type: GuiBuildingTypeEnum.tent),
        ),
      ],
    );
  }
}
