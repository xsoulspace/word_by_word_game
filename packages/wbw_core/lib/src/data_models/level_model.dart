// ignore_for_file: invalid_annotation_target

// part of 'data_models.dart';
part of 'data_models.dart';

enum GamePhaseType { entryWord, selectAction }

enum EnergyMultiplierType {
  m1(namedPart: '1/3'),
  m2(namedPart: '2/3'),
  m3(namedPart: '3/3');

  const EnergyMultiplierType({required this.namedPart});
  final String namedPart;
}

enum PlayerStartPointType {
  fromSamePlace,

  /// wilderness hut (or other sort of hut),
  /// technology should be researched, and then
  /// player can create the new hut, whenever he wants
  fromSavePoint,

  /// first point, should be presented in level map
  fromSpawnPoint,
}

/// maybe rename to world level model
///
/// !Warning: do not make fields required, as the model will not be
/// compatible with older versions of the app.
@immutable
@freezed
class LevelModel with _$LevelModel {
  @JsonSerializable(explicitToJson: true)
  const factory LevelModel({
    required final LevelPlayersModel players,
    required final LevelCharactersModel characters,
    @Default(TilesetType.colourful) final TilesetType tilesetType,
    @Default([]) final List<WeatherModel> weathers,
    @Default(WindModel.zero) final WindModel wind,

    /// To get [CanvasDataModel] use [TemplateLevelModel.canvasData]
    /// comparing [LevelModel.canvasDataId] with [TemplateLevelModel.id]
    @Default(CanvasDataModelId.empty) final CanvasDataModelId canvasDataId,
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordString, PlayerProfileModelId> words,
    @Default('') final String latestWord,
    @Default(GamePhaseType.entryWord) final GamePhaseType phaseType,
    @Default(EnergyMultiplierType.m1)
    final EnergyMultiplierType actionMultiplier,
    @Default(WorldDateTimeModel.zero) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel.zero) final WorldDateTimeModel lastDateTime,
    @Default(TechnologyTreeProgressModel.empty)
    final TechnologyTreeProgressModel technologyTreeProgress,
    @Default(LevelFeaturesSettingsModel.empty)
    final LevelFeaturesSettingsModel featuresSettings,
    @Default(Languages.en) final Languages wordsLanguage,
    @Default(PlayerStartPointType.fromSpawnPoint)
    final PlayerStartPointType playerStartPoint,

    /// use these objects to save any objectss from any layer
    @Default({})
    @JsonKey(
      fromJson: CanvasDataModel.objectsFromJson,
      toJson: CanvasDataModel.objectsToJson,
    )
    final Map<Gid, RenderObjectModel> canvasObjects,

    /// savable layers
    @Default([]) final List<LayerModel> canvasLayers,
  }) = _LevelModel;
  const LevelModel._();
  factory LevelModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
  CanvasDataModelId get id => canvasDataId;
}

/// Ensures that when user is starting a game
/// he can start simple game, without
/// any "adventure" features, as technologies, etc
@freezed
class LevelFeaturesSettingsModel with _$LevelFeaturesSettingsModel {
  const factory LevelFeaturesSettingsModel({
    @Default(false) final bool isTechnologiesEnabled,

    /// if enabled, then wind can be changed in both directions
    /// left, or right during the flight
    ///
    /// In the same time, if this feature enabled,
    /// then there is no win scenario, since
    /// it makes no sense.
    @Default(false) final bool isWindDirectionChangeEnabled,
  }) = _LevelFeaturesSettingsModel;
  const LevelFeaturesSettingsModel._();
  factory LevelFeaturesSettingsModel.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$LevelFeaturesSettingsModelFromJson(json);
  static const empty = LevelFeaturesSettingsModel();
  static const allEnabled = LevelFeaturesSettingsModel(
    isTechnologiesEnabled: true,
  );
  bool get isAdvancedGame => isTechnologiesEnabled;
}
