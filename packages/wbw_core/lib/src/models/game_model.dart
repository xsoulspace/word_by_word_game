// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef GameModelId = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class GameModel with _$GameModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory GameModel({
    required final GameModelId id,

    /// Levels that should be used to create [LevelModel]
    required final List<TemplateLevelModel> templateLevels,
    required final LevelModelId currentLevelId,

    /// Saved level configuration to get player an option to restart a level
    final LevelModel? currentLevel,

    /// Levels that player already started
    @Default({}) final Map<LevelModelId, LevelModel> levels,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,

    /// Global players statistics and data.
    @Default([]) final List<PlayerProfileModel> playersCollection,
    @Default([]) final List<PlayerCharacterModel> playersCharacters,
  }) = _GameModel;
  const GameModel._();
  factory GameModel.fromJson(final Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
