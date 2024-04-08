import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/level_actions_row.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UiActionFrameSimple extends StatelessWidget {
  const UiActionFrameSimple({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;

    return Column(
      children: [
        Text(
          S.of(context).applyFuelOption,
          style: textTheme.titleMedium,
        ),
        Divider(color: colorScheme.tertiary),
        uiTheme.verticalBoxes.small,
        const UiEnergyCards(),
      ],
    );
  }
}

class UiEnergyCards extends StatelessWidget {
  const UiEnergyCards({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = context.uiTheme;
    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.energyMultiplier != current.energyMultiplier,
      ),
      builder: (final context, final levelState) => TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.selectRefuelOption,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 100),
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (final context, final index) {
              final type = EnergyMultiplierType.values[index];

              return UIEnergyOptionCard(
                levelState: levelState,
                type: type,
              );
            },
            separatorBuilder: (final context, final index) =>
                uiTheme.horizontalBoxes.medium,
            scrollDirection: Axis.horizontal,
            itemCount: EnergyMultiplierType.values.length,
          ),
        ).animate().fadeIn().slideY(begin: 0.1),
      ),
    );
  }
}

class UIEnergyOptionCard extends StatelessWidget {
  const UIEnergyOptionCard({
    required this.levelState,
    required this.type,
    super.key,
  });
  final EnergyMultiplierType type;
  final LevelBlocState levelState;

  @override
  Widget build(final BuildContext context) {
    final (:applyingScore, :compositionState) =
        useApplyingScoreComposable(type: type, context: context);
    // final isAllowedToUse = mechanics.score.checkPlayerAbilityToUseScore(
    //   player: player,
    //   score: applyingScore,
    // );
    // final uiTheme = UiTheme.of(context);
    // final bool isSelected =
    //     isAllowedToUse && levelState.energyMultiplier == type;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    void onApply() {
      compositionState.onPowerSelected(type);
      TutorialFrame.sendOnClickEvent(
        uiKey: TutorialUiItem.selectRefuelOption,
        context: context,
      );
    }

    return UiActionButton(
      onCompleted: onApply,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  '${applyingScore.formattedScore}',
                  style: textTheme.headlineSmall,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  UiAssetHelper.useImagePath(UiIcons.fire.path),
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

({int applyingScore, WordCompositionCubit compositionState})
    useApplyingScoreComposable({
  required final BuildContext context,
  required final EnergyMultiplierType type,
}) {
  final mechanics = context.read<MechanicsCollection>();
  final compositionState = context.read<WordCompositionCubit>();

  final player = context.select<LevelPlayersBloc, PlayerProfileModel>(
    (final bloc) => bloc.state.currentPlayer,
  );
  final applyingScore = mechanics.score
      .getScoreForStorageEnergyByModifier(
        multiplier: type,
        availableScore: player.highscore.score,
      )
      .value
      .toInt();
  return (
    applyingScore: applyingScore,
    compositionState: compositionState,
  );
}
