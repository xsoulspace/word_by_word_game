// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

typedef GameSaveModelId = String;

enum GameVersion { $1, $2, $3, $4, $5 }

const kLatestGameVersion = GameVersion.$5;

@immutable
@freezed
abstract class GameSaveModel with _$GameSaveModel {
  @JsonSerializable(explicitToJson: true)
  const factory GameSaveModel({
    required final GameSaveModelId id,

    /// Id of current level
    required final CanvasDataModelId currentLevelId,

    /// Saved level configuration to get player an option to restart a level
    final LevelModel? currentLevel,
    @Default(kLatestGameVersion) final GameVersion version,

    /// Global players statistics and data.
    @Default([]) final List<PlayerProfileModel> playersCollection,
    @Default([]) final List<PlayerCharacterModel> playersCharacters,
    @Default(TutorialCollectionsProgressModel.empty)
    final TutorialCollectionsProgressModel tutorialProgress,
    @JsonKey(
      fromJson: GameSaveModel._savedLevelsFromJson,
      toJson: GameSaveModel._savedLevelsToJson,
    )
    @Default({})
    final Map<CanvasDataModelId, LevelModel> savedLevels,
  }) = _GameModel;
  const GameSaveModel._();
  factory GameSaveModel.fromJson(final Map<String, dynamic> json) =>
      _$GameSaveModelFromJson(json);
  static Map<CanvasDataModelId, LevelModel> _savedLevelsFromJson(
    final Map<String, dynamic> json,
  ) => json.map(
    (final key, final value) =>
        MapEntry(CanvasDataModelId.fromJson(key), LevelModel.fromJson(value)),
  );
  static Map<String, dynamic> _savedLevelsToJson(
    final Map<CanvasDataModelId, LevelModel> data,
  ) =>
      data.map((final key, final value) => MapEntry(key.value, value.toJson()));
}
