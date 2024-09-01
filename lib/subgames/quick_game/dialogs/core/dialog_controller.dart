import 'package:word_by_word_game/common_imports.dart';

typedef DialogController = ({
  ValueChanged<EndLevelEvent> showLevelLostDialog,
  ValueChanged<EndLevelEvent> showLevelWinDialog,
  VoidCallback closeDialog,
  VoidCallback closeDialogAndResume,
  VoidCallback showLevelWordSuggestionDialog,
  VoidCallback showTechnologiesTree,
  ValueChanged<TechnologyLevelIndex> showTechLevelAchieveDialog,
});
