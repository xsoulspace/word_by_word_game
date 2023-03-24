import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';

class ControlsWidget extends HookWidget {
  const ControlsWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final state = useWordCompositionState(read: context.read);
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
    return Provider(
      create: (final context) => state,
      builder: (final context, final cacheChild) => child,
    );
  }
}

class _DesktopControlsWidget extends StatelessWidget {
  const _DesktopControlsWidget();

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);
    final state = context.read<WordCompositionState>();

    return WordCompositionBackground(
      padding: EdgeInsets.symmetric(
        horizontal: uiTheme.spacing.medium,
      ).copyWith(
        top: 10,
        bottom: 12,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const UIDesktopLevelCenterRow(),
          uiTheme.horizontalBoxes.medium,
          const UIDesktopActions(),
        ],
      ),
    );
  }
}

class _MobileControlsWidget extends StatelessWidget {
  const _MobileControlsWidget();

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final state = context.read<WordCompositionState>();
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(devicePixelRatio: 1),
      child: WordCompositionBackground(
        padding: EdgeInsets.symmetric(
          vertical: DeviceRuntimeType.isMobile ? 0.0 : uiTheme.spacing.medium,
        ),
        child: Column(
          children: [
            const UIMobileLevelCenterRow(),
            if (DeviceRuntimeType.isMobile)
              uiTheme.verticalBoxes.extraSmall
            else
              uiTheme.verticalBoxes.medium,
            const UIMobileActions(),
          ],
        ),
      ),
    );
  }
}

class WordCompositionBackground extends StatelessWidget {
  const WordCompositionBackground({
    required this.child,
    this.padding,
    this.constraints,
    super.key,
  });
  final Widget child;
  final EdgeInsets? padding;
  final BoxConstraints? constraints;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = UiTheme.of(context);

    final levelPlayersBloc = context.watch<LevelPlayersBloc>();
    final livePlayersBloc = levelPlayersBloc.state;
    if (livePlayersBloc is! LiveLevelPlayersBlocState) return const SizedBox();

    return Container(
      constraints: constraints ?? const BoxConstraints(),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container().frosted(),
          ),
          Container(
            padding: padding,
            decoration: BoxDecoration(
              color: ElevationOverlay.applySurfaceTint(
                livePlayersBloc.currentPlayer.color,
                Colors.white,
                30,
              ).withOpacity(0.1),
              borderRadius: BorderRadius.all(uiTheme.circularRadius.medium),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
