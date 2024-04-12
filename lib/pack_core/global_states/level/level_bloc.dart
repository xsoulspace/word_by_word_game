import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'level_bloc.freezed.dart';
part 'level_bloc_events.dart';
part 'level_bloc_states.dart';

class LevelBlocDiDto {
  LevelBlocDiDto.use(final Locator read)
      : mechanics = read(),
        levelPlayersCubit = read(),
        dictionaryBloc = read(),
        technologiesCubit = read(),
        statesStatusesCubit = read();
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
  final LevelPlayersBloc levelPlayersCubit;
  final TechnologiesCubit technologiesCubit;
  final DictionariesBloc dictionaryBloc;
}

class LevelBloc extends Cubit<LevelBlocState> {
  LevelBloc(final BuildContext context)
      : dto = LevelBlocDiDto.use(context.read),
        super(const LevelBlocState());

  static bool Function(
    LevelBlocState previous,
    LevelBlocState current,
  ) useCheckStateEqualityBuilder({
    required final bool Function(
      LevelBlocState previous,
      LevelBlocState current,
    ) checkLiveState,
  }) =>
      (final previous, final current) => checkLiveState(current, previous);

  final LevelBlocDiDto dto;

  void onInitLevel(
    final LevelBlocEventInit event,
  ) {
    final liveLevel = LevelBlocState.liveFromModel(event.levelModel);
    emit(liveLevel);
    dto.statesStatusesCubit.onLevelPartLoaded(
      levelPartName: LevelPartName.level,
    );
  }

  void onChangeWordsLanguage(final Languages language) {
    final updatedState = state.copyWith(
      wordsLanguage: language,
    );
    emit(updatedState);
  }

  void onConsumeTickEvent(
    final LevelBlocEventConsumeTick event,
  ) {
    // noop
  }

  void onHideWarning(
    final LevelBlocEventHideWarning event,
  ) {
    final newState = state.copyWith(
      wordWarning: WordWarning.none,
    );
    emit(newState);
  }

  void onChangeCurrentWord(
    final LevelBlocEventChangeCurrentWord event,
  ) {
    if (state.currentWord.fullWord == event.word.fullWord) return;
    final newState = state.copyWith(
      currentWord: event.word,
      wordWarning: WordWarning.none,
    );
    emit(newState);
  }

  WordWarning _checkNewWord(
    final CurrentWordModel word,
  ) {
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
    final isCorrect = dicionaryMechanics.checkIsWordIsCorrect(
      word: word,
      localDictionary: dto.dictionaryBloc.state.localDictionary,
    );
    if (!isCorrect) {
      return WordWarning.isNotCorrect;
    }
    return WordWarning.none;
  }

  void onAddNewWordToDictionary(
    final LevelBlocEventAddNewWordToDictionary event,
  ) {
    final liveState = state;
    unawaited(
      dto.dictionaryBloc.onAddWord(
        word: liveState.currentWord.fullWord,
      ),
    );
    onAcceptNewWord();
  }

  void onAcceptNewWord() {
    final liveState = state;
    final currentWord = liveState.currentWord;
    final newWord = currentWord.fullWord;
    if (newWord.isEmpty) {
      emit(
        liveState.copyWith(
          wordWarning: WordWarning.isNotCorrect,
        ),
      );
    }

    final wordWarning = _checkNewWord(currentWord);
    if (wordWarning == WordWarning.none) {
      final levelPlayersBloc = dto.levelPlayersCubit;
      final updatedWords = {
        ...liveState.words,
      }..[newWord] = levelPlayersBloc.state.currentPlayerId;
      final updatedState = liveState.copyWith(
        latestWord: newWord,
        currentWord: dto.mechanics.wordComposition
            .createNextCurrentWord(word: currentWord),
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
      dto.technologiesCubit.onWordAccepted(newWord);
    } else {
      emit(
        liveState.copyWith(
          wordWarning: wordWarning,
        ),
      );
    }
    return;
  }

  void onLevelPlayerSelectActionMultiplier(
    final LevelBlocEventSelectActionMultiplier event,
  ) {
    final liveState = state;
    final updatedState = liveState.copyWith(
      energyMultiplier: event.multiplier,
    );
    emit(updatedState);
  }

  void onLevelPlayerEndTurnAction(
    final EnergyApplicationType energyApplicationType,
  ) {
    final liveState = state;
    final updatedState = liveState.copyWith(
      phaseType: GamePhaseType.entryWord,
    );
    emit(updatedState);

    final levelPlayersCubit = dto.levelPlayersCubit;
    final technologiesCubit = dto.technologiesCubit;
    final liveLevelPlayerState = levelPlayersCubit.state;
    final scoreMechanics = dto.mechanics.score;

    final appliedScore = scoreMechanics.getScoreForStorageEnergyByModifier(
      multiplier: liveState.energyMultiplier,
      availableScore: liveLevelPlayerState.currentPlayer.highscore.score,
    );
    switch (energyApplicationType) {
      case EnergyApplicationType.refueling:
        levelPlayersCubit
            .onRefuelStorage(RefuelStorageEvent(score: appliedScore));
      case EnergyApplicationType.researchingTechnology:
        technologiesCubit.onResearchTechnology(
          ResearchTechnologyEvent(score: appliedScore),
        );
      case EnergyApplicationType.noop:
    }

    final playerId = levelPlayersCubit.state.currentPlayerId;
    levelPlayersCubit
      ..onUpdatePlayerHighscore(
        UpdatePlayerHighscoreEvent(
          score: appliedScore * -1,
          playerId: playerId,
        ),
      )
      ..onSwitchToNextPlayer(const SwitchToNextPlayerEvent());
  }

  String getWordSuggestion() {
    final liveState = state;
    return dto.mechanics.dictionary.getWordSuggestion(
      exceptions: liveState.words.keys,
      characters: liveState.currentWord.middlePart,
    );
  }

  void onUnblockIndex({
    required final int index,
  }) {
    final updatedWord = dto.mechanics.wordComposition.unblockInactiveIndex(
      index: index,
      currentWord: state.currentWord,
    );
    final updatedState = state.copyWith(
      currentWord: updatedWord,
    );

    emit(updatedState);
    final playerId = dto.levelPlayersCubit.state.currentPlayerId;
    final score = dto.mechanics.score.getDecreaseScore(lettersCount: 1);
    dto.levelPlayersCubit.onUpdatePlayerHighscore(
      UpdatePlayerHighscoreEvent(
        score: score,
        playerId: playerId,
      ),
    );
  }
}
