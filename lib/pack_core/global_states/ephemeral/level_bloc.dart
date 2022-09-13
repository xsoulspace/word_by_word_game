import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

part 'level_bloc.freezed.dart';
part 'level_bloc.g.dart';
part 'level_events.dart';
part 'level_states.dart';

class LevelBlocDiDto {
  LevelBlocDiDto.use(final Locator read) : mechanics = read();
  final MechanicsCollection mechanics;
}

class LevelBloc extends Bloc<LevelEvent, LevelBlocState> {
  LevelBloc({
    required this.diDto,
  }) : super(LevelBlocState.empty) {
    on<LoadLevelEvent>(_onLoadLevel);
    on<WorldTimeTickEvent>(_onWorldTimeTick);
    on<ChangeCurrentWordEvent>(_onChangeCurrentWord);
    on<AcceptNewWordEvent>(_onAcceptNewWord);
  }
  final LevelBlocDiDto diDto;

  void _onLoadLevel(
    final LoadLevelEvent event,
    final Emitter<LevelBlocState> emit,
  ) {}

  void _onWorldTimeTick(
    final WorldTimeTickEvent event,
    final Emitter<LevelBlocState> emit,
  ) {}

  void _onChangeCurrentWord(
    final ChangeCurrentWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final newState = state.copyWith(
      currentWord: event.word,
    );
    emit(newState);
  }

  void _onAcceptNewWord(
    final AcceptNewWordEvent event,
    final Emitter<LevelBlocState> emit,
  ) {
    final newWord = state.currentWord.fullWord;
    // final updatedWords =  {
    //     ...state.words,
    //   }..[newWord] = ;

    // final updatedState = state.copyWith(
    //   latestWord: newWord,
    //   words:updatedWords,
    // );
    // emit(updatedState);
  }
}
