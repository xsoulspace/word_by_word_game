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
      life_hooks.LifeHook(
        debugLabel: '_DialogStackState',
        state: DialogStackState(dto: _DialogStackDiDto.use(read)),
      ),
    );

class DialogStackState extends life_hooks.LifeState with ChangeNotifier {
  DialogStackState({
    required this.dto,
  });
  late final dialogController = DialogController(
    showLevelLostDialog: _showLevelLostDialog,
    closeDialog: _closeDialog,
    showLevelWinDialog: _showLevelWinDialog,
    showLevelWordSuggestionDialog: _showLevelWordSuggestionDialog,
    showTechnologiesTree: _showTechnologiesTree,
    closeDialogAndResume: onResume,
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
        GameDialogType.tutorialOk =>
          false,
      };

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
    unawaited(dto.globalGameBloc.onLevelEnd(event));

    _closeDialog();
  }

  void onRestartLevel() {
    final event =
        endLevelEvent ?? const EndLevelEvent(isWon: false, maxDistance: 0);
    unawaited(dto.globalGameBloc.onRestartLevel(event));

    _closeDialog();
  }

  void onResume() {
    _closeDialog();
    _resume();
  }

  void onSaveResults() {
    final event =
        endLevelEvent ?? const EndLevelEvent(isWon: true, maxDistance: 0);
    unawaited(dto.globalGameBloc.onLevelEnd(event));
  }

  Future<void> _showLevelWinDialog(final EndLevelEvent endLevelEvent) async {
    this.endLevelEvent = endLevelEvent;
    dialogType = GameDialogType.levelWin;
  }

  void _showLevelWordSuggestionDialog() {
    dialogType = GameDialogType.levelWordSuggestion;
    _pause();
  }

  void _showTechnologiesTree() {
    dialogType = GameDialogType.technologiesTree;
    _pause();
  }

  void _pause() => dto.globalGameBloc.dto.mechanics.worldTime.pause();
  void _resume() => dto.globalGameBloc.dto.mechanics.worldTime.resume();

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
