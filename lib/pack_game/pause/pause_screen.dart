import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

part 'pause_screen_state.dart';

class PauseScreen extends StatelessWidget {
  const PauseScreen({
    final Key? key,
  }) : super(key: key);
  @override
  Widget build(final BuildContext context) {
    final appRouterController = AppRouterController.use(context.read);
    final state = _usePauseScreenState(read: context.read);
    // TODO(arenukvern): check local storage for an id.
    // TODO(arenukvern): check web url for an id.
    const isContinueVisible = false;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isContinueVisible,
              child: UiFilledButton.text(
                text: 'Continue',
                onPressed: state.onContinue,
              ),
            ),
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
