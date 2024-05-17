part of 'level_start_dialog.dart';

class _LevelStartDialogUiStateDiDto {
  _LevelStartDialogUiStateDiDto.use(final Locator read)
      : globalGameBloc = read();
  final GlobalGameBloc globalGameBloc;
}

enum LevelStartDialogView {
  choosePlayers,
  createPlayer,
}

class LevelStartDialogUiState extends ValueNotifier<void> {
  LevelStartDialogUiState({
    required final BuildContext context,
    required this.uxState,
  })  : diDto = _LevelStartDialogUiStateDiDto.use(context.read),
        super(null);
  final LevelStartDialogUxNotifier uxState;
  final _LevelStartDialogUiStateDiDto diDto;

  bool isVisible = false;
  void onSwitchDialogVisiblity() {
    final liveState = diDto.globalGameBloc.state;
    if (liveState.playersCollection.isEmpty) {
      onCreatePlayer();
    } else {
      onChoosePlayers();
    }
    isVisible = !isVisible;
    notifyListeners();
  }

  final currentViewNotifier = ValueNotifier(LevelStartDialogView.choosePlayers);
  void onCreatePlayer() {
    currentViewNotifier.value = LevelStartDialogView.createPlayer;
    // unawaited(SoftKeyboard.open());
  }

  void onPlayerCreated(final PlayerProfileModel profile) {
    onChoosePlayers();
    uxState.onPlayerProfileCreated(profile);
    // unawaited(SoftKeyboard.close());
  }

  void onChoosePlayers() {
    currentViewNotifier.value = LevelStartDialogView.choosePlayers;
    // closeKeyboard(context: getContext());
  }

  @override
  void dispose() {
    currentViewNotifier.dispose();
    super.dispose();
  }
}
