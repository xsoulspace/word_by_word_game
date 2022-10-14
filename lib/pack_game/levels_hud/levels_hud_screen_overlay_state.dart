part of 'levels_hud_screen_overlay.dart';

class _StateDiDto {
  _StateDiDto.use(final Locator read)
      : globalGameBloc = read(),
        mechanics = read(),
        levelBloc = read(),
        appRouterController = read();

  final GlobalGameBloc globalGameBloc;
  final MechanicsCollection mechanics;
  final LevelBloc levelBloc;
  final AppRouterController appRouterController;
}

_StateState _useStateState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_StateState',
        state: _StateState(diDto: _StateDiDto.use(read)),
      ),
    );

class _StateState extends LifeState {
  _StateState({
    required this.diDto,
  });

  final _StateDiDto diDto;
}
