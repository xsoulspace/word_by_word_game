part of 'global_game_bloc.dart';

@immutable
@freezed
sealed class GameEvent with _$GameEvent {
  const factory GameEvent.startPlayingLevel({
    @Default(true) final bool shouldRestartTutorial,
  }) = StartPlayingLevelEvent;
  const factory GameEvent.initGlobalGameLevel({
    required final LevelModel levelModel,
    @Default(true) final bool isNewStart,
  }) = InitGlobalGameLevelEvent;
  const factory GameEvent.deletePlayerProfile({
    required final PlayerProfileModel profile,
  }) = DeletePlayerProfileEvent;
  const factory GameEvent.createPlayerProfile({
    required final PlayerProfileModel profile,
  }) = CreatePlayerProfileEvent;
  const factory GameEvent.saveGame() = SaveGameEvent;
  const factory GameEvent.saveCurrentLevel() = SaveCurrentLevelEvent;
  const factory GameEvent.endLevel({
    required final bool isPassed,
    required final double maxDistance,
  }) = EndLevelEvent;

  static const nonPassedEndLevel = EndLevelEvent(
    isPassed: false,
    maxDistance: 0,
  );
}
