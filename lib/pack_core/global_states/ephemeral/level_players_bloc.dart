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
        _read = read;
  final Locator _read;
  GlobalGameBloc get globalGameBloc => _read();
  final MechanicsCollection mechanics;
}

class LevelPlayersBloc extends Bloc<LevelPlayersEvent, LevelPlayersBlocState> {
  LevelPlayersBloc({
    required this.diDto,
  }) : super(const EmptyLevelPlayersBlocState()) {
    on<InitLevelPlayersEvent>(_onInitLevelPlayers);
    on<SwitchToNextPlayerEvent>(_onSwitchToNextPlayer);
    on<ConsumeFuelEvent>(_consumeCharacterFuel);
    on<RefuelStorageEvent>(_onRefuelStorage);
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
    final liveState = getLiveState();
    final players = [...liveState.players];

    if (players.length == 1) {
      return;
    } else {
      final currentPlayer = liveState.currentPlayer;

      final updatedPlayers = [...players]
        ..removeWhere((final player) => player.id == currentPlayer.id)
        ..add(currentPlayer);
      final newPlayer = updatedPlayers.first;

      final updatedState = liveState.copyWith(
        currentPlayerId: newPlayer.id,
        players: updatedPlayers,
      );

      emit(updatedState);
    }
  }

  void _consumeCharacterFuel(
    final ConsumeFuelEvent event,
    final Emitter<LevelPlayersBlocState> emit,
  ) {
    final liveState = getLiveState();
    final updatedState = liveState.copyWith(
      playerCharacter: liveState.playerCharacter.copyWith(
        fuel: event.fuel,
      ),
    );

    emit(updatedState);
  }

  void _onRefuelStorage(
    final RefuelStorageEvent event,
    final Emitter<LevelPlayersBlocState> emit,
  ) {
    final liveState = getLiveState();
    final fuelMechanics = diDto.mechanics.fuel;
    final fuel = fuelMechanics.getFuelFromScore(score: event.score);
    final fuelStorage = fuelMechanics.refuel(
      fuelStorage: liveState.playerCharacter.fuel,
      fuel: fuel,
    );
    final updatedState = liveState.copyWith(
      playerCharacter: liveState.playerCharacter.copyWith(
        fuel: fuelStorage,
      ),
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
