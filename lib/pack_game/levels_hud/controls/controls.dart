import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/widgets.dart';

class ControlsWidget extends StatelessWidget {
  const ControlsWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final Widget child;
    switch (uiTheme.persistentFormFactors.width) {
      case WidthFormFactor.desktop:
      case WidthFormFactor.tablet:
        child = const _DesktopControlsWidget();
        break;
      case WidthFormFactor.mobile:
        child = const _MobileControlsWidget();

        break;
    }
    return child;
  }
}

class _DesktopControlsWidget extends StatelessWidget {
  const _DesktopControlsWidget();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);

    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WordCompositionBackground(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: uiTheme.spacing.extraLarge,
                  vertical: uiTheme.spacing.large,
                ),
                child: const WordCompositionRow(),
              ),
            ),
            uiTheme.verticalBoxes.extraLarge,
            UIMobileActionsFrame(
              children: [
                AddWordToDictionaryButton(
                  onPressed: () {},
                ),
                uiTheme.verticalBoxes.extraSmall,
                ToNextPhaseButton(
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        Positioned(
          bottom: uiTheme.spacing.medium,
          left: uiTheme.spacing.medium,
          child: const DesktopPlayerSwitcher(),
        )
      ],
    );
  }
}

class _MobileControlsWidget extends StatelessWidget {
  const _MobileControlsWidget();

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(devicePixelRatio: 1),
      child: Column(
        children: [
          WordCompositionBackground(
            child: WordCompositionRow(
              leftTopBuilder: (final context) {
                return const MobilePlayerName();
              },
              rightTopBuilder: (final context) {
                return const MobilePlayerScore();
              },
            ),
          ),
          uiTheme.verticalBoxes.extraSmall,
          UIMobileActionsFrame(
            children: [
              AddWordToDictionaryButton(
                onPressed: () {},
              ),
              uiTheme.verticalBoxes.medium,
              ToNextPhaseButton(
                onPressed: () {},
              ),
            ],
          ),
          uiTheme.verticalBoxes.medium,
        ],
      ),
    );
  }
}

class WordCompositionBackground extends StatelessWidget {
  const WordCompositionBackground({required this.child, super.key});
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);

    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final livePlayersBloc = levelPlayersBloc.state;
    if (livePlayersBloc is! LiveLevelPlayersBlocState) return const SizedBox();

    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.backgroundColor.withOpacity(0.95),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: livePlayersBloc.currentPlayer.color.withOpacity(0.03),
          borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
        ),
        child: child,
      ),
    );
  }
}
