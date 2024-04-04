import 'package:flutter/material.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class DialogController {
  DialogController({
    required this.showLevelLostDialog,
    required this.showLevelWinDialog,
    required this.showLevelWordSuggestionDialog,
    required this.closeDialog,
    required this.closeDialogAndResume,
    required this.showTechnologiesTree,
  });
  ValueChanged<EndLevelEvent> showLevelLostDialog;
  ValueChanged<EndLevelEvent> showLevelWinDialog;
  VoidCallback closeDialog;
  VoidCallback closeDialogAndResume;
  VoidCallback showLevelWordSuggestionDialog;
  void Function({bool selectable}) showTechnologiesTree;
}
