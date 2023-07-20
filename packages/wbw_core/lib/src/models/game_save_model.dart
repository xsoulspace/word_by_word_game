// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef GameSaveModelId = String;

enum GameVersion { $1, $2 }

const kLatestGameVersion = GameVersion.$2;

@immutable
@freezed
class GameSaveModel with _$GameSaveModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory GameSaveModel({
    required final GameSaveModelId id,

    /// Id of current level
    required final CanvasDataModelId currentLevelId,

    /// Saved level configuration to get player an option to restart a level
    final LevelModel? currentLevel,
    @Default(kLatestGameVersion) final GameVersion version,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,

    /// Global players statistics and data.
    @Default([]) final List<PlayerProfileModel> playersCollection,
    @Default([]) final List<PlayerCharacterModel> playersCharacters,
    @Default(TutorialCollectionsProgressModel.empty)
    final TutorialCollectionsProgressModel tutorialProgress,
  }) = _GameModel;
  const GameSaveModel._();
  factory GameSaveModel.fromJson(final Map<String, dynamic> json) =>
      _$GameSaveModelFromJson(json);
}
