// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef LevelModelId = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LevelModel with _$LevelModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory LevelModel({
    required final LevelModelId id,
    required final LevelPlayersModel players,
    required final LevelCharactersModel characters,
    required final ResourcesModel resources,
    @Default(CurrentWordModel()) final CurrentWordModel currentWord,
    @Default({}) final Map<FullWordString, PlayerProfileModelId> words,
    @Default('') final String latestWord,
  }) = _LevelModel;
  const LevelModel._();
  factory LevelModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class TemplateLevelModel with _$TemplateLevelModel {
  @JsonSerializable(explicitToJson: true)
  const factory TemplateLevelModel({
    required final LevelModelId id,
    required final ResourcesModel resources,
    @Default(FuelStorageModel()) final FuelStorageModel fuelStorage,
  }) = _TemplateLevelModel;
  const TemplateLevelModel._();
  factory TemplateLevelModel.fromJson(final Map<String, dynamic> json) =>
      _$TemplateLevelModelFromJson(json);
}
