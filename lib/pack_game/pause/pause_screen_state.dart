part of 'pause_screen.dart';

class _PauseScreenStateDiDto {
  _PauseScreenStateDiDto.use(final Locator read)
      : routeState = read(),
        appRouterController = AppRouterController.use(read);
  final RouteState routeState;
  final AppRouterController appRouterController;
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
  void onContinue() {
    diDto.appRouterController.toPlayableLevel(id: '');
  }
}
