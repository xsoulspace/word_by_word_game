part of 'level_options_screen.dart';

class _LevelOptionsScreenDiDto {
  _LevelOptionsScreenDiDto.use(final Locator read)
      : appRouterController = AppRouterController.use(read);
  final AppRouterController appRouterController;
}

_LevelOptionsScreenState _useLevelOptionsScreenState({
  required final Locator read,
}) =>
    use(
      LifeHook(
        debugLabel: '_LevelOptionsScreenState',
        state:
            _LevelOptionsScreenState(diDto: _LevelOptionsScreenDiDto.use(read)),
      ),
    );

class _LevelOptionsScreenState extends LifeState {
  _LevelOptionsScreenState({
    required this.diDto,
  });

  final _LevelOptionsScreenDiDto diDto;

  final players = <PlayerProfileModelId, PlayerProfileModel>{};
  bool checkIsPlayerSelected(final PlayerProfileModel player) =>
      players.containsKey(player.id);
  void onPlayerPressed(final PlayerProfileModel player) {
    if (players.containsKey(player.id)) {
      players.remove(player.id);
    } else {
      players[player.id] = player;
    }

    setState();
  }
}
