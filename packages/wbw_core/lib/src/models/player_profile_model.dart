// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef PlayerProfileModelId = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class PlayerProfileModel with _$PlayerProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerProfileModel({
    required final PlayerProfileModelId id,
    required final int colorValue,
    required final String name,
    @Default({})
        final Map<LevelModelId, PlayerLevelHighscoreModel> levelsHighscores,
    @Default(PlayerHighscoreModel.empty) final PlayerHighscoreModel highscore,
  }) = _PlayerProfileModel;
  const PlayerProfileModel._();
  factory PlayerProfileModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerProfileModelFromJson(json);
  factory PlayerProfileModel.create({
    required final String name,
    required final int colorValue,
  }) =>
      PlayerProfileModel(
        colorValue: colorValue,
        id: IdCreator.create(),
        name: name,
      );
  static const empty = PlayerProfileModel(
    colorValue: 0xFFFF9000,
    id: '0',
    name: '',
  );
  Color get color => Color(colorValue);
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class PlayerHighscoreModel with _$PlayerHighscoreModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerHighscoreModel({
    @Default(0) final int maxWordsCount,
    @Default(0) final int maxLettersCount,
    @Default(0) final int totalWordsCount,
    @Default(0) final int totalLettersCount,
    @Default(ScoreModel.zero) final ScoreModel score,
  }) = _PlayerHighscoreModel;
  const PlayerHighscoreModel._();
  factory PlayerHighscoreModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerHighscoreModelFromJson(json);

  static const empty = PlayerHighscoreModel();
}

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class PlayerLevelHighscoreModel with _$PlayerLevelHighscoreModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerLevelHighscoreModel({
    required final LevelModelId levelId,
    @Default(0) final double maxDistance,
    @Default(0) final double totalDistance,
    @Default(0) final double landingsCount,
    @Default(0) final double flightTime,
  }) = _PlayerLevelHighscoreModel;
  const PlayerLevelHighscoreModel._();
  factory PlayerLevelHighscoreModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerLevelHighscoreModelFromJson(json);
}
