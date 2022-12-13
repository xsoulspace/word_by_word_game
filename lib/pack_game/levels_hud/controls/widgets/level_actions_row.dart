import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/word_composition_row.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

class UILevelActionsRow extends HookWidget {
  const UILevelActionsRow({
    this.leftTopBuilder,
    this.rightTopBuilder,
    final Key? key,
  }) : super(key: key);
  final WidgetBuilder? leftTopBuilder;
  final WidgetBuilder? rightTopBuilder;
  static const kIsCookingEnabled = kDebugMode;
  @override
  Widget build(final BuildContext context) {
    final widgetState = context.read<WordCompositionState>();
    final uiTheme = UiTheme.of(context);
    final mechanicsCollection = context.read<MechanicsCollection>();
    return UICenterFrame(
      onIdea: null,
      onPause: widgetState.onPause,
      leftTopBuilder: leftTopBuilder,
      rightTopBuilder: rightTopBuilder,
      textFieldBuilder: (final context) {
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
            return Column(
              children: [
                Text(S.of(context).selectAction),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (kIsCookingEnabled)
                      UILevelActionChip(
                        baseText: S.of(context).cookFood,
                        levelState: levelState,
                        scoreBuilder: () => mechanicsCollection.score
                            .getScoreForCookFoodByModifier(
                          multiplier: levelState.actionMultiplier,
                        ),
                        type: LevelPlayerActionType.cookFood,
                      ),
                    uiTheme.horizontalBoxes.medium,
                    UILevelActionChip(
                      baseText: S.of(context).refuelStorage,
                      levelState: levelState,
                      scoreBuilder: () => mechanicsCollection.score
                          .getScoreForRefuelStorageByModifier(
                        multiplier: levelState.actionMultiplier,
                      ),
                      type: LevelPlayerActionType.refuelStorage,
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class UILevelActionChip extends StatelessWidget {
  const UILevelActionChip({
    required this.levelState,
    required this.baseText,
    required this.scoreBuilder,
    required this.type,
    super.key,
  });
  final LevelPlayerActionType type;
  final LiveLevelBlocState levelState;
  final ValueGetter<ScoreModel> scoreBuilder;
  final String baseText;
  @override
  Widget build(final BuildContext context) {
    String cost = '';
    final widgetState = context.read<WordCompositionState>();
    final isSelected = levelState.actionType == type;
    if (isSelected) {
      final score = scoreBuilder();
      cost = ' -${score.value.toInt()}';
    }
    return ChoiceChip(
      selected: isSelected,
      onSelected: (final _) => widgetState.onSelectActionType(type),
      label: Text(
        '$baseText'
        '${isSelected ? cost : ""}',
      ),
    );
  }
}
