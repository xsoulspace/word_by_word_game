// ignore_for_file: invalid_annotation_target

part of 'global_game_bloc.dart';

@immutable
@Freezed(fromJson: false, toJson: false)
class GlobalGameBlocState with _$GlobalGameBlocState {
  const factory GlobalGameBlocState({
    /// ********************************************
    /// *      RESTORABLE FROM MODEL
    /// ********************************************

    @Default('') final GameSaveModelId id,
    @Default(CanvasDataModelId.empty) final CanvasDataModelId currentLevelId,

    /// Should be loaded independently
    @Default({}) final Map<CanvasDataModelId, CanvasDataModel> allCanvasData,

    /// Current Level Model is a model with all level configurations
    /// chosen by the user (players, characters, etc).
    /// It should not be update or changed during the playing the level.
    /// It should be set during the level first initialization
    /// (When the player clicks play button).
    final LevelModel? currentLevelModel,
    @Default(WorldDateTimeModel.zero) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel.zero) final WorldDateTimeModel lastDateTime,

    /// The [playersCollection] is the collection of players characters,
    /// which will be available for user to playe and progress through the game.
    @Default([]) final List<PlayerProfileModel> playersCollection,
    @Default([]) final List<PlayerCharacterModel> playersCharacters,
    @Default({}) final Map<CanvasDataModelId, LevelModel> savedLevels,

    /// ********************************************
    /// *      NON-RESTORABLE
    /// ********************************************
    @Default(0) final int dateTimeDelta,
  }) = _GlobalGameBlocState;
  const GlobalGameBlocState._();

  factory GlobalGameBlocState.fromModel(final GameSaveModel gameModel) =>
      GlobalGameBlocState(
        currentLevelId: gameModel.currentLevelId,
        currentLevelModel: gameModel.currentLevel,
        id: gameModel.id,
        savedLevels: gameModel.savedLevels,
        dateTime: gameModel.currentLevel?.dateTime ?? WorldDateTimeModel.zero,
        lastDateTime:
            gameModel.currentLevel?.lastDateTime ?? WorldDateTimeModel.zero,
        playersCollection: gameModel.playersCollection,
        playersCharacters: gameModel.playersCharacters,
      );
  static Map<CanvasDataModelId, CanvasDataModel> allCanvasDataFromJson(
    final Map<String, dynamic> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          CanvasDataModelId.fromJson(key),
          CanvasDataModel.fromJson(value),
        ),
      );
  static Map<String, dynamic> allCanvasDataToJson(
    final Map<CanvasDataModelId, CanvasDataModel> data,
  ) =>
      data.map((final key, final value) => MapEntry(key.value, value.toJson()));
}
