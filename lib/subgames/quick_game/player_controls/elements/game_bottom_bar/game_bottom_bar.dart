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
            if (DeviceRuntimeType.isMobile)
              uiTheme.verticalBoxes.extraSmall
            else
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
    final constraints = switch (persistentFormFactors.width) {
      WidthFormFactor.desktop ||
      WidthFormFactor.tablet =>
        const BoxConstraints(maxWidth: 500),
      WidthFormFactor.mobile || WidthFormFactor.xs => BoxConstraints(
          maxWidth: persistentFormFactors.screenSize.width,
        )
    };
    final uiTheme = UiTheme.of(context);

    return CardFrostedBackground(
      padding: EdgeInsets.only(
        top: 2,
        bottom: DeviceRuntimeType.isMobile ? 0.0 : uiTheme.spacing.medium,
      ),
      constraints: constraints,
      child: Builder(builder: builder),
    );
  }
}
