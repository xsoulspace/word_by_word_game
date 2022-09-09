import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({
    final Key? key,
  }) : super(key: key);
  @override
  Widget build(final BuildContext context) {
    final appRouterController = AppRouterController.use(context.read);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiFilledButton.text(
              text: 'Continue',
              onPressed: appRouterController.toGame,
            ),
            UiFilledButton.text(
              text: 'Start New Game',
              onPressed: appRouterController.toGame,
            ),
          ],
        ),
      ),
    );
  }
}
