part of 'dialog_stack.dart';

class _DialogStackDiDto {
  _DialogStackDiDto.use(final Locator read) : globalGameBloc = read();
  final GlobalGameBloc globalGameBloc;
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
  final _DialogStackDiDto diDto;
  GameDialogType _dialogType = GameDialogType.none;

  GameDialogType get dialogType => _dialogType;

  set dialogType(final GameDialogType dialogType) {
    _dialogType = dialogType;
    setState();
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

  void onSendEndLevelEvent() {
    final event = endLevelEvent;
    if (event != null) {
      diDto.globalGameBloc.add(event);
      endLevelEvent = null;
    }
  }
}
