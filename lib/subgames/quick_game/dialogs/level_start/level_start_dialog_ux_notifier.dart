part of 'level_start_dialog.dart';

class _LevelStartDialogUxStateDiDto {
  _LevelStartDialogUxStateDiDto.use(final BuildContext context)
      : globalGameBloc = context.read(),
        mechanics = context.read(),
        appSettingsNotifier = context.read(),
        tutorialBloc = context.read();
  final GlobalGameBloc globalGameBloc;
  final TutorialBloc tutorialBloc;
  final AppSettingsNotifier appSettingsNotifier;
  final MechanicsCollection mechanics;
}

class LevelStartDialogUxNotifier extends ValueNotifier<String> {
  LevelStartDialogUxNotifier({
    required final BuildContext context,
    required this.canvasData,
  })  : dto = _LevelStartDialogUxStateDiDto.use(context),
        super('') {
    onLoad();
  }
  final CanvasDataModel canvasData;
  final _LevelStartDialogUxStateDiDto dto;
  void onLoad() {
    final liveState = dto.globalGameBloc.state;
    character = liveState.playersCharacters.first;
    final isTutorialPlayed = dto.mechanics.tutorial.checkIsTutorialPlayed(
      progress: dto.tutorialBloc.getLiveProgress(),
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
      dto.globalGameBloc
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

  /// target language is used to show associated words in that language
  /// for example in technologies
  late Languages wordsLanguage = dto.appSettingsNotifier.language;
  void changeWordsLanguage(final Languages lang) {
    wordsLanguage = lang;
    notifyListeners();
  }

  Future<void> onPlay(final BuildContext context) async {
    final pathsController = AppPathsController.of(context);
    final level = dto.globalGameBloc.createLevel(
      canvasDataId: canvasData.id,
      playersIds: playersIds,
      wordsLanguage: wordsLanguage,
      characterId: character!.id,
      featuresSettings: featuresSettings,
    );
    await dto.globalGameBloc
        .onInitGlobalGameLevel(InitGlobalGameLevelEvent(levelModel: level));
    await dto.globalGameBloc.onStartPlayingLevel(
      StartPlayingLevelEvent(shouldRestartTutorial: shouldStartTutorial),
    );
    pathsController.toPlayableLevel(id: level.id);
  }

  void onReturnToLevels(final BuildContext context) {
    AppPathsController.of(context).toLastLevel();
  }
}
