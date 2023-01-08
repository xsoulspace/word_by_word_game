part of 'dialog_stack.dart';

class _DialogStackDiDto {
  _DialogStackDiDto.use(final Locator read)
      : globalGameBloc = read(),
        tutorialBloc = read();
  final GlobalGameBloc globalGameBloc;
  final TutorialBloc tutorialBloc;
}

_DialogStackState _useDialogStackState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_DialogStackState',
        state: _DialogStackState(diDto: _DialogStackDiDto.use(read)),
      ),
    );

class _DialogStackState extends LifeState {
  _DialogStackState({
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

  set dialogType(final GameDialogType dialogType) {
    _dialogType = dialogType;
    setState();
  }

  @override
  void initState() {
    super.initState();
    _tutorialSubscriber.onLoad();
  }

  @override
  void dispose() {
    _tutorialSubscriber.dispose();
    super.dispose();
  }

  EndLevelEvent? endLevelEvent;

  void _showLevelLostDialog(final EndLevelEvent endLevelEvent) {
    dialogType = GameDialogType.levelLost;
    this.endLevelEvent = endLevelEvent;
  }

  void _showLevelWinDialog() {
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
    if (tutorialState is! LiveTutorialBlocState) {
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
          break;
        case TutorialCompleteAction.onClick:
          if (action.uiItem == TutorialUiItem.tutorialOkDialog) {
            _showTutorialOkDialog();
            return;
          }
          break;
        default:
          break;
      }
    }
  }

  void _showTutorialOkDialog() {
    dialogType = GameDialogType.tutorialOk;
  }

  void _showTutorialBoolDialog() {
    dialogType = GameDialogType.tutorialBool;
  }

  void onSendEndLevelEvent() {
    final event = endLevelEvent;
    if (event != null) {
      diDto.globalGameBloc.add(event);
      endLevelEvent = null;
    }
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
  void dispose() {
    _tutorialSubscription?.cancel();
  }
}
