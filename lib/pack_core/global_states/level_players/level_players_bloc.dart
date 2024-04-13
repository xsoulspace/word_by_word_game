import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'level_players_bloc.freezed.dart';
part 'level_players_events.dart';
part 'level_players_states.dart';

class LevelPlayersBlocDiDto {
  LevelPlayersBlocDiDto.use(final BuildContext context)
      : mechanics = context.read(),
        statesStatusesCubit = context.read(),
        canvasCubit = context.read();
  final StatesStatusesCubit statesStatusesCubit;
  final CanvasCubit canvasCubit;
  final MechanicsCollection mechanics;
}

class LevelPlayersBloc extends Cubit<LevelPlayersBlocState> {
  LevelPlayersBloc(final BuildContext context)
      : diDto = LevelPlayersBlocDiDto.use(context),
        super(LevelPlayersBlocState.empty);
  final LevelPlayersBlocDiDto diDto;
  final _log = Logger();

  @override
  Future<void> close() {
    _log.close();
    return super.close();
  }

  void onInitLevelPlayers(
    final InitLevelPlayersEvent event,
  ) {
    _log.d('distanceToOrigin: ${diDto.canvasCubit.player.distanceToOrigin}');
    final liveState = LevelPlayersBlocState.fromModel(
      levelPlayersModel: event.playersModel,
      levelCharactersModel: event.charactersModel.copyWith.playerCharacter(
        gid: diDto.canvasCubit.player.id,
        distanceToOrigin: diDto.canvasCubit.player.distanceToOrigin,
      ),
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
  ) =>
      emit(state.copyWith(playerCharacter: value));

  void onChangeCharacterPosition({
    required final Vector2 distanceToOrigin,
    required final LiftForceModel liftForce,
  }) {
    final updatedState = state.copyWith(
      playerCharacter: state.playerCharacter.copyWith(
        distanceToOrigin: distanceToOrigin.toSerializedVector2(),
        balloonPowers: liftForce.updatedPowers,
      ),
    );

    emit(updatedState);
  }

  void onRefuelStorage(
    final RefuelStorageEvent event,
  ) {
    final scoreMechanics = diDto.mechanics.score;
    final power = scoreMechanics.convertScoreToPower(
      score: event.score,
    );
    final updatedState = state.copyWith(
      playerCharacter: state.playerCharacter.copyWith(
        balloonPowers: state.playerCharacter.balloonPowers.copyWith(
          power: state.playerCharacter.balloonPowers.power + power,
        ),
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
