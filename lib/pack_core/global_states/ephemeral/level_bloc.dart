import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/level_players_bloc.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

part 'level_bloc.freezed.dart';
part 'level_bloc.g.dart';
part 'level_bloc_events.dart';
part 'level_bloc_states.dart';

class LevelBlocDiDto {
  LevelBlocDiDto.use(final Locator read)
      : mechanics = read(),
        levelPlayersBloc = read();
  final MechanicsCollection mechanics;
  final LevelPlayersBloc levelPlayersBloc;
}

class LevelBloc extends Bloc<LevelBlocEvent, LevelBlocState> {
  LevelBloc({
    required this.diDto,
  }) : super(const EmptyLevelBlocState()) {
    on<InitLevelEvent>(_onInitLevel);
    on<ConsumeTickEvent>(_consumeTickEvent);
    on<ChangeCurrentWordEvent>(_onChangeCurrentWord);
    on<AcceptNewWordEvent>(_onAcceptNewWord);
    on<RefuelStorageEvent>(_onRefuelStorage);
  }

  static bool Function(LevelBlocState previous, LevelBlocState current)
      useCheckStateEqualityBuilder({
    required final bool Function(
      LiveLevelBlocState previous,
      LiveLevelBlocState current,
    )
        checkLiveState,
  }) {
    return (final previous, final current) {
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
  }

  final LevelBlocDiDto diDto;

  void _onInitLevel(
    final InitLevelEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final liveLevel = LiveLevelBlocState.fromModel(event.levelModel);
    emit(liveLevel);
  }

  void _consumeTickEvent(
    final ConsumeTickEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final fuelStorage = diDto.mechanics.fuelMechanics.consumeTick(
      fuelStorage: getLiveState().fuelStorage,
      timeDeltaInSeconds: event.timeDeltaInSeconds,
    );

    final updatedState = getLiveState().copyWith(
      fuelStorage: fuelStorage,
    );

    emit(updatedState);
  }

  void _onRefuelStorage(
    final RefuelStorageEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final effectiveState = getLiveState();
    final fuelMechanics = diDto.mechanics.fuelMechanics;
    final fuel = fuelMechanics.getFuelFromScore(score: event.score);
    final fuelStorage = fuelMechanics.refuel(
      fuelStorage: effectiveState.fuelStorage,
      fuel: fuel,
    );
    final updatedState = effectiveState.copyWith(fuelStorage: fuelStorage);
    emit(updatedState);
  }

  void _onChangeCurrentWord(
    final ChangeCurrentWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final newState = getLiveState().copyWith(
      currentWord: event.word,
    );
    emit(newState);
  }

  void _onAcceptNewWord(
    final AcceptNewWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final effectiveState = getLiveState();
    final newWord = effectiveState.currentWord.fullWord;
    final updatedWords = {
      ...effectiveState.words,
    }..[newWord] = diDto.levelPlayersBloc.getLiveState().currentPlayerId;
    final updatedState = effectiveState.copyWith(
      latestWord: newWord,
      currentWord: diDto.mechanics.wordComposition
          .createNextCurrentWordFromFullWord(fullword: newWord),
      words: updatedWords,
    );
    emit(updatedState);
    diDto.levelPlayersBloc.add(const SwitchToNextPlayerEvent());
    final score =
        diDto.mechanics.scoreMechanics.getScoreFromWord(word: newWord);
    add(RefuelStorageEvent(score: score));
  }

  LiveLevelBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveLevelBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }
}
