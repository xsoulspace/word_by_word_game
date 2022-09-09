import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

part 'level_events.dart';
part 'level_states.dart';

class LevelBloc extends Bloc<LevelEvent, LevelState> {
  LevelBloc() : super(const LevelState.initial()) {
    on<LoadLevelEvent>(_onLoadLevel);
    on<WorldTimeTickEvent>(_onWorldTimeTick);
  }

  void _onLoadLevel(
    final LoadLevelEvent event,
    final Emitter<LevelState> emit,
  ) {}

  void _onWorldTimeTick(
    final WorldTimeTickEvent event,
    final Emitter<LevelState> emit,
  ) {}
}
