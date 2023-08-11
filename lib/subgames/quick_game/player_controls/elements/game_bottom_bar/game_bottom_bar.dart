import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

part 'card_frosted_background.dart';

class GameBottomBar extends HookWidget {
  const GameBottomBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final state = useWordCompositionState(read: context.read);

    return Provider.value(
      value: state,
      updateShouldNotify: (final previous, final current) => false,
      builder: (final context, final cacheChild) => _Card(
        builder: (final context) => Column(
          children: [
            const UILevelCenterBar(),
            uiTheme.verticalBoxes.medium,
            const UiWordActions(),
          ],
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.builder,
  });
  final WidgetBuilder builder;
  @override
  Widget build(final BuildContext context) {
    final persistentFormFactors = UiPersistentFormFactors.of(context);
    final screenWidth = persistentFormFactors.screenSize.width;
    final screenContstraints = BoxConstraints(maxWidth: screenWidth);
    BoxConstraints constraints;
    if (DeviceRuntimeType.isMobile) {
      constraints = screenContstraints;
    } else {
      constraints = screenWidth < 370
          ? screenContstraints
          : const BoxConstraints(maxWidth: 365);
    }

    final uiTheme = UiTheme.of(context);

    return SafeArea(
      top: false,
      child: CardFrostedBackground(
        padding: EdgeInsets.only(
          top: 2,
          bottom: uiTheme.spacing.medium,
        ),
        constraints: constraints,
        child: Builder(builder: builder),
      ),
    );
  }
}
