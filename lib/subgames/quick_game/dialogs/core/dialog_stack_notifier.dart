part of 'dialog_stack.dart';

class _DialogStackDiDto {
  _DialogStackDiDto.use(final Locator read)
      : globalGameBloc = read(),
        tutorialBloc = read();
  final GlobalGameBloc globalGameBloc;
  final TutorialBloc tutorialBloc;
}

class DialogStackNotifier extends ChangeNotifier {
  DialogStackNotifier(final BuildContext context)
      : dto = _DialogStackDiDto.use(context.read) {
    unawaited(_tutorialSubscriber.onLoad());
  }
  static DialogController getDialogController(final BuildContext context) =>
      context.read<DialogStackNotifier>().dialogController;
  late final DialogController dialogController = (
    showLevelLostDialog: _showLevelLostDialog,
    closeDialog: _closeDialog,
    showLevelWinDialog: _showLevelWinDialog,
    showLevelWordSuggestionDialog: _showLevelWordSuggestionDialog,
    showTechnologiesTree: _showTechnologiesTree,
    closeDialogAndResume: onResume,
    showTechLevelAchieveDialog: _showTechLevelAchieveDialog,
  );
  late final _tutorialSubscriber = _TutorialSubscriber(
    diDto: dto,
    onTutorialChanged: _onTutorialChanged,
  );
  final _DialogStackDiDto dto;
  GameDialogType _dialogType = GameDialogType.none;

  GameDialogType get dialogType => _dialogType;
  bool get isWinLoseDialog => switch (dialogType) {
        GameDialogType.levelLost || GameDialogType.levelWin => true,
        GameDialogType.none ||
        GameDialogType.technologiesTree ||
        GameDialogType.levelWordSuggestion ||
        GameDialogType.tutorialBool ||
        GameDialogType.tutorialOk ||
        GameDialogType.techLevelAchieved =>
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

  void _showLevelLostDialog(final EndLevelEvent event) {
    endLevelEvent = event;
    dialogType = GameDialogType.levelLost;
  }

  Future<void> _showLevelWinDialog(final EndLevelEvent event) async {
    endLevelEvent = event;
    dialogType = GameDialogType.levelWin;
  }

  void onRestartContinueLevel() {
    unawaited(
      dto.globalGameBloc.onLevelEnd(
        event: endLevelEvent,
        isPaused: false,
      ),
    );

    _closeDialog();
  }

  /// used to stop game from running and show levels list
  void onExitLevel() {
    unawaited(
      dto.globalGameBloc.onLevelEnd(
        event: endLevelEvent,
        isPaused: true,
      ),
    );

    _closeDialog();
  }

  void onResume() {
    _closeDialog();
    _resume();
  }

  void _showLevelWordSuggestionDialog() {
    dialogType = GameDialogType.levelWordSuggestion;
    _pause();
  }

  void _showTechnologiesTree() {
    dialogType = GameDialogType.technologiesTree;
    _pause();
  }

  void _showTechLevelAchieveDialog(final TechnologyLevelIndex levelIndex) {
    dialogType = GameDialogType.techLevelAchieved;
    _pause();
  }

  void _pause() => dto.globalGameBloc.dto.mechanics.worldTime.pause();
  void _resume() => dto.globalGameBloc.dto.mechanics.worldTime.resume();

  void _closeDialog() {
    dialogType = GameDialogType.none;
    endLevelEvent = GameEvent.nonPassedEndLevel;
  }

  void _onTutorialChanged(final TutorialBlocState tutorialState) {
    if (tutorialState is! TutorialBlocStateLive) {
      if (dialogType.name.contains('tutorial')) {
        _closeDialog();
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
    dialogType = GameDialogType.tutorialOk;
  }

  void _showTutorialBoolDialog() {
    dialogType = GameDialogType.tutorialBool;
  }
}

class _TutorialSubscriber implements Loadable, Disposable {
  _TutorialSubscriber({
    required this.diDto,
    required this.onTutorialChanged,
  });
  final _DialogStackDiDto diDto;
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
