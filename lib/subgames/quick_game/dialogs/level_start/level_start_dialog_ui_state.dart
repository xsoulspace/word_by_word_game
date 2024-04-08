part of 'level_start_dialog.dart';

class _LevelStartDialogUiStateDiDto {
  _LevelStartDialogUiStateDiDto.use(final Locator read)
      : pauseScreenState = read(),
        globalGameBloc = read();
  final PauseScreenState pauseScreenState;
  final GlobalGameBloc globalGameBloc;
}

LevelStartDialogUiState _useLevelStartUiState({
  required final Locator read,
  required final LevelStartDialogUxNotifier uxState,
}) =>
    use(
      ContextfulLifeHook(
        debugLabel: '_LevelStartStateState',
        state: LevelStartDialogUiState(
          uxState: uxState,
          diDto: _LevelStartDialogUiStateDiDto.use(read),
        ),
      ),
    );

enum LevelStartDialogView {
  choosePlayers,
  createPlayer,
}

class LevelStartDialogUiState extends ContextfulLifeState {
  LevelStartDialogUiState({
    required this.diDto,
    required this.uxState,
  });
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
    setState();
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
