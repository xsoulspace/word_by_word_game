import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/screen_animations/ui_power_points_animation.dart';

part 'level_bloc.freezed.dart';
part 'level_bloc_events.dart';
part 'level_bloc_states.dart';

class LevelBlocDiDto {
  LevelBlocDiDto.use(final Locator read)
    : mechanics = read(),
      levelPlayersCubit = read(),
      dictionaryBloc = read(),
      technologiesCubit = read(),
      wbwDictionary = read(),
      powerPointsAnimationNotifier = read(),
      statesStatusesCubit = read();
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
  final LevelPlayersBloc levelPlayersCubit;
  final TechnologiesCubit technologiesCubit;
  final WbwDictionary wbwDictionary;
  final DictionariesBloc dictionaryBloc;
  final UiPowerPointsAnimationNotifier powerPointsAnimationNotifier;
}

class LevelBloc extends Cubit<LevelBlocState> {
  LevelBloc(final BuildContext context)
    : dto = LevelBlocDiDto.use(context.read),
      super(const LevelBlocState());

  static bool Function(LevelBlocState previous, LevelBlocState current)
  useCheckStateEqualityBuilder({
    required final bool Function(
      LevelBlocState previous,
      LevelBlocState current,
    )
    checkLiveState,
  }) =>
      (final previous, final current) => checkLiveState(current, previous);

  final LevelBlocDiDto dto;
  LevelFeaturesSettingsModel get featuresSettings => state.featuresSettings;
  void onInitLevel(final LevelBlocEventInit event) {
    final liveLevel = LevelBlocState.liveFromModel(event.levelModel);
    emit(liveLevel);
    dto.statesStatusesCubit.onLevelPartLoaded(
      levelPartName: LevelPartName.level,
    );
  }

  UiLanguage get wordsLanguage => state.wordsLanguage;
  void onChangeWordsLanguage(final UiLanguage language) {
    final updatedState = state.copyWith(wordsLanguage: language);
    emit(updatedState);
  }

  void onConsumeTickEvent(final LevelBlocEventConsumeTick event) {
    // noop
  }

  void onHideWarning(final LevelBlocEventHideWarning event) {
    final newState = state.copyWith(wordWarning: WordWarning.none);
    emit(newState);
  }

  void onChangeCurrentWord(final LevelBlocEventChangeCurrentWord event) {
    if (state.currentWord.fullWord == event.word.fullWord) return;
    final newState = state.copyWith(
      currentWord: event.word,
      wordWarning: WordWarning.none,
    );
    emit(newState);
  }

  Future<WordWarning> _checkNewWord(final CurrentWordModel word) async {
    final dicionaryMechanics = dto.mechanics.dictionary;
    final isWritten = dicionaryMechanics.checkIsWordIsWritten(
      word: word,
      words: state.words,
    );
    if (word.fullWord.isEmpty) {
      return WordWarning.none;
    }

    if (isWritten) {
      return WordWarning.isWritten;
    }
    final isCorrect = await dicionaryMechanics.checkIsWordIsCorrect(
      word: word,
      localWords: dto.dictionaryBloc.state.wordsType,
      wbwDictionary: dto.wbwDictionary,
    );
    if (!isCorrect) {
      return WordWarning.isNotCorrect;
    }
    return WordWarning.none;
  }

  Future<void> onAddNewWordToDictionary(
    final LevelBlocEventAddNewWordToDictionary event,
  ) async {
    final liveState = state;
    unawaited(
      dto.dictionaryBloc.onAddWord(word: liveState.currentWord.fullWord),
    );
  }

  Future<bool> onAcceptNewWord() async {
    final liveState = state;
    final currentWord = liveState.currentWord;
    final newWord = currentWord.fullWord;
    if (newWord.isEmpty) {
      emit(liveState.copyWith(wordWarning: WordWarning.isNotCorrect));
      return false;
    }

    final wordWarning = await _checkNewWord(currentWord);
    if (wordWarning case WordWarning.none) {
      final levelPlayersBloc = dto.levelPlayersCubit;
      final updatedWords = {...liveState.words}
        ..[newWord] = levelPlayersBloc.state.currentPlayerId;
      final updatedState = liveState.copyWith(
        latestWord: newWord,
        currentWord: dto.mechanics.wordComposition.createNextCurrentWord(
          word: currentWord,
        ),
        words: updatedWords,
        wordWarning: wordWarning,
        phaseType: GamePhaseType.selectAction,
      );
      emit(updatedState);
      final score = dto.mechanics.score.getScoreFromWord(word: newWord);
      final playerId = levelPlayersBloc.state.currentPlayerId;
      levelPlayersBloc.onUpdatePlayerHighscore(
        UpdatePlayerHighscoreEvent(
          word: newWord,
          score: score,
          playerId: playerId,
        ),
      );
      dto.technologiesCubit.onWordAccepted(word: newWord, score: score);
      return true;
    } else {
      emit(liveState.copyWith(wordWarning: wordWarning));
    }
    return false;
  }

  void onLevelPlayerSelectActionMultiplier(
    final LevelBlocEventSelectActionMultiplier event,
  ) {
    final liveState = state;
    final updatedState = liveState.copyWith(energyMultiplier: event.multiplier);
    emit(updatedState);
  }

  void onLevelPlayerEndTurnAction(
    final EnergyApplicationType energyApplicationType,
  ) {
    final liveState = state;
    final updatedState = liveState.copyWith(phaseType: GamePhaseType.entryWord);
    emit(updatedState);
    _onApplyMultiplier(energyApplicationType);
    dto.levelPlayersCubit.onSwitchToNextPlayer(const SwitchToNextPlayerEvent());
  }

  void _onApplyMultiplier(final EnergyApplicationType energyApplicationType) {
    final liveState = state;

    final levelPlayersCubit = dto.levelPlayersCubit;
    final technologiesCubit = dto.technologiesCubit;
    final liveLevelPlayerState = levelPlayersCubit.state;
    final scoreMechanics = dto.mechanics.score;

    final appliedScore = scoreMechanics.getScoreForStorageEnergyByModifier(
      multiplier: liveState.energyMultiplier,
      availableScore: liveLevelPlayerState.currentPlayer.highscore.score,
    );
    final refuelStorageEvent = RefuelStorageEvent(score: appliedScore);

    switch (energyApplicationType) {
      case EnergyApplicationType.refueling:
        levelPlayersCubit.onRefuelStorage(refuelStorageEvent);
        dto.powerPointsAnimationNotifier.setPoints(
          refuelStorageEvent.score.value.formattedScore,
        );
      case EnergyApplicationType.restAndPrepareBalloon:
        levelPlayersCubit.onRefuelStorage(refuelStorageEvent);
        levelPlayersCubit.onChangeCharacterCheckpointPosition();
      case EnergyApplicationType.researchingTechnology:
        technologiesCubit.onResearchTechnology(
          ResearchTechnologyEvent(score: appliedScore),
        );
      case EnergyApplicationType.buildingBuilt ||
          EnergyApplicationType.crystalMove ||
          EnergyApplicationType.noop:
    }

    final playerId = levelPlayersCubit.state.currentPlayerId;
    levelPlayersCubit.onUpdatePlayerHighscore(
      UpdatePlayerHighscoreEvent(score: appliedScore * -1, playerId: playerId),
    );
  }

  String getWordSuggestion() {
    final liveState = state;
    return dto.mechanics.dictionary.getWordSuggestion(
      exceptions: liveState.words.keys,
      characters: liveState.currentWord.middlePart,
      wordsLanguage: liveState.wordsLanguage,
    );
  }

  void onUnblockIndex({required final int index}) {
    final updatedWord = dto.mechanics.wordComposition.unblockInactiveIndex(
      index: index,
      currentWord: state.currentWord,
    );
    final updatedState = state.copyWith(currentWord: updatedWord);

    emit(updatedState);
    final playerId = dto.levelPlayersCubit.state.currentPlayerId;
    final score = dto.mechanics.score.getDecreaseScore(lettersCount: 1);
    dto.levelPlayersCubit.onUpdatePlayerHighscore(
      UpdatePlayerHighscoreEvent(score: score, playerId: playerId),
    );
  }
}
