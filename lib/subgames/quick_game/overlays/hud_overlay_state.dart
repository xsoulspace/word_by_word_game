part of 'notifications_overlay.dart';

class _LevelsHudScreenOverlayDiDto {
  _LevelsHudScreenOverlayDiDto.use(final Locator read)
      : globalGameBloc = read(),
        mechanics = read(),
        levelBloc = read(),
        appRouterController = read();

  final GlobalGameBloc globalGameBloc;
  final MechanicsCollection mechanics;
  final LevelBloc levelBloc;
  final AppRouterController appRouterController;
}

_LevelsHudScreenOverlayState _useLevelsHudScreenOverlayState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_StateState',
        state: _LevelsHudScreenOverlayState(
          diDto: _LevelsHudScreenOverlayDiDto.use(read),
        ),
      ),
    );

class _LevelsHudScreenOverlayState extends LifeState {
  _LevelsHudScreenOverlayState({
    required this.diDto,
  });

  final _LevelsHudScreenOverlayDiDto diDto;
}
