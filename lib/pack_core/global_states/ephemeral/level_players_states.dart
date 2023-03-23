// ignore_for_file: invalid_annotation_target

part of 'level_players_bloc.dart';

@immutable
abstract class LevelPlayersBlocState {
  const LevelPlayersBlocState();
}

@immutable
class EmptyLevelPlayersBlocState extends LevelPlayersBlocState {
  const EmptyLevelPlayersBlocState();
}

@immutable
@freezed
class LiveLevelPlayersBlocState extends LevelPlayersBlocState
    with _$LiveLevelPlayersBlocState {
  @Implements<LevelPlayersBlocState>()
  const factory LiveLevelPlayersBlocState({
    required final List<PlayerProfileModel> players,
    required final PlayerProfileModelId currentPlayerId,
    required final PlayerCharacterModel playerCharacter,
  }) = _LiveLevelPlayersBlocState;
  const LiveLevelPlayersBlocState._();

  factory LiveLevelPlayersBlocState.fromModel({
    required final LevelPlayersModel levelPlayersModel,
    required final LevelCharactersModel levelCharactersModel,
  }) =>
      LiveLevelPlayersBlocState(
        currentPlayerId: levelPlayersModel.currentPlayerId,
        players: levelPlayersModel.players,
        playerCharacter: levelCharactersModel.playerCharacter,
      );

  Iterable<PlayerProfileModel> get notCurrentPlayers =>
      players.where((final player) => player.id != currentPlayerId);
  PlayerProfileModel get currentPlayer =>
      players.firstWhere((final player) => player.id == currentPlayerId);
}
