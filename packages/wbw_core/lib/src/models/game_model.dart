// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef GameModelId = String;

enum GameVersion { $1, $2 }

const kLatestGameVersion = GameVersion.$2;
const kPreviousGameVersion = GameVersion.$1;

@immutable
@freezed
class GameModel with _$GameModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory GameModel({
    required final GameModelId id,

    /// Levels that should be used to create [LevelModel]
    required final List<TemplateLevelModel> templateLevels,
    required final CanvasDataModelId currentLevelId,

    /// Saved level configuration to get player an option to restart a level
    final LevelModel? currentLevel,
    @Default(kPreviousGameVersion) final GameVersion version,

    /// Levels that player already started
    @JsonKey(
      fromJson: GameModel._levelsFromJson,
      toJson: GameModel._levelsToJson,
    )
    @Default({})
    final Map<CanvasDataModelId, LevelModel> levels,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,

    /// Global players statistics and data.
    @Default([]) final List<PlayerProfileModel> playersCollection,
    @Default([]) final List<PlayerCharacterModel> playersCharacters,
    @Default(TutorialCollectionsProgressModel.empty)
    final TutorialCollectionsProgressModel tutorialProgress,
  }) = _GameModel;
  const GameModel._();
  factory GameModel.fromJson(final Map<String, dynamic> json) =>
      _$GameModelFromJson(json);

  static Map<CanvasDataModelId, LevelModel> _levelsFromJson(
    final Map<String, dynamic> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          CanvasDataModelId.fromJson(key),
          LevelModel.fromJson(value),
        ),
      );

  static Map<String, dynamic> _levelsToJson(
    final Map<CanvasDataModelId, LevelModel> map,
  ) =>
      map.map((final key, final value) => MapEntry(key.value, value.toJson()));
}
