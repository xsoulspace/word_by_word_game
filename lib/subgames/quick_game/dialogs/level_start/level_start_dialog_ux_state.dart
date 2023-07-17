part of 'level_start_dialog.dart';

class _LevelStartDialogUxStateDiDto {
  _LevelStartDialogUxStateDiDto.use(final Locator read)
      : appRouterController = AppRouterController.use(read),
        globalGameBloc = read(),
        mechanics = read(),
        tutorialBloc = read();
  final AppRouterController appRouterController;
  final GlobalGameBloc globalGameBloc;
  final TutorialBloc tutorialBloc;
  final MechanicsCollection mechanics;
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
    final liveState = diDto.globalGameBloc.state;
    characterId = liveState.playersCharacters.first.id;
    final isTutorialPlayed = diDto.mechanics.tutorial.checkIsTutorialPlayed(
      progress: diDto.tutorialBloc.getLiveProgress(),
      tutorial: TutorialCollectionsName.levelIntroduction,
    );
    shouldStartTutorial = !isTutorialPlayed;
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

  bool checkIsPlayerSelected(final PlayerProfileModel player) =>
      playersIds.contains(player.id);

  void onPlayerProfileCreated(final PlayerProfileModel profile) {
    unawaited(
      diDto.globalGameBloc
          .onCreatePlayerProfile(CreatePlayerProfileEvent(profile: profile)),
    );
    onPlayerSelected(profile);
  }

  bool shouldStartTutorial = false;
  // ignore: avoid_positional_boolean_parameters
  void changeShouldStartTutorial(final bool? isTutorialEnabled) {
    shouldStartTutorial = isTutorialEnabled ?? false;
    setState();
  }

  void onPlay() {
    final liveState = diDto.globalGameBloc.state;
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
      name: templateLevel.canvasData.name,
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
      id: templateLevel.canvasData.id,
    );

    diDto.globalGameBloc
        .onInitGlobalGameLevel(InitGlobalGameLevelEvent(levelModel: level));
    unawaited(
      diDto.globalGameBloc.onStartPlayingLevel(
        StartPlayingLevelEvent(shouldRestartTutorial: shouldStartTutorial),
      ),
    );
    diDto.appRouterController.toPlayableLevel(id: level.id);
  }

  void onReturnToLevels() {
    diDto.appRouterController.toRoot();
  }
}
