import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

const kRestAndPrepareBalloonMultiplier = EnergyMultiplierType.m3;
const kBuildObjectMultiplier = EnergyMultiplierType.m3;

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
        builder: (final context, final focused, final onlyFocused) => Row(
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
          context.read<GuiFocusableObjectsNotifier>().startChoosing();
        },
      ),
    );
  }
}

extension TileIdX on TileId {
  String localizedTitle(final Locale locale) => switch (value) {
    // TODO(arenukvern): l10n
    'hot_air_balloon' => 'Hot Air Balloon',
    // TODO(arenukvern): l10n
    'building_tent' => 'Tent',
    'building_water_wind_tower' => 'Wind Water Tower',
    _ => '',
  };
}

class HotAirBaloonActionsView extends StatelessWidget {
  const HotAirBaloonActionsView({super.key});

  @override
  Widget build(final BuildContext context) {
    final isTentUnblocked = context.select<TechnologiesCubit, bool>(
      (final technologiesCubit) => technologiesCubit.isTechLevelUnlocked(
        TechnologyLevelIndex.buildAndSave,
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Gap(12),
        if (isTentUnblocked) const _TentObjectBuildButton(),
      ],
    );
  }
}

class TentActionsView extends StatelessWidget {
  const TentActionsView({super.key});

  @override
  Widget build(final BuildContext context) {
    final isMeasuringTheWindUnblocked = context.select<TechnologiesCubit, bool>(
      (final technologiesCubit) => technologiesCubit.isTechLevelUnlocked(
        TechnologyLevelIndex.measuringTheWind,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Gap(12),
        const _RestActionButton(),
        if (isMeasuringTheWindUnblocked) ...[
          const Gap(12),
          const _WindWaterTowerObjectBuildButton(),
        ],
      ],
    );
  }
}

class _RestActionButton extends StatelessWidget {
  const _RestActionButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final composable = useApplyingScoreComposable(
      type: kBuildObjectMultiplier,
      context: context,
    );
    final applyingScore = composable.applyingScore;
    return Tooltip(
      // TODO(arenukvern): l10n
      message:
          'Adds some power to Hot Air Balloon. '
          '\nBecames last checkpoint, if Hot Air Balloon crashes.',
      child: TextButton.icon(
        onPressed: () => context
            .read<GuiWordCompositionCubit>()
            .onRestAndPrepareBalloon(kRestAndPrepareBalloonMultiplier),
        // TODO(arenukvern): l10n
        // TODO(arenukvern): add object type
        label: Text('Rest (${applyingScore.value.formattedScore})'),
        icon: const Icon(CupertinoIcons.home),
      ),
    );
  }
}

class _TentObjectBuildButton extends StatelessWidget {
  const _TentObjectBuildButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final composable = useApplyingScoreComposable(
      type: kBuildObjectMultiplier,
      context: context,
    );
    final applyingScore = composable.applyingScore;

    return TextButton.icon(
      // TODO(arenukvern): l10n
      label: Text('Build Tent (${applyingScore.value.formattedScore})'),
      // TODO(arenukvern): add icon
      icon: const Icon(CupertinoIcons.hammer),
      onPressed: () => context.read<GuiBuildingNotifier>().startPlacing(
        type: GuiBuildingTypeEnum.tent,
      ),
    );
  }
}

class _WindWaterTowerObjectBuildButton extends StatelessWidget {
  const _WindWaterTowerObjectBuildButton({super.key});

  @override
  Widget build(final BuildContext context) {
    final composable = useApplyingScoreComposable(
      type: kBuildObjectMultiplier,
      context: context,
    );
    final applyingScore = composable.applyingScore;

    return TextButton.icon(
      // TODO(arenukvern): l10n
      label: Text(
        'Build Wind Water Tower (${applyingScore.value.formattedScore})',
      ),
      // TODO(arenukvern): add icon
      icon: const Icon(CupertinoIcons.hammer),
      onPressed: () => context.read<GuiBuildingNotifier>().startPlacing(
        type: GuiBuildingTypeEnum.windWaterTower,
      ),
    );
  }
}
