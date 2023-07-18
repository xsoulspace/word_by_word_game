// ignore_for_file: invalid_annotation_target

part of 'level_players_bloc.dart';

@immutable
@freezed
class LevelPlayersBlocState with _$LevelPlayersBlocState {
  const factory LevelPlayersBlocState({
    @Default([]) final List<PlayerProfileModel> players,
    @Default('') final PlayerProfileModelId currentPlayerId,
    @Default(PlayerCharacterModel.empty)
    final PlayerCharacterModel playerCharacter,
  }) = _LevelPlayersBlocState;
  const LevelPlayersBlocState._();
  static const empty = LevelPlayersBlocState();
  // ignore: prefer_constructors_over_static_methods
  static LevelPlayersBlocState fromModel({
    required final LevelPlayersModel levelPlayersModel,
    required final LevelCharactersModel levelCharactersModel,
  }) =>
      LevelPlayersBlocState(
        currentPlayerId: levelPlayersModel.currentPlayerId,
        players: levelPlayersModel.players,
        playerCharacter: levelCharactersModel.playerCharacter,
      );
  bool get isEmpty => currentPlayerId.isEmpty;
  bool get isNotEmpty => currentPlayerId.isNotEmpty;
}

extension LevelPlayersBlocStateExtension on LevelPlayersBlocState {
  Iterable<PlayerProfileModel> get notCurrentPlayers =>
      players.where((final player) => player.id != currentPlayerId);
  PlayerProfileModel get currentPlayer =>
      players.firstWhere((final player) => player.id == currentPlayerId);
}
