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

class LevelStartDialogUxNotifier extends ValueNotifier<String> {
  LevelStartDialogUxNotifier({
    required final BuildContext context,
    required this.canvasData,
  })  : diDto = _LevelStartDialogUxStateDiDto.use(context.read),
        super('') {
    onLoad();
  }
  final CanvasDataModel canvasData;
  final _LevelStartDialogUxStateDiDto diDto;
  void onLoad() {
    final liveState = diDto.globalGameBloc.state;
    character = liveState.playersCharacters.first;
    final isTutorialPlayed = diDto.mechanics.tutorial.checkIsTutorialPlayed(
      progress: diDto.tutorialBloc.getLiveProgress(),
      tutorial: TutorialCollectionsName.levelIntroduction,
    );
    shouldStartTutorial = !isTutorialPlayed;
  }

  PlayerCharacterModel? character;

  bool checkIsCharacterSelected(final PlayerCharacterModel char) =>
      character?.id == char.id;
  void onCharacterPressed(final PlayerCharacterModel newCharacter) {
    character = newCharacter;
    notifyListeners();
  }

  final playersIds = <PlayerProfileModelId>[];
  void onPlayerSelected(final PlayerProfileModel profile) {
    final index = playersIds.indexOf(profile.id);
    if (index >= 0) {
      playersIds.removeAt(index);
    } else {
      playersIds.add(profile.id);
    }
    notifyListeners();
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
    notifyListeners();
  }

  LevelFeaturesSettingsModel featuresSettings =
      LevelFeaturesSettingsModel.empty;
  void changeFeaturesSettings(
    final LevelFeaturesSettingsModel Function(LevelFeaturesSettingsModel old)
        update,
  ) {
    featuresSettings = update(featuresSettings);
    notifyListeners();
  }

  Future<void> onPlay() async {
    final level = diDto.globalGameBloc.createLevel(
      canvasDataId: canvasData.id,
      playersIds: playersIds,
      characterId: character!.id,
      featuresSettings: featuresSettings,
    );
    await diDto.globalGameBloc
        .onInitGlobalGameLevel(InitGlobalGameLevelEvent(levelModel: level));
    await diDto.globalGameBloc.onStartPlayingLevel(
      StartPlayingLevelEvent(shouldRestartTutorial: shouldStartTutorial),
    );
    diDto.appRouterController.toPlayableLevel(id: level.id);
  }

  void onReturnToLevels() {
    diDto.appRouterController.toRoot();
  }
}
