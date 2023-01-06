import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/player_swither_bar.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/word_actions_buttons.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/word_composition_row.dart';

class UIMobileLevelActionsRow extends HookWidget {
  const UIMobileLevelActionsRow({super.key});

  @override
  Widget build(final BuildContext context) {
    final widgetState = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.actionMultiplier != current.actionMultiplier ||
            previous.actionType != current.actionType,
      ),
      builder: (final context, final levelState) {
        if (levelState is! LiveLevelBlocState) {
          return const SizedBox();
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: uiTheme.spacing.medium),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: UiActionFrame(),
                  ),
                  uiTheme.horizontalBoxes.large,
                  const UiMobileEffectFrame()
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

class UIDesktopLevelActionsRow extends HookWidget {
  const UIDesktopLevelActionsRow({super.key});
  @override
  Widget build(final BuildContext context) {
    final widgetState = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.actionMultiplier != current.actionMultiplier ||
            previous.actionType != current.actionType,
      ),
      builder: (final context, final levelState) {
        if (levelState is! LiveLevelBlocState) {
          return const SizedBox();
        }
        return Container(
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: uiTheme.spacing.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const UIMobilePlayerName(),
                  UiPauseIconButton(onPressed: widgetState.onPause),
                  const UIMobilePlayerScore(),
                ],
              ),
              uiTheme.verticalBoxes.medium,
              Container(
                padding: EdgeInsets.all(uiTheme.spacing.medium),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(uiTheme.circularRadius.small),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Flexible(
                      child: UiActionFrame(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class UiActionFrame extends StatelessWidget {
  const UiActionFrame({super.key});
  static const kIsCookingEnabled = kDebugMode;

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.actionMultiplier != current.actionMultiplier ||
            previous.actionType != current.actionType,
      ),
      builder: (final context, final levelState) {
        if (levelState is! LiveLevelBlocState) {
          return const SizedBox();
        }
        return TutorialFrame(
          highlightPosition: Alignment.centerRight,
          uiKey: TutorialUiItem.selectActionFrame,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(S.of(context).selectAction),
              uiTheme.verticalBoxes.medium,
              Wrap(
                spacing: uiTheme.spacing.medium,
                runSpacing: uiTheme.spacing.medium,
                children: [
                  if (kIsCookingEnabled)
                    UILevelActionChip(
                      baseText: S.of(context).cookFood,
                      levelState: levelState,
                      type: LevelPlayerActionType.cookFood,
                    ),
                  TutorialFrame(
                    highlightPosition: Alignment.topCenter,
                    uiKey: TutorialUiItem.refuelActionButton,
                    child: UILevelActionChip(
                      baseText: S.of(context).refuelStorage,
                      levelState: levelState,
                      type: LevelPlayerActionType.refuelStorage,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class UiDesktopEffectFrame extends StatelessWidget {
  const UiDesktopEffectFrame({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 200),
      child: BlocBuilder<LevelBloc, LevelBlocState>(
        buildWhen: LevelBloc.useCheckStateEqualityBuilder(
          checkLiveState: (final previous, final current) =>
              previous.actionMultiplier != current.actionMultiplier ||
              previous.actionType != current.actionType,
        ),
        builder: (final context, final levelState) {
          if (levelState is! LiveLevelBlocState) {
            return const SizedBox();
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).effect,
                style: textTheme.titleSmall,
              ),
              uiTheme.verticalBoxes.small,
              Row(
                children: LevelActionMultiplierType.values.map(
                  (final type) {
                    return UILevelActionMultiplierChip(
                      levelState: levelState,
                      type: type,
                    );
                  },
                ).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}

class UiMobileEffectFrame extends StatelessWidget {
  const UiMobileEffectFrame({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: LevelBloc.useCheckStateEqualityBuilder(
        checkLiveState: (final previous, final current) =>
            previous.actionMultiplier != current.actionMultiplier ||
            previous.actionType != current.actionType,
      ),
      builder: (final context, final levelState) {
        if (levelState is! LiveLevelBlocState) {
          return const SizedBox();
        }
        return TutorialFrame(
          highlightPosition: Alignment.centerLeft,
          uiKey: TutorialUiItem.selectEffectFrame,
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).effect,
                  style: textTheme.titleSmall,
                ),
                uiTheme.verticalBoxes.small,
                ...LevelActionMultiplierType.values.map(
                  (final type) {
                    return UILevelActionMultiplierChip(
                      levelState: levelState,
                      type: type,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class UILevelActionChip extends StatelessWidget {
  const UILevelActionChip({
    required this.levelState,
    required this.baseText,
    required this.type,
    super.key,
  });
  final LevelPlayerActionType type;
  final LiveLevelBlocState levelState;
  final String baseText;
  @override
  Widget build(final BuildContext context) {
    final widgetState = context.read<WordCompositionState>();
    final isSelected = levelState.actionType == type;
    return ChoiceChip(
      selected: isSelected,
      onSelected: (final _) => widgetState.onSelectActionType(type),
      label: Text(
        baseText,
      ),
    );
  }
}

class UILevelActionMultiplierChip extends StatelessWidget {
  const UILevelActionMultiplierChip({
    required this.levelState,
    required this.type,
    super.key,
  });
  final LevelActionMultiplierType type;
  final LiveLevelBlocState levelState;
  @override
  Widget build(final BuildContext context) {
    final widgetState = context.read<WordCompositionState>();
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
    return Tooltip(
      message: isAllowedToUse ? '' : S.of(context).youDontHaveEnoughPoints,
      child: ChoiceChip(
        selected: isSelected,
        onSelected: !isAllowedToUse
            ? null
            : (final _) => widgetState.onSelectActionMultiplier(type),
        label: Text('$applyingScore'),
      ),
    );
  }
}
