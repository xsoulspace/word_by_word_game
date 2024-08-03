import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:map_editor/state/models/models.dart';
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
      : dto = LevelPlayersBlocDiDto.use(context),
        super(LevelPlayersBlocState.empty);
  final LevelPlayersBlocDiDto dto;
  final _log = Logger();
  PlayerCharacterModel get playerCharacter => state.playerCharacter;
  Gid get focusedObjectId => state.focusedObjectGid;
  bool get isPlayerFocused => focusedObjectId.isEmpty;
  void changeFocusedObjectId(final Gid value) => emit(
        state.copyWith(focusedObjectGid: value),
      );
  void focusToPlayer() => changeFocusedObjectId(Gid.empty);

  RenderObjectModel get focusedObject {
    final id = focusedObjectId;
    if (id.isEmpty) return dto.canvasCubit.canvasData.playerObject;
    return dto.canvasCubit.objects[id]!;
  }

  @override
  Future<void> close() {
    _log.close();
    return super.close();
  }

  bool get isPlayersEmpty =>
      state.players.isEmpty || state.players.first.name.isEmpty;
  bool get isPlayersNotEmpty => !isPlayersEmpty;

  void onInitLevelPlayers(
    final InitLevelPlayersEvent event,
  ) {
    // _log.d('distanceToOrigin: ${diDto.canvasCubit.player.distanceToOrigin}');
    final liveState = LevelPlayersBlocState.fromModel(
      levelPlayersModel: event.playersModel,
      levelCharactersModel: event.charactersModel.copyWith.playerCharacter(
        gid: dto.canvasCubit.player.id,
        distanceToOrigin: dto.canvasCubit.player.distanceToOrigin,
      ),
    );
    emit(liveState);
    dto.statesStatusesCubit.onLevelPartLoaded(
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

  void onChangeCharacter(final PlayerCharacterModel value) =>
      emit(state.copyWith(playerCharacter: value));

  double get powerUsage => playerCharacter.balloonParams.powerUsage;
  void onPowerUsageChange(final String? value) => onChangeCharacter(
        playerCharacter.copyWith.balloonParams(
          powerUsage: double.tryParse(value ?? '') ?? 0,
        ),
      );

  void onChangeCharacterPosition({
    required final Vector2 distanceToOrigin,
    required final LiftForceModel liftForce,
  }) =>
      onChangeCharacter(
        playerCharacter.copyWith(
          distanceToOrigin: distanceToOrigin.toSerializedVector2(),
          balloonPowers: liftForce.updatedPowers,
        ),
      );

  /// Saves distanceToOrigin (as checkpoint) for hot air balloon to restore it
  /// after object was crashed.
  ///
  /// Algorithm:
  ///
  /// Saves current player distanceToOrigin, since
  /// player in that case should always be on the ground near
  /// tent (focused object)
  void onChangeCharacterCheckpointPosition() {
    // TODO(arenukvern): get distanceToOrigin from focusedObject
    // and apply it to character

    onChangeCharacter(
      playerCharacter.copyWith(
        checkpointDistanceToOrigin: playerCharacter.distanceToOrigin,
      ),
    );
  }

  void onRefuelStorage(
    final RefuelStorageEvent event,
  ) {
    final scoreMechanics = dto.mechanics.score;
    final power = scoreMechanics.convertScoreToPower(
      score: event.score,
    );
    final updatedState = state.copyWith.playerCharacter(
      balloonPowers: playerCharacter.balloonPowers.copyWith(
        power: playerCharacter.balloonPowers.power + power,
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
    final updatedPlayer = dto.mechanics.score.countPlayerHighscore(
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
