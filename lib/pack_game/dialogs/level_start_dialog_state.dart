part of 'level_start_dialog.dart';

class _LevelStartStateDiDto {
  _LevelStartStateDiDto.use(final Locator read) : pauseScreenState = read();
  final PauseScreenState pauseScreenState;
}

_LevelStartState _useLevelStartState({
  required final Locator read,
  required final TemplateLevelModel level,
}) =>
    use(
      LifeHook(
        debugLabel: '_LevelStartStateState',
        state: _LevelStartState(
          level: level,
          diDto: _LevelStartStateDiDto.use(read),
        ),
      ),
    );

class _LevelStartState extends LifeState {
  _LevelStartState({
    required this.diDto,
    required this.level,
  });
  final TemplateLevelModel level;
  final _LevelStartStateDiDto diDto;
  bool isVisible = false;
  void onSwitchDialogVisiblity() {
    isVisible = !isVisible;
    setState();
  }

  void onToLevel() {
    diDto.pauseScreenState.onToLevel(level);
  }
}
