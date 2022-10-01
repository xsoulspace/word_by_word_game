part of 'dialog_stack.dart';

class _DialogStackDiDto {
  // ignore: avoid_unused_constructor_parameters
  _DialogStackDiDto.use(final Locator read);
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
  );
  final _DialogStackDiDto diDto;
  GameDialogType _dialogType = GameDialogType.none;

  GameDialogType get dialogType => _dialogType;

  set dialogType(final GameDialogType dialogType) {
    _dialogType = dialogType;
    setState();
  }

  void _showLevelLostDialog() {
    dialogType = GameDialogType.levelLost;
  }

  void _showLevelWinDialog() {
    dialogType = GameDialogType.levelWin;
  }

  void _closeDialog() {
    dialogType = GameDialogType.none;
  }
}
