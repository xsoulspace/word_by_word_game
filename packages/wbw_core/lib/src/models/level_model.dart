// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef LevelModelId = String;

enum GamePhaseType { entryWord, selectFuel }

enum EnergyMultiplierType {
  m1(namedPart: '1/3'),
  m2(namedPart: '2/3'),
  m3(namedPart: '3/3');

  const EnergyMultiplierType({required this.namedPart});
  final String namedPart;
}

@immutable
@freezed
class LevelModel with _$LevelModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory LevelModel({
    required final LevelModelId id,
    required final LevelPlayersModel players,
    required final LevelCharactersModel characters,
    required final ResourcesModel resources,
    @Default(LocalizedMap.empty) final LocalizedMap name,
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordString, PlayerProfileModelId> words,
    @Default('') final String latestWord,
    @Default(GamePhaseType.entryWord) final GamePhaseType phaseType,
    @Default(EnergyMultiplierType.m1)
        final EnergyMultiplierType actionMultiplier,
  }) = _LevelModel;
  const LevelModel._();
  factory LevelModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
}

@immutable
@freezed
class TemplateLevelModel with _$TemplateLevelModel {
  @JsonSerializable(explicitToJson: true)
  const factory TemplateLevelModel({
    required final LevelModelId id,
    required final ResourcesModel resources,
    @Default(LocalizedMap.empty) final LocalizedMap name,
    @Default(FuelStorageModel()) final FuelStorageModel fuelStorage,
  }) = _TemplateLevelModel;
  const TemplateLevelModel._();
  factory TemplateLevelModel.fromJson(final Map<String, dynamic> json) =>
      _$TemplateLevelModelFromJson(json);
}
