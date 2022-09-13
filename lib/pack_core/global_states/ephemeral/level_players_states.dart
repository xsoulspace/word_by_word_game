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
  }) = _LiveLevelPlayersBlocState;
  const LiveLevelPlayersBlocState._();
  factory LiveLevelPlayersBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LiveLevelPlayersBlocStateFromJson(json);

  factory LiveLevelPlayersBlocState.fromModel(
    final LevelPlayersModel levelPlayersModel,
  ) {
    return LiveLevelPlayersBlocState(
      currentPlayerId: levelPlayersModel.currentPlayerId,
      players: levelPlayersModel.players,
    );
  }
}
