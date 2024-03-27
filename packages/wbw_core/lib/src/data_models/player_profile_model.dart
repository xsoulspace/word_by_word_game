// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

typedef PlayerProfileModelId = String;

/// Only user specific properties.
///
/// For game entity model see [PlayerCharacterModel]
@immutable
@freezed
class PlayerProfileModel with _$PlayerProfileModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerProfileModel({
    required final PlayerProfileModelId id,
    required final int colorValue,
    required final String name,
    @JsonKey(
      fromJson: PlayerProfileModel._highscoreFromJson,
      toJson: PlayerProfileModel._highscoreToJson,
    )
    @Default({})
    final Map<CanvasDataModelId, PlayerLevelHighscoreModel> levelsHighscores,
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

  static Map<CanvasDataModelId, PlayerLevelHighscoreModel> _highscoreFromJson(
    final Map<String, dynamic> json,
  ) =>
      json.map(
        (final key, final value) => MapEntry(
          CanvasDataModelId.fromJson(key),
          PlayerLevelHighscoreModel.fromJson(value),
        ),
      );

  static Map<String, dynamic> _highscoreToJson(
    final Map<CanvasDataModelId, PlayerLevelHighscoreModel> map,
  ) =>
      map.map((final key, final value) => MapEntry(key.value, value.toJson()));
}

@immutable
@freezed
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
@freezed
class PlayerLevelHighscoreModel with _$PlayerLevelHighscoreModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerLevelHighscoreModel({
    required final CanvasDataModelId levelId,
    @Default(0) final double maxDistance,
    @Default(0) final double totalDistance,
    @Default(0) final double landingsCount,
    @Default(0) final double flightTime,
  }) = _PlayerLevelHighscoreModel;
  const PlayerLevelHighscoreModel._();
  factory PlayerLevelHighscoreModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerLevelHighscoreModelFromJson(json);
}
