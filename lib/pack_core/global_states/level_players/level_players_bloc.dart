import 'package:flame/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'level_players_bloc.freezed.dart';
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
    diDto.globalGameBloc.onLevelPartLoaded(
      const LevelPartLoadedEvent(loadedState: LevelPartStates.players),
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

  void onConsumeCharacterFuel(
    final ConsumeFuelEvent event,
  ) {
    final updatedState = state.copyWith(
      playerCharacter: state.playerCharacter.copyWith(
        fuel: event.fuel,
      ),
    );

    emit(updatedState);
  }

  void onChangeCharacterPosition(
    final ChangeCharacterPositionEvent event,
  ) {
    final position = event.position;
    final updatedState = state.copyWith(
      playerCharacter: state.playerCharacter.copyWith(
        position: SerializedVector2(x: position.x, y: position.y),
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
      fuelStorage: state.playerCharacter.fuel,
      fuel: fuel,
    );
    final updatedState = state.copyWith(
      playerCharacter: state.playerCharacter.copyWith(
        fuel: fuelStorage,
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
