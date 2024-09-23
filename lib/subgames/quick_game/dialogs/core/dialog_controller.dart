part of 'dialog_stack.dart';

class _DialogControllerDiDto {
  _DialogControllerDiDto.use(final Locator read)
      : globalGameBloc = read(),
        tutorialBloc = read();
  final GlobalGameBloc globalGameBloc;
  final TutorialBloc tutorialBloc;
}

class DialogController extends ChangeNotifier {
  DialogController(final BuildContext context)
      : dto = _DialogControllerDiDto.use(context.read) {
    unawaited(_tutorialSubscriber.onLoad());
  }
  //  DialogController get dialogController => (
  //   showLevelLostDialog: _showLevelLostDialog,
  //   closeDialog: _closeDialog,
  //   showLevelWinDialog: _showLevelWinDialog,
  //   showLevelWordSuggestionDialog: _showLevelWordSuggestionDialog,
  //   showTechnologiesTree: _showTechnologiesTree,
  //   closeDialogAndResume: onResume,
  //   showTechLevelAchieveDialog: _showTechLevelAchieveDialog,
  // );
  late final _tutorialSubscriber = _TutorialSubscriber(
    diDto: dto,
    onTutorialChanged: _onTutorialChanged,
  );
  final _DialogControllerDiDto dto;
  GameDialogType _dialogType = GameDialogType.none;

  GameDialogType get dialogType => _dialogType;
  bool get isWinLoseDialog => switch (dialogType) {
        GameDialogType.gameLevelLost || GameDialogType.gameLevelWin => true,
        GameDialogType.none ||
        GameDialogType.gameTechnologiesTree ||
        GameDialogType.gameLevelWordSuggestion ||
        GameDialogType.gameTutorialBool ||
        GameDialogType.gameTutorialOk ||
        GameDialogType.gameTechLevelAchieved ||
        GameDialogType.menuSettings ||
        GameDialogType.menuPlayersAndHighscore
          // ||
          // GameDialogType.menuCredits ||
          // GameDialogType.menuAdventure ||
          // GameDialogType.menuQuickGame
          =>
          false,
      };

  set dialogType(final GameDialogType dialogType) {
    _dialogType = dialogType;
    notifyListeners();
  }

  @override
  Future<void> dispose() async {
    await _tutorialSubscriber.dispose();
    super.dispose();
  }

  EndLevelEvent endLevelEvent = GameEvent.nonPassedEndLevel;

  void showLevelLostDialog(final EndLevelEvent event) {
    endLevelEvent = event;
    dialogType = GameDialogType.gameLevelLost;
  }

  Future<void> showLevelWinDialog(final EndLevelEvent event) async {
    endLevelEvent = event;
    dialogType = GameDialogType.gameLevelWin;
  }

  void onRestartContinueLevel() {
    unawaited(
      dto.globalGameBloc.onLevelEnd(
        event: endLevelEvent,
        isPaused: false,
      ),
    );

    closeDialog();
  }

  /// used to stop game from running and show levels list
  void onExitLevel() {
    unawaited(
      dto.globalGameBloc.onLevelEnd(
        event: endLevelEvent,
        isPaused: true,
      ),
    );

    closeDialog();
  }

  void closeDialogAndResume() {
    closeDialog();
    _resume();
  }

  void showLevelWordSuggestionDialog() {
    dialogType = GameDialogType.gameLevelWordSuggestion;
    _pause();
  }

  void showTechnologiesTree() {
    dialogType = GameDialogType.gameTechnologiesTree;
    _pause();
  }

  void showTechLevelAchieveDialog() {
    dialogType = GameDialogType.gameTechLevelAchieved;
    _pause();
  }

  void _pause() => dto.globalGameBloc.dto.mechanics.worldTime.pause();
  void _resume() => dto.globalGameBloc.dto.mechanics.worldTime.resume();

  void closeDialog() {
    dialogType = GameDialogType.none;
    endLevelEvent = GameEvent.nonPassedEndLevel;
  }

  void _onTutorialChanged(final TutorialBlocState tutorialState) {
    if (tutorialState is! TutorialBlocStateLive) {
      if (dialogType.name.contains('tutorial')) {
        closeDialog();
      }
      return;
    }

    final actions = tutorialState.tutorial.currentEvent?.completeActions;
    if (actions == null) return;
    for (final action in actions) {
      if (action.isCompleted) continue;
      switch (action.action) {
        case TutorialCompleteAction.onBoolOptionSelected:
          if (action.uiItem == TutorialUiItem.tutorialBoolDialog) {
            _showTutorialBoolDialog();
            return;
          }
        case TutorialCompleteAction.onClick:
          if (action.uiItem == TutorialUiItem.tutorialOkDialog) {
            _showTutorialOkDialog();
            return;
          }
        case TutorialCompleteAction.onEdit:
        case TutorialCompleteAction.idle:
      }
    }
  }

  void _showTutorialOkDialog() {
    dialogType = GameDialogType.gameTutorialOk;
  }

  void _showTutorialBoolDialog() {
    dialogType = GameDialogType.gameTutorialBool;
  }

  void openPlayersAndHighscore() {
    _pause();
    dialogType = GameDialogType.menuPlayersAndHighscore;
  }

  void openSettings() {
    _pause();
    dialogType = GameDialogType.menuSettings;
  }
}

class _TutorialSubscriber implements Loadable, Disposable {
  _TutorialSubscriber({
    required this.diDto,
    required this.onTutorialChanged,
  });
  final _DialogControllerDiDto diDto;
  final ValueChanged<TutorialBlocState> onTutorialChanged;
  StreamSubscription<TutorialBlocState>? _tutorialSubscription;

  @override
  Future<void> onLoad() async {
    _tutorialSubscription =
        diDto.tutorialBloc.stream.distinct().listen(onTutorialChanged);
  }

  @override
  Future<void> dispose() async {
    await _tutorialSubscription?.cancel();
  }
}
