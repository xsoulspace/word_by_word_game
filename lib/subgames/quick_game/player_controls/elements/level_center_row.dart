import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class UILevelCenterBar extends StatelessWidget {
  const UILevelCenterBar({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final phaseType = context.select<LevelBloc, GamePhaseType>(
      (final s) => s.getLiveState().phaseType,
    );
    final uiTheme = UiTheme.of(context);
    final wordCompositionState = context.read<WordCompositionState>();
    final List<Widget> centerBarChildren;
    final Widget body;
    switch (phaseType) {
      case GamePhaseType.entryWord:
        body = const UiWordCompositionBar();
        centerBarChildren = [
          UiRandomWordIconButton(
            onPressed: wordCompositionState.onOpenSuggestionDialog,
          ),
          const SizedBox(width: 10),
          UiPauseIconButton(onPressed: wordCompositionState.onPause),
        ];
      case GamePhaseType.selectFuel:
        body = Column(
          children: [
            const SizedBox(height: 48),
            const UiFuelBar(),
            if (DeviceRuntimeType.isMobile) const SizedBox(height: 36),
          ],
        );
        centerBarChildren = [
          UiPauseIconButton(onPressed: wordCompositionState.onPause),
        ];
    }

    return Stack(
      children: [
        body,
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 100,
                  ),
                  child: const Center(child: UIMobilePlayerName()),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minWidth: 100,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: centerBarChildren,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 100,
                  ),
                  child: const Center(child: UIMobilePlayerScore()),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
