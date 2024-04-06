import 'package:flutter/material.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/technologies/technologies.dart';

final class DialogController {
  DialogController({
    required this.showLevelLostDialog,
    required this.showLevelWinDialog,
    required this.showLevelWordSuggestionDialog,
    required this.closeDialog,
    required this.closeDialogAndResume,
    required this.showTechnologiesTree,
  });
  final ValueChanged<EndLevelEvent> showLevelLostDialog;
  final ValueChanged<EndLevelEvent> showLevelWinDialog;
  final VoidCallback closeDialog;
  final VoidCallback closeDialogAndResume;
  final VoidCallback showLevelWordSuggestionDialog;
  final ValueChanged<TechnologiesTreeDialogDto> showTechnologiesTree;
}
