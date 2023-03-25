import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'level_bloc.freezed.dart';
part 'level_bloc_events.dart';
part 'level_bloc_states.dart';

class LevelBlocDiDto {
  LevelBlocDiDto.use(final Locator read)
      : mechanics = read(),
        levelPlayersBloc = read(),
        dictionaryBloc = read(),
        _read = read;
  final Locator _read;
  GlobalGameBloc get globalGameBloc => _read();
  final MechanicsCollection mechanics;
  final LevelPlayersBloc levelPlayersBloc;
  final DictionariesBloc dictionaryBloc;
}

class LevelBloc extends Bloc<LevelBlocEvent, LevelBlocState> {
  LevelBloc({
    required this.diDto,
  }) : super(const EmptyLevelBlocState()) {
    on<InitLevelEvent>(_onInitLevel);
    on<ConsumeTickEvent>(_consumeTickEvent);
    on<ChangeCurrentWordEvent>(_onChangeCurrentWord);
    on<AcceptNewWordEvent>(_onAcceptNewWord);
    on<AddNewWordToDictionaryEvent>(_onAddNewWordToDictionary);
    on<DecreaseMiddlePartEvent>(_onDecreaseMiddlePart);
    on<LevelPlayerEndTurnActionEvent>(_onLevelPlayerEndTurnAction);
    on<LevelPlayerSelectActionMultiplierEvent>(
      _onLevelPlayerSelectActionMultiplier,
    );
  }

  static bool Function(
    LevelBlocState previous,
    LevelBlocState current,
  ) useCheckStateEqualityBuilder({
    required final bool Function(
      LiveLevelBlocState previous,
      LiveLevelBlocState current,
    )
        checkLiveState,
  }) =>
      (final previous, final current) {
        if (previous is LiveLevelBlocState && current is! LiveLevelBlocState) {
          return true;
        }
        if (previous is! LiveLevelBlocState && current is LiveLevelBlocState) {
          return true;
        }
        if (current is LiveLevelBlocState && previous is LiveLevelBlocState) {
          return checkLiveState(current, previous);
        }

        return false;
      };

  final LevelBlocDiDto diDto;

  void _onInitLevel(
    final InitLevelEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final liveLevel = LiveLevelBlocState.fromModel(event.levelModel);
    emit(liveLevel);
    diDto.globalGameBloc.add(
      const LevelPartLoadedEvent(loadedState: LevelPartStates.level),
    );
  }

  void _consumeTickEvent(
    final ConsumeTickEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    // noop
  }

  void _onChangeCurrentWord(
    final ChangeCurrentWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final newState = getLiveState().copyWith(
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
      words: getLiveState().words,
    );
    if (word.cleanWord.isEmpty) {
      return WordWarning.none;
    }

    if (isWritten) {
      return WordWarning.isWritten;
    }
    final isCorrect = dicionaryMechanics.checkIsWordIsCorrect(
      word: word,
      localDictionary: diDto.dictionaryBloc.getLiveState().localDictionary,
    );
    if (!isCorrect) {
      return WordWarning.isNotCorrect;
    }
    return WordWarning.none;
  }

  void _onAddNewWordToDictionary(
    final AddNewWordToDictionaryEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final liveState = getLiveState();
    diDto.dictionaryBloc.add(
      AddWordToDictionaryBlocEvent(word: liveState.currentWord.cleanWord),
    );
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      add(const AcceptNewWordEvent());
    });
  }

  void _onAcceptNewWord(
    final AcceptNewWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final liveState = getLiveState();
    final effectiveCurrentWord = event.word ?? liveState.currentWord;
    final newWord = effectiveCurrentWord.cleanWord;
    if (newWord.isEmpty) return;

    final wordWarning = _checkNewWord(effectiveCurrentWord);
    if (wordWarning == WordWarning.none) {
      final levelPlayersBloc = diDto.levelPlayersBloc;
      final updatedWords = {
        ...liveState.words,
      }..[newWord] = levelPlayersBloc.getLiveState().currentPlayerId;
      final updatedState = liveState.copyWith(
        latestWord: newWord,
        currentWord: diDto.mechanics.wordComposition
            .createNextCurrentWordFromFullWord(word: effectiveCurrentWord),
        words: updatedWords,
        wordWarning: wordWarning,
        phaseType: GamePhaseType.selectFuel,
      );
      emit(updatedState);
      final score = diDto.mechanics.score.getScoreFromWord(word: newWord);
      final playerId = levelPlayersBloc.getLiveState().currentPlayerId;
      levelPlayersBloc.add(
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
  }

  void _onLevelPlayerSelectActionMultiplier(
    final LevelPlayerSelectActionMultiplierEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final liveState = getLiveState();
    final updatedState = liveState.copyWith(
      actionMultiplier: event.multiplier,
    );
    emit(updatedState);
  }

  void _onLevelPlayerEndTurnAction(
    final LevelPlayerEndTurnActionEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final liveState = getLiveState();
    final updatedState = liveState.copyWith(
      phaseType: GamePhaseType.entryWord,
    );
    emit(updatedState);

    final levelPlayersBloc = diDto.levelPlayersBloc;
    final scoreMechanics = diDto.mechanics.score;

    final appliedScore = scoreMechanics.getScoreForStorageEnergyByModifier(
      multiplier: liveState.actionMultiplier,
    );
    levelPlayersBloc.add(RefuelStorageEvent(score: appliedScore));

    final playerId = levelPlayersBloc.getLiveState().currentPlayerId;
    levelPlayersBloc
      ..add(
        UpdatePlayerHighscoreEvent(
          score: appliedScore * -1,
          playerId: playerId,
        ),
      )
      ..add(const SwitchToNextPlayerEvent());
  }

  String getWordSuggestion() {
    final liveState = getLiveState();
    return diDto.mechanics.dictionary.getWordSuggestion(
      exceptions: liveState.words.keys,
      letters: liveState.currentWord.middlePart,
    );
  }

  void _onDecreaseMiddlePart(
    final DecreaseMiddlePartEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final liveState = getLiveState();
    final updatedWord =
        diDto.mechanics.wordComposition.applyDecreaseMiddlePartType(
      index: event.index,
      currentWord: liveState.currentWord,
    );
    final updatedState = liveState.copyWith(
      currentWord: updatedWord,
    );

    emit(updatedState);
    final playerId = diDto.levelPlayersBloc.getLiveState().currentPlayerId;
    final score = diDto.mechanics.score.getDecreaseScore(lettersCount: 1);
    diDto.levelPlayersBloc.add(
      UpdatePlayerHighscoreEvent(
        score: score,
        playerId: playerId,
      ),
    );
  }

  LiveLevelBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveLevelBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }
}
