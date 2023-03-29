// ignore_for_file: invalid_annotation_target

part of 'level_players_bloc.dart';

@immutable
@freezed
class LevelPlayersBlocState with _$LevelPlayersBlocState {
  const factory LevelPlayersBlocState.empty() = EmptyLevelPlayersBlocState;
  const factory LevelPlayersBlocState.live({
    required final List<PlayerProfileModel> players,
    required final PlayerProfileModelId currentPlayerId,
    required final PlayerCharacterModel playerCharacter,
  }) = LiveLevelPlayersBlocState;

  // ignore: prefer_constructors_over_static_methods
  static LiveLevelPlayersBlocState liveFromModel({
    required final LevelPlayersModel levelPlayersModel,
    required final LevelCharactersModel levelCharactersModel,
  }) =>
      LiveLevelPlayersBlocState(
        currentPlayerId: levelPlayersModel.currentPlayerId,
        players: levelPlayersModel.players,
        playerCharacter: levelCharactersModel.playerCharacter,
      );
}

extension LiveLevelPlayersBlocStateExtension on LiveLevelPlayersBlocState {
  Iterable<PlayerProfileModel> get notCurrentPlayers =>
      players.where((final player) => player.id != currentPlayerId);
  PlayerProfileModel get currentPlayer =>
      players.firstWhere((final player) => player.id == currentPlayerId);
}
