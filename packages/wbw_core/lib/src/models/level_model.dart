// ignore_for_file: invalid_annotation_target

part of 'models.dart';

enum GamePhaseType { entryWord, selectFuel }

enum EnergyMultiplierType {
  m1(namedPart: '1/3'),
  m2(namedPart: '2/3'),
  m3(namedPart: '3/3');

  const EnergyMultiplierType({required this.namedPart});
  final String namedPart;
}

/// maybe rename to world level model
@immutable
@freezed
class LevelModel with _$LevelModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory LevelModel({
    required final LevelPlayersModel players,
    required final LevelCharactersModel characters,
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
    @Default(TechnologyTreeModel.empty)
    final TechnologyTreeModel technologyTree,
  }) = _LevelModel;
  const LevelModel._();
  factory LevelModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
  CanvasDataModelId get id => canvasDataId;
}
