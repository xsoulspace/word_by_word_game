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
    on<WorldTimeTickEvent>(_onWorldTimeTick);
    on<ChangeCurrentWordEvent>(_onChangeCurrentWord);
    on<AcceptNewWordEvent>(_onAcceptNewWord);
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

  void _onWorldTimeTick(
    final WorldTimeTickEvent event,
    final Emitter<LevelBlocState> emit,
  ) {}

  void _onChangeCurrentWord(
    final ChangeCurrentWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final effectiveState = state;
    if (effectiveState is! LiveLevelBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    final newState = effectiveState.copyWith(
      currentWord: event.word,
    );
    emit(newState);
  }

  void _onAcceptNewWord(
    final AcceptNewWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final effectiveState = state;
    if (effectiveState is! LiveLevelBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    final newWord = effectiveState.currentWord.fullWord;
    final updatedWords = {
      ...effectiveState.words,
    }..[newWord] = diDto.levelPlayersBloc.getLiveState().currentPlayerId;
    final updatedState = effectiveState.copyWith(
      latestWord: newWord,
      currentWord: const CurrentWordModel(
        middlePart: '',
      ),
      words: updatedWords,
    );
    emit(updatedState);
    diDto.levelPlayersBloc.add(const SwitchToNextPlayerEvent());
    // TODO(arenukvern): countdown reset event
  }

  LiveLevelBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveLevelBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }
}
