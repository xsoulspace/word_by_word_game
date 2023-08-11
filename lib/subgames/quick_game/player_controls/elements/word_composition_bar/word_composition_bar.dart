import 'dart:async';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboards.dart';

export 'word_widgets/word_widgets.dart';

part 'word_composition_bar_state.dart';

class UiWordCompositionBar extends StatelessWidget {
  const UiWordCompositionBar({super.key});
  @override
  Widget build(final BuildContext context) => TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.enterWordPhaseFrame,
        child: WordField(
          controller: context.read<WordCompositionState>().wordController,
        ),

        // uiKey: TutorialUiItem.enterWordRight,
        // hintText: S.of(context).hintAddEnding,
        // onSubmitted: state.onToSelectActionPhase,
      );
}
