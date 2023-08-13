// ignore_for_file: invalid_annotation_target

part of 'models.dart';

/// The goal of the game is to reach far end of the level with air balloon.

enum TutorialUiItem {
  pauseIconButton,

  /// If written word is not found, then click Add To Dictionary button
  /// to add this word to dictionary.
  /// Be careful with the word, as it will be saved and cannot be removed.
  ///
  /// onClick: anywhere else
  addToDictionaryButton,

  /// To end the word entering phase click Confirm Word button.
  ///
  /// You will earn points for the word which will be added to your score
  /// and used in the next phase.
  ///
  /// onClick: confirmWordButton
  confirmWordButton,

  /// If you have enough points you can remove letter.
  /// Every letter will cost some points.
  ///
  /// onClick: anywhere else
  removeLetterButton,

  /// If you stuck, you can try word suggestions.
  ///
  /// onClick: anywhere else
  suggestWordButton,

  /// To start a game enter your first word in this text field.
  /// You can enter a part of word in this text field to combine full word.
  /// onEdit: enterWordRight
  enterWordRight,

  /// Second phase of the turn is to choose an action and its effect.
  ///
  /// onClick: anywhere else
  actionPhaseFrame,

  /// First phase is to enter new word.
  ///
  /// onClick | onEdit: anywhere else
  enterWordPhaseFrame,

  /// After choosing the action and effect, click Apply & End Turn Button.
  /// It will start new turn for another player (if he exists),
  /// or new turn for your player.
  ///
  /// onClick: applyAndEndTurnButton
  applyAndEndTurnButton,

  /// Current player is displayed here.
  ///
  /// onClick: anywhere else
  yourNameLabel,

  /// Score of current player displayed here.
  ///
  /// onClick: anywhere else
  yourScoreLabel,

  /// Here you can see much fuel left in the air balloon.
  ///
  /// onClick: anywhere else
  gameFuelIndicator,

  /// New meaning:
  /// Just refueling.
  ///
  /// Old meaning:
  ///
  /// Action is something that you do. For example: refueling
  ///
  /// onClick: anywhere else
  /// Effect is how much of the action will be applied. For example:
  /// If you choose refueling and effect 200 - air balloon will
  /// receive 200 points of fuel.
  ///
  /// onClick: anywhere else
  selectRefuelOption,
  tutorialBoolDialog,
  tutorialOkDialog,

  /// dialog wihout buttons
  /// Use this dialog if you expect other action
  anchoredIdleDialog,
  anchoredOkDialog
}

enum TutorialCompleteAction {
  onClick,
  onEdit,
  idle,
  onBoolOptionSelected,
}

enum TutorialGameEffectName {
  pauseGame,
  resumeGame,
  completeCurrentTutorial,
}
