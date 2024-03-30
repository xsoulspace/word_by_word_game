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
  LevelBlocDiDto.use(final BuildContext context)
      : mechanics = context.read(),
        levelPlayersBloc = context.read(),
        dictionaryBloc = context.read(),
        statesStatusesCubit = context.read();
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
  final LevelPlayersBloc levelPlayersBloc;
  final DictionariesBloc dictionaryBloc;
}

class LevelBloc extends Cubit<LevelBlocState> {
  LevelBloc(final BuildContext context)
      : diDto = LevelBlocDiDto.use(context),
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

  final LevelBlocDiDto diDto;

  void onInitLevel(
    final LevelBlocEventInit event,
  ) {
    final liveLevel = LevelBlocState.liveFromModel(event.levelModel);
    emit(liveLevel);
    diDto.statesStatusesCubit.onLevelPartLoaded(
      levelPartName: LevelPartName.level,
    );
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
    final dicionaryMechanics = diDto.mechanics.dictionary;
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
      localDictionary: diDto.dictionaryBloc.state.localDictionary,
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
      diDto.dictionaryBloc.onAddWord(
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
      final levelPlayersBloc = diDto.levelPlayersBloc;
      final updatedWords = {
        ...liveState.words,
      }..[newWord] = levelPlayersBloc.state.currentPlayerId;
      final updatedState = liveState.copyWith(
        latestWord: newWord,
        currentWord: diDto.mechanics.wordComposition
            .createNextCurrentWord(word: currentWord),
        words: updatedWords,
        wordWarning: wordWarning,
        phaseType: GamePhaseType.selectFuel,
      );
      emit(updatedState);
      final score = diDto.mechanics.score.getScoreFromWord(word: newWord);
      final playerId = levelPlayersBloc.state.currentPlayerId;
      levelPlayersBloc.onUpdatePlayerHighscore(
        UpdatePlayerHighscoreEvent(
          word: newWord,
          score: score,
          playerId: playerId,
        ),
      );
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
      actionMultiplier: event.multiplier,
    );
    emit(updatedState);
  }

  void onLevelPlayerEndTurnAction(
    final LevelBlocEventEndTurn event,
  ) {
    final liveState = state;
    final updatedState = liveState.copyWith(
      phaseType: GamePhaseType.entryWord,
    );
    emit(updatedState);

    final levelPlayersBloc = diDto.levelPlayersBloc;
    final liveLevelPlayerState = levelPlayersBloc.state;
    final scoreMechanics = diDto.mechanics.score;

    final appliedScore = scoreMechanics.getScoreForStorageEnergyByModifier(
      multiplier: liveState.actionMultiplier,
      availableScore: liveLevelPlayerState.currentPlayer.highscore.score,
    );
    levelPlayersBloc.onRefuelStorage(RefuelStorageEvent(score: appliedScore));

    final playerId = levelPlayersBloc.state.currentPlayerId;
    levelPlayersBloc
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
    return diDto.mechanics.dictionary.getWordSuggestion(
      exceptions: liveState.words.keys,
      characters: liveState.currentWord.middlePart,
    );
  }

  void onUnblockIndex({
    required final int index,
  }) {
    final updatedWord = diDto.mechanics.wordComposition.unblockInactiveIndex(
      index: index,
      currentWord: state.currentWord,
    );
    final updatedState = state.copyWith(
      currentWord: updatedWord,
    );

    emit(updatedState);
    final playerId = diDto.levelPlayersBloc.state.currentPlayerId;
    final score = diDto.mechanics.score.getDecreaseScore(lettersCount: 1);
    diDto.levelPlayersBloc.onUpdatePlayerHighscore(
      UpdatePlayerHighscoreEvent(
        score: score,
        playerId: playerId,
      ),
    );
  }
}
