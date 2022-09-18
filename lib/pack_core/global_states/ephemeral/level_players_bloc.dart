import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/ephemeral/global_game_bloc.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'level_players_bloc.freezed.dart';
part 'level_players_bloc.g.dart';
part 'level_players_events.dart';
part 'level_players_states.dart';

class LevelPlayersBlocDiDto {
  LevelPlayersBlocDiDto.use(final Locator read)
      : mechanics = read(),
        globalGameBloc = read();
  final MechanicsCollection mechanics;
  final GlobalGameBloc globalGameBloc;
}

class LevelPlayersBloc extends Bloc<LevelPlayersEvent, LevelPlayersBlocState> {
  LevelPlayersBloc({
    required this.diDto,
  }) : super(const EmptyLevelPlayersBlocState()) {
    on<InitLevelPlayersEvent>(_onInitLevelPlayers);
    on<SwitchToNextPlayerEvent>(_onSwitchToNextPlayer);
  }
  final LevelPlayersBlocDiDto diDto;

  void _onInitLevelPlayers(
    final InitLevelPlayersEvent event,
    final Emitter<LevelPlayersBlocState> emit,
  ) {
    final liveState = LiveLevelPlayersBlocState.fromModel(
      levelPlayersModel: event.playersModel,
      levelCharactersModel: event.charactersModel,
    );
    emit(liveState);
    diDto.globalGameBloc.add(
      const LevelPartLoadedEvent(loadedState: LevelPartStates.players),
    );
  }

  void _onSwitchToNextPlayer(
    final SwitchToNextPlayerEvent event,
    final Emitter<LevelPlayersBlocState> emit,
  ) {
    final effectiveState = state;
    if (effectiveState is! LiveLevelPlayersBlocState) {
      throw ArgumentError.value(state);
    }
    final players = effectiveState.players;
    final index = players.indexWhere(
      (final player) => player.id == effectiveState.currentPlayerId,
    );
    if (index < 0) {
      throw ArgumentError.value(
        index,
        '_onSwitchToNextPlayer -> find index of the current player',
        'currentPlayerId is not presented in the state.',
      );
    }
    final nextIndex = index + 1;
    final lastIndex = players.length - 1;

    PlayerProfileModel newPlayer;
    if (nextIndex > lastIndex) {
      newPlayer = players.first;
    } else {
      newPlayer = players[nextIndex];
    }

    final updatedState = effectiveState.copyWith(
      currentPlayerId: newPlayer.id,
    );

    emit(updatedState);
  }

  LiveLevelPlayersBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveLevelPlayersBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }
}
