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
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LiveLevelPlayersBlocState extends LevelPlayersBlocState
    with _$LiveLevelPlayersBlocState {
  @JsonSerializable(
    explicitToJson: true,
  )
  @Implements<LevelPlayersBlocState>()
  const factory LiveLevelPlayersBlocState({
    required final List<PlayerProfileModel> players,
    required final PlayerProfileModelId currentPlayerId,
    required final PlayerCharacterModel playerCharacter,
  }) = _LiveLevelPlayersBlocState;
  const LiveLevelPlayersBlocState._();
  factory LiveLevelPlayersBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LiveLevelPlayersBlocStateFromJson(json);

  factory LiveLevelPlayersBlocState.fromModel({
    required final LevelPlayersModel levelPlayersModel,
    required final LevelCharactersModel levelCharactersModel,
  }) {
    return LiveLevelPlayersBlocState(
      currentPlayerId: levelPlayersModel.currentPlayerId,
      players: levelPlayersModel.players,
      playerCharacter: levelCharactersModel.playerCharacter,
    );
  }
}
