import 'package:flutter/material.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/ephemeral.dart';

class DialogController {
  DialogController({
    required this.showLevelLostDialog,
    required this.showLevelWinDialog,
    required this.showLevelWordSuggestionDialog,
    required this.closeDialog,
  });
  void Function(EndLevelEvent endLevelEvent) showLevelLostDialog;
  VoidCallback showLevelWinDialog;
  VoidCallback closeDialog;
  VoidCallback showLevelWordSuggestionDialog;
}
