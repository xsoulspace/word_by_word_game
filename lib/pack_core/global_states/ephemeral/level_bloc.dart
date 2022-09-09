import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

part 'level_events.dart';
part 'level_states.dart';

class LevelBloc extends Bloc<LevelEvent, LevelState> {
  LevelBloc() : super(const LevelState.initial());
}
