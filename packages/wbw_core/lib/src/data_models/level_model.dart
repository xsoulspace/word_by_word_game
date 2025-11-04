// ignore_for_file: invalid_annotation_target, avoid_annotating_with_dynamic

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
abstract class LevelModel with _$LevelModel {
  @JsonSerializable(explicitToJson: true)
  const factory LevelModel({
    required final LevelPlayersModel players,
    required final LevelCharactersModel characters,

    /// update this field on every save to get recent save and sort by it
    final DateTime? updatedAt,
    @Default(TilesetType.whiteBlack) final TilesetType tilesetType,
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
    @Default(LevelFeaturesSettingsModel.allDisabled)
    final LevelFeaturesSettingsModel featuresSettings,
    @JsonKey(fromJson: uiLanguageFromJson, toJson: uiLanguageToJson)
    @Default(defaultLanguage)
    final UiLanguage wordsLanguage,
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
