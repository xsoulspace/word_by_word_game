import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UiFuelBar extends HookWidget {
  const UiFuelBar({super.key});

  @override
  Widget build(final BuildContext context) =>
      BlocBuilder<LevelBloc, LevelBlocState>(
        buildWhen: LevelBloc.useCheckStateEqualityBuilder(
          checkLiveState: (final previous, final current) =>
              previous.actionMultiplier != current.actionMultiplier,
        ),
        builder: (final context, final levelState) => const UiFuelFrame(),
      );
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
      builder: (final context, final levelState) => Column(
        children: [
          Text(
            S.of(context).applyFuelOption,
            style: textTheme.titleMedium,
          ),
          Divider(color: theme.colorScheme.tertiary),
          uiTheme.verticalBoxes.small,
          TutorialFrame(
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
        ],
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
    final mechanics = context.read<MechanicsCollection>();

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
    // final isAllowedToUse = mechanics.score.checkPlayerAbilityToUseScore(
    //   player: player,
    //   score: applyingScore,
    // );
    // final uiTheme = UiTheme.of(context);
    // final bool isSelected =
    //     isAllowedToUse && levelState.actionMultiplier == type;
    final theme = Theme.of(context);
    // final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final widgetState = context.read<WordCompositionCubit>();
    // final borderRadius = BorderRadius.circular(100);
    void onApply() {
      widgetState.onSelectActionMultiplier(type);
      TutorialFrame.sendOnClickEvent(
        uiKey: TutorialUiItem.selectRefuelOption,
        context: context,
      );
    }

    return Tooltip(
      message: '',
      child: UiActionButton(
        onCompleted: onApply,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    '${applyingScore ~/ kScoreFactor}',
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
                    UiAssetHelper.useImagePath(
                      UiIcons.fire.path,
                    ),
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UiActionButton extends StatefulWidget {
  const UiActionButton({
    required this.onCompleted,
    required this.child,
    super.key,
  });
  final Widget child;
  final VoidCallback onCompleted;

  @override
  State<UiActionButton> createState() => _UiActionButtonState();
}

class _UiActionButtonState extends State<UiActionButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isOnHold = false;

  bool get isOnHold => _isOnHold;

  set isOnHold(final bool isHolding) {
    _isOnHold = isHolding;
    if (mounted) setState(() {});
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final colorScheme = theme.colorScheme;
    final surfaces = theme.extension<SurfaceColorScheme>()!;
    final borderRadius = _isOnHold
        ? BorderRadius.all(uiTheme.circularRadius.medium)
        : BorderRadius.all(uiTheme.circularRadius.medium);

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTapDown: (final _) => isOnHold = true,
            onTapUp: (final _) {
              isOnHold = false;
              widget.onCompleted();
            },
            onTapCancel: () => isOnHold = false,
            child: FocusableActionDetector(
              onShowHoverHighlight: (final value) {
                _isHovered = value;
                setState(() {});
              },
              mouseCursor: SystemMouseCursors.click,
              child: Transform.scale(
                scale: _isOnHold ? 0.9 : 1,
                child: AnimatedContainer(
                  duration: 50.milliseconds,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: () {
                      if (_isOnHold) return surfaces.surface5;
                      if (_isHovered) return surfaces.surface1;

                      return surfaces.surface3;
                    }(),
                    border: Border.all(
                      color: colorScheme.tertiary,
                      width: _isHovered ? 2.5 : 1,
                    ),
                    borderRadius: borderRadius,
                  ),
                  margin: EdgeInsets.only(
                    top: () {
                      if (_isOnHold) return 8.toDouble();
                      if (_isHovered) return 4.toDouble();
                      return 8.toDouble();
                    }(),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: widget.child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
