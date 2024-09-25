import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboards.dart';

export 'word_widgets/word_widgets.dart';

part 'word_composition_bar.freezed.dart';
part 'word_composition_bar_state.dart';

class UiWordCompositionBar extends StatelessWidget {
  const UiWordCompositionBar({
    super.key,
    this.rightSlot,
  });
  final Widget? rightSlot;
  @override
  Widget build(final BuildContext context) => TutorialFrame(
        highlightPosition: Alignment.topCenter,
        uiKey: TutorialUiItem.wordField,
        child: WordField(
          controller: context.read<GuiWordCompositionCubit>().wordController,
          switcherButtonAlignment: KeyboardSwitcherButtonAlignment.left,
          rightSlot: rightSlot,
        ),

        // hintText: S.of(context).hintAddEnding,
      );
}
