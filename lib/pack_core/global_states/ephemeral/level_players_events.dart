part of 'level_players_bloc.dart';

@freezed
class LevelPlayerEvent with _$LevelPlayerEvent {
  const factory LevelPlayerEvent.init({
    required final LevelPlayersModel playersModel,
    required final LevelCharactersModel charactersModel,
  }) = InitLevelPlayersEvent;
  const factory LevelPlayerEvent.switchToNextPlayer() = SwitchToNextPlayerEvent;
  const factory LevelPlayerEvent.consumeFuel({
    required final FuelStorageModel fuel,
  }) = ConsumeFuelEvent;
  const factory LevelPlayerEvent.changeCharacterPosition({
    required final Vector2 position,
  }) = ChangeCharacterPositionEvent;
  const factory LevelPlayerEvent.refuelStorage({
    required final ScoreModel score,
  }) = RefuelStorageEvent;
  const factory LevelPlayerEvent.updatePlayerHighscore({
    required final PlayerProfileModelId playerId,
    required final ScoreModel score,
    final String? word,
  }) = UpdatePlayerHighscoreEvent;
}
