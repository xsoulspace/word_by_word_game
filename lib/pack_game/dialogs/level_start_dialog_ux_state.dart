part of 'level_start_dialog.dart';

class _LevelStartDialogUxStateDiDto {
  _LevelStartDialogUxStateDiDto.use(final Locator read)
      : appRouterController = AppRouterController.use(read),
        globalGameBloc = read();
  final AppRouterController appRouterController;
  final GlobalGameBloc globalGameBloc;
}

LevelStartDialogUxState _useLevelStartDialogUxState({
  required final Locator read,
  required final TemplateLevelModel templateLevel,
}) =>
    use(
      LifeHook(
        debugLabel: 'LevelStartDialogUxState',
        state: LevelStartDialogUxState(
          diDto: _LevelStartDialogUxStateDiDto.use(read),
          templateLevel: templateLevel,
        ),
      ),
    );

class LevelStartDialogUxState extends LifeState {
  LevelStartDialogUxState({
    required this.diDto,
    required this.templateLevel,
  });
  final TemplateLevelModel templateLevel;
  final _LevelStartDialogUxStateDiDto diDto;

  PlayerCharacterModelId? characterId;

  @override
  void initState() {
    super.initState();
    final liveState = diDto.globalGameBloc.getLiveState();
    characterId = liveState.playersCharacters.first.id;
  }

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

  void onPlay() {
    final liveState = diDto.globalGameBloc.getLiveState();
    final charactersCollection = liveState.playersCharacters;
    final playersCollection = liveState.playersCollection;
    final levelPlayers = playersIds.map(
      (final id) => playersCollection.firstWhere(
        (final player) => player.id == id,
      ),
    );
    final levelCharecters = charactersCollection.firstWhere(
      (final character) => character.id == characterId,
    );

    final level = LevelModel(
      name: templateLevel.name,
      resources: templateLevel.resources,
      characters: LevelCharactersModel(
        playerCharacter: levelCharecters,
      ),
      players: LevelPlayersModel(
        currentPlayerId: playersIds.first,
        players: levelPlayers
            .map(
              (final e) => e.copyWith(
                highscore: PlayerHighscoreModel.empty,
              ),
            )
            .toList(),
      ),
      id: templateLevel.id,
    );

    diDto.globalGameBloc.add(InitGlobalGameLevelEvent(levelModel: level));
    diDto.appRouterController.toPlayableLevel(id: level.id);
  }

  void onReturnToLevels() {
    diDto.appRouterController.toRoot();
  }
}
