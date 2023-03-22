// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef LevelModelId = String;

enum LevelPlayerPhaseType {
  entryWord,
  selectAction,
}

enum LevelPlayerActionType {
  refuelStorage,
  cookFood,
}

enum LevelActionMultiplierType {
  m1,
  m2,
  m3,
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
    @Default(LevelPlayerPhaseType.entryWord)
        final LevelPlayerPhaseType phaseType,
    @Default(LevelActionMultiplierType.m1)
        final LevelActionMultiplierType actionMultiplier,
    final LevelPlayerActionType? actionType,
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
