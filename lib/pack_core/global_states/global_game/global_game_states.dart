// ignore_for_file: invalid_annotation_target

part of 'global_game_bloc.dart';

@immutable
@freezed
class GlobalGameBlocState with _$GlobalGameBlocState {
  const factory GlobalGameBlocState({
    /// ********************************************
    /// *      RESTORABLE FROM MODEL
    /// ********************************************

    @Default('') final GameModelId id,
    @Default(CanvasDataModelId.empty) final CanvasDataModelId currentLevelId,

    /// Current Level Model is a model with all level configurations
    /// chosen by the user (players, characters, etc).
    /// It should not be update or changed during the playing the level.
    /// It should be set during the level first initialization
    /// (When the player clicks play button).
    final LevelModel? currentLevelModel,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,
    @Default({}) final Map<CanvasDataModelId, LevelModel> levels,
    @Default([]) final List<TemplateLevelModel> templateLevels,

    /// The [playersCollection] is the collection of players characters,
    /// which will be available for user to playe and progress through the game.
    @Default([]) final List<PlayerProfileModel> playersCollection,
    @Default([]) final List<PlayerCharacterModel> playersCharacters,

    /// ********************************************
    /// *      NON-RESTORABLE
    /// ********************************************
    @Default(0) final int dateTimeDelta,
  }) = _GlobalGameBlocState;
  const GlobalGameBlocState._();

  factory GlobalGameBlocState.fromModel(final GameModel gameModel) =>
      GlobalGameBlocState(
        currentLevelId: gameModel.currentLevelId,
        currentLevelModel: gameModel.currentLevel,
        id: gameModel.id,
        dateTime: gameModel.dateTime,
        lastDateTime: gameModel.lastDateTime,
        levels: gameModel.levels,
        templateLevels: gameModel.templateLevels,
        playersCollection: gameModel.playersCollection,
        playersCharacters: gameModel.playersCharacters,
      );
}
