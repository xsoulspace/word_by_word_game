import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'level_players_bloc.freezed.dart';
part 'level_players_events.dart';
part 'level_players_states.dart';

class LevelPlayersBlocDiDto {
  LevelPlayersBlocDiDto.use(final BuildContext context)
      : mechanics = context.read(),
        statesStatusesCubit = context.read();
  final StatesStatusesCubit statesStatusesCubit;
  final MechanicsCollection mechanics;
}

class LevelPlayersBloc extends Cubit<LevelPlayersBlocState> {
  LevelPlayersBloc({
    required this.diDto,
  }) : super(LevelPlayersBlocState.empty);
  final LevelPlayersBlocDiDto diDto;

  void onInitLevelPlayers(
    final InitLevelPlayersEvent event,
  ) {
    final liveState = LevelPlayersBlocState.fromModel(
      levelPlayersModel: event.playersModel,
      levelCharactersModel: event.charactersModel,
    );
    emit(liveState);
    diDto.statesStatusesCubit.onLevelPartLoaded(
      levelPartName: LevelPartName.players,
    );
  }

  void onSwitchToNextPlayer(
    final SwitchToNextPlayerEvent event,
  ) {
    final players = [...state.players];

    if (players.length == 1) {
      return;
    } else {
      final currentPlayer = state.currentPlayer;

      final updatedPlayers = [...players]
        ..removeWhere((final player) => player.id == currentPlayer.id)
        ..add(currentPlayer);
      final newPlayer = updatedPlayers.first;

      final updatedState = state.copyWith(
        currentPlayerId: newPlayer.id,
        players: updatedPlayers,
      );

      emit(updatedState);
    }
  }

  void onChangeCharacter(
    final PlayerCharacterModel value,
  ) {
    emit(state.copyWith(playerCharacter: value));
  }

  void onChangeCharacterPosition({
    required final Vector2 position,
    required final LiftForceModel liftForce,
  }) {
    final updatedState = state.copyWith(
      playerCharacter: state.playerCharacter.copyWith(
        position: SerializedVector2(x: position.x, y: position.y),
        balloonPowers: liftForce.updatedPowers,
      ),
    );

    emit(updatedState);
  }

  void onRefuelStorage(
    final RefuelStorageEvent event,
  ) {
    final fuelMechanics = diDto.mechanics.fuel;
    final fuel = fuelMechanics.getFuelFromScore(score: event.score);
    final fuelStorage = fuelMechanics.refuel(
      fuelStorage: const FuelStorageModel(), //state.playerCharacter.power,
      fuel: fuel,
    );
    final updatedState = state.copyWith(
      playerCharacter: state.playerCharacter.copyWith(
        balloonPowers: const BalloonLiftPowersModel(),
      ),
    );
    emit(updatedState);
  }

  void onUpdatePlayerHighscore(
    final UpdatePlayerHighscoreEvent event,
  ) {
    final updatedPlayers = [...state.players];
    final index = updatedPlayers
        .indexWhere((final player) => player.id == event.playerId);
    if (index < 0) {
      // TODO(arenukvern): add exception
      return;
    }
    final player = state.players[index];
    final updatedPlayer = diDto.mechanics.score.countPlayerHighscore(
      player: player,
      score: event.score,
      word: event.word,
    );
    updatedPlayers[index] = updatedPlayer;

    final updatedState = state.copyWith(
      players: updatedPlayers,
    );
    emit(updatedState);
  }
}
