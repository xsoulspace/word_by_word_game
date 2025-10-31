part of 'level_start_dialog.dart';

class _LevelStartDialogUxStateDiDto {
  _LevelStartDialogUxStateDiDto.use(final BuildContext context)
    : globalGameBloc = context.read(),
      mechanics = context.read(),
      appSettingsNotifier = context.read(),
      onlineStatusService = context.read(),
      wbwDictionary = context.read(),
      statesStatusesCubit = context.read(),
      tutorialBloc = context.read();
  final GlobalGameBloc globalGameBloc;
  final TutorialBloc tutorialBloc;
  final AppSettingsNotifier appSettingsNotifier;
  final MechanicsCollection mechanics;
  final OnlineStatusService onlineStatusService;
  final WbwDictionary wbwDictionary;
  final StatesStatusesCubit statesStatusesCubit;
}

class LevelStartDialogUxNotifier extends ValueNotifier<String> {
  LevelStartDialogUxNotifier({required final BuildContext context})
    : dto = _LevelStartDialogUxStateDiDto.use(context),
      super('') {
    onLoad();
  }

  final _LevelStartDialogUxStateDiDto dto;

  /// Temporary variable to access in dialog
  /// Never use it inside functions.
  CanvasDataModelId? canvasDataId;
  bool get isQuickGame => canvasDataId?.isQuickGame ?? false;

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
      dto.globalGameBloc.onCreatePlayerProfile(
        CreatePlayerProfileEvent(profile: profile),
      ),
    );
    onPlayerSelected(profile);
  }

  bool shouldStartTutorial = false;
  // ignore: avoid_positional_boolean_parameters
  void changeShouldStartTutorial(final bool? isTutorialEnabled) {
    shouldStartTutorial = isTutorialEnabled ?? false;
    notifyListeners();
  }

  LevelFeaturesSettingsModel featuresSettings = LevelFeaturesSettingsModel.empty
      .copyWith(isTechnologiesEnabled: kDebugMode);
  void changeFeaturesSettings(
    final LevelFeaturesSettingsModel Function(LevelFeaturesSettingsModel old)
    update,
  ) {
    featuresSettings = update(featuresSettings);
    notifyListeners();
  }

  /// target language is used to show associated words in that language
  /// for example in technologies
  late UiLanguage wordsLanguage = dto.appSettingsNotifier.language;
  void changeWordsLanguage(final UiLanguage lang) {
    wordsLanguage = lang;
    notifyListeners();
  }

  /// !imporant:
  /// this function will always start completely new game
  Future<void> onStartNewGame({
    required final BuildContext context,
    required final CanvasDataModelId canvasId,
  }) async {
    if (dto.statesStatusesCubit.isLoading) return;
    dto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    final pathsController = AppPathsController.of(context);

    await Future.wait([
      onDeleteLevel(canvasId),
      if (featuresSettings.isAdvancedGame) onLoadDictionaries(),
    ]);

    final level = dto.globalGameBloc.createLevel(
      canvasDataId: canvasId,
      playersIds: playersIds,
      wordsLanguage: wordsLanguage,
      characterId: character!.id,
      featuresSettings: featuresSettings,
    );
    await dto.globalGameBloc.onInitGlobalGameLevel(
      InitGlobalGameLevelEvent(levelModel: level),
    );
    await dto.globalGameBloc.onStartPlayingLevel(
      StartPlayingLevelEvent(shouldRestartTutorial: shouldStartTutorial),
    );
    pathsController.toPlayableLevel(id: level.id);
  }

  Future<void> onDeleteLevel(final CanvasDataModelId id) async {
    await dto.globalGameBloc.onRemoveLevelSave(id);
  }

  Future<void> onContinueFromSamePlace({
    required final CanvasDataModelId id,
    required final BuildContext context,
  }) async {
    if (dto.statesStatusesCubit.isLoading) return;
    dto.statesStatusesCubit.onChangeLevelStateStatus(
      status: LevelStateStatus.loading,
    );
    final pathsController = AppPathsController.of(context);
    final LevelModel level;

    if (dto.globalGameBloc.state.currentLevelId == id) {
      level = dto.globalGameBloc.state.currentLevelModel!;
    } else {
      level = dto.globalGameBloc.state.savedLevels[id]!;
    }
    if (level.featuresSettings.isAdvancedGame) {
      await onLoadDictionaries();
    }
    await dto.globalGameBloc.onInitGlobalGameLevel(
      InitGlobalGameLevelEvent(
        levelModel: level,
        isNewStart: false,
        playerStartPoint: PlayerStartPointType.fromSamePlace,
        windDirection:
            level.weathers.firstOrNull?.windDirection ??
            WindDirection.defaultDirection,
      ),
    );

    await dto.globalGameBloc.onStartPlayingLevel(
      const StartPlayingLevelEvent(shouldRestartTutorial: false),
    );
    pathsController.toPlayableLevel(id: id);
  }

  void onReturnToLevels(final BuildContext context) {
    AppPathsController.of(context).toLevels();
  }

  final isDictionariesLoading = ValueNotifier(false);

  Future<void> onLoadDictionaries() async {
    isDictionariesLoading.value = true;
    await dto.wbwDictionary.startLoadingAndCaching();
    isDictionariesLoading.value = false;
  }
}
