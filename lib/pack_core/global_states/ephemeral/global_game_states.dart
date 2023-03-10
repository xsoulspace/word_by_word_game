// ignore_for_file: invalid_annotation_target

part of 'global_game_bloc.dart';

@immutable
abstract class GlobalGameBlocState {
  const GlobalGameBlocState();
}

@immutable
class EmptyGlobalGameBlocState extends GlobalGameBlocState {
  const EmptyGlobalGameBlocState();
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LiveGlobalGameBlocState extends GlobalGameBlocState
    with _$LiveGlobalGameBlocState {
  @JsonSerializable(explicitToJson: true)
  @Implements<GlobalGameBlocState>()
  const factory LiveGlobalGameBlocState({
    /// ********************************************
    /// *      RESTORABLE FROM MODEL
    /// ********************************************

    required final GameModelId id,
    @Default('') final LevelModelId currentLevelId,

    /// Current Level Model is a model with all level configurations
    /// chosen by the user (players, characters, etc).
    /// It should not be update or changed during the playing the level.
    /// It should be set during the level first initialization
    /// (When the player clicks play button).
    final LevelModel? currentLevelModel,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,
    @Default({}) final Map<LevelModelId, LevelModel> levels,
    @Default([]) final List<TemplateLevelModel> templateLevels,

    /// The [playersCollection] is the collection of players characters,
    /// which will be available for user to playe and progress through the game.
    @Default([]) final List<PlayerProfileModel> playersCollection,
    @Default([]) final List<PlayerCharacterModel> playersCharacters,

    /// ********************************************
    /// *      NON-RESTORABLE
    /// ********************************************
    @Default(0) final int dateTimeDelta,
    @Default({}) final Set<LevelPartStates> loadedLevelParts,
  }) = _LiveGlobalGameBlocState;
  const LiveGlobalGameBlocState._();
  factory LiveGlobalGameBlocState.fromJson(final Map<String, dynamic> json) =>
      _$LiveGlobalGameBlocStateFromJson(json);

  factory LiveGlobalGameBlocState.fromModel(final GameModel gameModel) =>
      LiveGlobalGameBlocState(
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

  bool get isLevelCompletelyLoaded =>
      LevelPartStates.containsAll(loadedLevelParts);
}
