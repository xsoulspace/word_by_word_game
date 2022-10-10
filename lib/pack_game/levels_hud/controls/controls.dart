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

    final spacing = uiTheme.spacing;
    final levelBloc = context.watch<LevelBloc>();
    final levelState = levelBloc.state;
    if (levelState is! LiveLevelBlocState) return const SizedBox();

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
      ),
      constraints: const BoxConstraints(maxWidth: 700),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DesktopPlayerSwitcher(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: spacing.large,
                vertical: spacing.medium,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  LastWordWidget(),
                  WordCompositionRow(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MobileControlsWidget extends StatelessWidget {
  const _MobileControlsWidget();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);

    final spacing = uiTheme.spacing;
    final levelBloc = context.watch<LevelBloc>();
    final levelState = levelBloc.state;
    if (levelState is! LiveLevelBlocState) return const SizedBox();
    // TODO(arenukvern): remove after debugging
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const MobilePlayerSwitcher(),
              const Spacer(),
              const LastWordWidget(),
              uiTheme.horizontalBoxes.large,
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: spacing.small,
            ),
            child: const WordCompositionRow(),
          ),
        ],
      ),
    );
  }
}
