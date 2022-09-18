import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'pause_screen_state.dart';

class PauseScreen extends HookWidget {
  const PauseScreen({
    final Key? key,
  }) : super(key: key);
  @override
  Widget build(final BuildContext context) {
    final appRouterController = AppRouterController.use(context.read);
    final state = _usePauseScreenState(read: context.read);
    // TODO(arenukvern): check local storage for an id.
    final routeState = context.watch<RouteState>();
    final routeArgs = LevelRouteArgs.fromJson(routeState.route.parameters);
    final levelId = routeArgs.levelId;
    final isContinueVisible = levelId.isNotEmpty;
    final uiTheme = UiTheme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isContinueVisible,
              child: UiFilledButton.text(
                text: 'Continue',
                onPressed: () => state.onContinue(id: levelId),
              ),
            ),
            uiTheme.verticalBoxes.large,
            UiFilledButton.text(
              text: 'Start New Game',
              onPressed: appRouterController.toAllLevel,
            ),
          ],
        ),
      ),
    );
  }
}
