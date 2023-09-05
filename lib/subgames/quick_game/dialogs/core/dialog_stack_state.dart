part of 'dialog_stack.dart';

class _DialogStackDiDto {
  _DialogStackDiDto.use(final Locator read)
      : globalGameBloc = read(),
        tutorialBloc = read();
  final GlobalGameBloc globalGameBloc;
  final TutorialBloc tutorialBloc;
}

DialogStackState _useDialogStackState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_DialogStackState',
        state: DialogStackState(diDto: _DialogStackDiDto.use(read)),
      ),
    );

class DialogStackState extends LifeState with ChangeNotifier {
  DialogStackState({
    required this.diDto,
  });
  late final dialogController = DialogController(
    showLevelLostDialog: _showLevelLostDialog,
    closeDialog: _closeDialog,
    showLevelWinDialog: _showLevelWinDialog,
    showLevelWordSuggestionDialog: _showLevelWordSuggestionDialog,
  );
  late final _tutorialSubscriber = _TutorialSubscriber(
    diDto: diDto,
    onTutorialChanged: _onTutorialChanged,
  );
  final _DialogStackDiDto diDto;
  GameDialogType _dialogType = GameDialogType.none;

  GameDialogType get dialogType => _dialogType;
  bool get isWinLoseDialog {
    switch (dialogType) {
      case GameDialogType.levelLost:
      case GameDialogType.levelWin:
        return true;
      case GameDialogType.none:
      case GameDialogType.levelWordSuggestion:
      case GameDialogType.tutorialBool:
      case GameDialogType.tutorialOk:
    }
    return false;
  }

  set dialogType(final GameDialogType dialogType) {
    _dialogType = dialogType;
    notifyListeners();
  }

  @override
  void initState() {
    super.initState();
    unawaited(_tutorialSubscriber.onLoad());
  }

  @override
  Future<void> dispose() async {
    await _tutorialSubscriber.dispose();
    super.dispose();
  }

  EndLevelEvent? endLevelEvent;

  void _showLevelLostDialog(final EndLevelEvent endLevelEvent) {
    dialogType = GameDialogType.levelLost;
    this.endLevelEvent = endLevelEvent;
  }

  void onEndLevel() {
    final event =
        endLevelEvent ?? const EndLevelEvent(isWon: false, maxDistance: 0);
    unawaited(diDto.globalGameBloc.onLevelEnd(event));

    _closeDialog();
  }

  void onRestartLevel() {
    final event =
        endLevelEvent ?? const EndLevelEvent(isWon: false, maxDistance: 0);
    unawaited(diDto.globalGameBloc.onRestartLevel(event));

    _closeDialog();
  }

  Future<void> _showLevelWinDialog(final EndLevelEvent endLevelEvent) async {
    unawaited(diDto.globalGameBloc.onLevelEnd(endLevelEvent));
    dialogType = GameDialogType.levelWin;
  }

  void _showLevelWordSuggestionDialog() {
    dialogType = GameDialogType.levelWordSuggestion;
  }

  void _closeDialog() {
    dialogType = GameDialogType.none;
    endLevelEvent = null;
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
