part of 'pause_screen.dart';

class _PauseScreenStateDiDto {
  _PauseScreenStateDiDto.use(final Locator read)
      : routeState = read(),
        appRouterController = AppRouterController.use(read),
        mechanics = read(),
        globalGameBloc = read();
  final RouteState routeState;
  final GlobalGameBloc globalGameBloc;
  final AppRouterController appRouterController;
  final MechanicsCollection mechanics;
}

_PauseScreenState _usePauseScreenState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_PauseScreenState',
        state: _PauseScreenState(
          diDto: _PauseScreenStateDiDto.use(read),
        ),
      ),
    );

class _PauseScreenState extends LifeState {
  _PauseScreenState({
    required this.diDto,
  });
  final _PauseScreenStateDiDto diDto;
  void onContinue({
    required final LevelModelId id,
  }) {
    diDto.appRouterController.toPlayableLevel(id: id);
    diDto.mechanics.worldTime.resume();
  }

  void onToAllLevels() {
    diDto.appRouterController.toAllLevel();
  }

  void onToPlayersAndHighscore() {
    diDto.appRouterController.toPlayersAndHighscore();
  }
}
