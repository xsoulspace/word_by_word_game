part of 'level_options_screen.dart';

class _LevelOptionsScreenDiDto {
  _LevelOptionsScreenDiDto.use(final Locator read)
      : appRouterController = AppRouterController.use(read),
        globalGameBloc = read();
  final AppRouterController appRouterController;
  final GlobalGameBloc globalGameBloc;
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

  PlayerCharacterModelId? characterId;
  bool checkIsCharacterSelected(final PlayerCharacterModel character) =>
      characterId == character.id;
  void onCharacterPressed(final PlayerCharacterModel character) {
    characterId = character.id;
    setState();
  }

  final playersIds = <PlayerProfileModelId>[];
  void onPlayerSelected(final PlayerProfileModel profile) {
    final index = playersIds.indexOf(profile.id);
    if (index >= 0) {
      playersIds.removeAt(index);
    } else {
      playersIds.add(profile.id);
    }
    setState();
  }

  bool checkIsPlayerSelected(final PlayerProfileModel player) {
    return playersIds.contains(player.id);
  }

  void onPlayerProfileCreated(final PlayerProfileModel profile) {
    diDto.globalGameBloc.add(CreatePlayerProfileEvent(profile: profile));
    onPlayerSelected(profile);
  }
}
