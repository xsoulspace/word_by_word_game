import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'level_players_bloc.freezed.dart';
part 'level_players_bloc.g.dart';
part 'level_players_events.dart';
part 'level_players_states.dart';

class LevelPlayersBlocDiDto {
  LevelPlayersBlocDiDto.use(final Locator read) : mechanics = read();
  final MechanicsCollection mechanics;
}

class LevelPlayersBloc extends Bloc<LevelPlayersEvent, LevelPlayersBlocState> {
  LevelPlayersBloc({
    required this.diDto,
  }) : super(const EmptyLevelPlayersBlocState()) {
    on<LoadLevelPlayersEvent>(_onLoadLevelPlayers);
    on<SwitchToNextPlayerEvent>(_onSwitchToNextPlayer);
  }
  final LevelPlayersBlocDiDto diDto;

  void _onLoadLevelPlayers(
    final LoadLevelPlayersEvent event,
    final Emitter<LevelPlayersBlocState> emit,
  ) {
    emit(event.liveState);
  }

  void _onSwitchToNextPlayer(
    final SwitchToNextPlayerEvent event,
    final Emitter<LevelPlayersBlocState> emit,
  ) {}
}
