import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';

import '../word_composition_bar/word_composition_bar.dart';

part 'game_bottom_bar_background.dart';
part 'game_bottom_bar_desktop.dart';
part 'game_bottom_bar_mobile.dart';

class GameBottomBar extends HookWidget {
  const GameBottomBar({super.key});

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final state = useWordCompositionState(read: context.read);
    final Widget child;
    switch (uiTheme.persistentFormFactors.width) {
      case WidthFormFactor.desktop:
      case WidthFormFactor.tablet:
        child = const DesktopGameBottomBarWidget();
        break;
      case WidthFormFactor.mobile:
        child = const MobileGameBottomBarWidget();
        break;
    }
    return Provider(
      create: (final context) => state,
      builder: (final context, final cacheChild) => child,
    );
  }
}
