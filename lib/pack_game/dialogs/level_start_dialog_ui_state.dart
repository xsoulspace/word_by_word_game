part of 'level_start_dialog.dart';

class _LevelStartDialogUiStateDiDto {
  _LevelStartDialogUiStateDiDto.use(final Locator read)
      : pauseScreenState = read();
  final PauseScreenState pauseScreenState;
}

LevelStartDialogUiState _useLevelStartUiState({
  required final Locator read,
  required final TemplateLevelModel level,
  required final LevelStartDialogUxState uxState,
}) =>
    use(
      LifeHook(
        debugLabel: '_LevelStartStateState',
        state: LevelStartDialogUiState(
          uxState: uxState,
          level: level,
          diDto: _LevelStartDialogUiStateDiDto.use(read),
        ),
      ),
    );

enum LevelStartDialogView {
  choosePlayers,
  createPlayer,
}

class LevelStartDialogUiState extends LifeState {
  LevelStartDialogUiState({
    required this.diDto,
    required this.level,
    required this.uxState,
  });
  final LevelStartDialogUxState uxState;
  final TemplateLevelModel level;
  final _LevelStartDialogUiStateDiDto diDto;
  bool isVisible = false;
  void onSwitchDialogVisiblity() {
    isVisible = !isVisible;
    setState();
  }

  final currentViewNotifier = ValueNotifier(LevelStartDialogView.choosePlayers);
  void onCreatePlayer() {
    currentViewNotifier.value = LevelStartDialogView.createPlayer;
  }

  void onPlayerCreated(final PlayerProfileModel profile) {
    onChoosePlayers();
    uxState.onPlayerProfileCreated(profile);
  }

  void onChoosePlayers() {
    currentViewNotifier.value = LevelStartDialogView.choosePlayers;
  }

  void onToLevel() {
    diDto.pauseScreenState.onToLevel(level);
  }

  @override
  void dispose() {
    currentViewNotifier.dispose();
    super.dispose();
  }
}
