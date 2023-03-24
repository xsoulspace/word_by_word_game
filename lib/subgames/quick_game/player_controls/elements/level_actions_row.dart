import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/player_swither_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_actions_buttons.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UIFuelBar extends HookWidget {
  const UIFuelBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final widgetState = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.actionMultiplier != current.actionMultiplier,
      ),
      builder: (final context, final levelState) {
        if (levelState is! LiveLevelBlocState) {
          return const SizedBox();
        }
        return Container(
          padding: EdgeInsets.symmetric(horizontal: uiTheme.spacing.medium),
          constraints: const BoxConstraints(maxWidth: 300),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: UIMobilePlayerName()),
                  UiPauseIconButton(onPressed: widgetState.onPause),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: UIMobilePlayerScore(),
                    ),
                  ),
                ],
              ),
              uiTheme.verticalBoxes.large,
              const UiFuelFrame(),
            ],
          ),
        );
      },
    );
  }
}

class UiFuelFrame extends StatelessWidget {
  const UiFuelFrame({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.actionMultiplier != current.actionMultiplier,
      ),
      builder: (final context, final levelState) {
        if (levelState is! LiveLevelBlocState) {
          return const SizedBox();
        }
        return TutorialFrame(
          highlightPosition: Alignment.centerLeft,
          uiKey: TutorialUiItem.selectRefuelOption,
          child: Column(
            children: [
              Text(
                S.of(context).applyRefuelOption,
                style: textTheme.titleSmall,
              ),
              uiTheme.verticalBoxes.small,
              ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 100),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (final context, final index) {
                    final type = FuelMultiplierType.values[index];

                    return UIFuelOptionCard(
                      levelState: levelState,
                      type: type,
                    );
                  },
                  separatorBuilder: (final context, final index) =>
                      uiTheme.horizontalBoxes.medium,
                  scrollDirection: Axis.horizontal,
                  itemCount: FuelMultiplierType.values.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class UIFuelOptionCard extends StatelessWidget {
  const UIFuelOptionCard({
    required this.levelState,
    required this.type,
    super.key,
  });
  final FuelMultiplierType type;
  final LiveLevelBlocState levelState;

  @override
  Widget build(final BuildContext context) {
    final mechanics = context.read<MechanicsCollection>();

    final player =
        context.select<LevelPlayersBloc, PlayerProfileModel>((final bloc) {
      final liveState = bloc.getLiveState();
      return liveState.currentPlayer;
    });
    final applyingScore = mechanics.score
        .getScoreForRefuelStorageByModifier(multiplier: type)
        .value
        .toInt();
    final isAllowedToUse = mechanics.score.checkPlayerAbilityToUseScore(
      player: player,
      score: applyingScore,
    );
    final bool isSelected =
        isAllowedToUse && levelState.actionMultiplier == type;

    final widgetState = context.read<WordCompositionState>();
    return Tooltip(
      message: isAllowedToUse ? '' : S.of(context).youDontHaveEnoughPoints,
      child: Card(
        child: InkWell(
          onTap: () {
            widgetState.onSelectActionMultiplier(type);
            TutorialFrame.sendOnClickEvent(
              uiKey: TutorialUiItem.applyAndEndTurnButton,
              context: context,
            );
          },
          child: Text('$applyingScore'),
        ),
      ),
    );
  }
}
