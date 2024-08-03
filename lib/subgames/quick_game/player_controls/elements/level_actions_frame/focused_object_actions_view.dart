import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';

class SwitchFocusButton extends StatelessWidget {
  const SwitchFocusButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final focusedObject = levelPlayersBloc.focusedObject;
    return Tooltip(
      // TODO(arenukvern): add score
      // TODO(arenukvern): l10n
      message: 'Click to go into Building or Hot Air Balloon',
      child: UiBaseButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // TODO(arenukvern): add focused object image as icon
            const Icon(Icons.center_focus_strong),
            const Gap(6),
            // TODO(arenukvern): l10n
            Flexible(
              child: Text(
                'Switch Focus (${focusedObject.tileId.value})',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
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
          context.read<GuiFocusableObjectsNotifier>().startChoosing();
        },
      ),
    );
  }
}

class HotAirBaloonActionsView extends StatelessWidget {
  const HotAirBaloonActionsView({super.key});

  @override
  Widget build(final BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(12),
          _BuildObjectButton(),
        ],
      );
}

const kBuildObjectMultiplier = EnergyMultiplierType.m3;

class _BuildObjectButton extends StatelessWidget {
  const _BuildObjectButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final composable = useApplyingScoreComposable(
      type: kBuildObjectMultiplier,
      context: context,
    );
    final applyingScore = composable.applyingScore;

    return TextButton.icon(
      // TODO(arenukvern): l10n
      // TODO(arenukvern): add score
      label: Text('Build Tent (${applyingScore.value.formattedScore})'),
      // TODO(arenukvern): add icon
      icon: const Icon(CupertinoIcons.hammer),
      onPressed: () => context
          .read<GuiBuildingNotifier>()
          .startPlacing(type: GuiBuildingTypeEnum.tent),
    );
  }
}

class TentActionsView extends StatelessWidget {
  const TentActionsView({super.key});

  @override
  Widget build(final BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(12),
          _BuildObjectButton(),
        ],
      );
}
