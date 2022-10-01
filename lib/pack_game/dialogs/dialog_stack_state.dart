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
    showEndGameDialog: _showEndGameDialog,
    closeDialog: _closeDialog,
  );
  final _DialogStackDiDto diDto;
  GameDialogType _dialogType = GameDialogType.none;

  GameDialogType get dialogType => _dialogType;

  set dialogType(final GameDialogType dialogType) {
    _dialogType = dialogType;
    setState();
  }

  void _showEndGameDialog() {
    dialogType = GameDialogType.endGame;
  }

  void _closeDialog() {
    dialogType = GameDialogType.none;
  }
}
