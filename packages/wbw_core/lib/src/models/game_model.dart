// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef GameModelId = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class GameModel with _$GameModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory GameModel({
    required final GameModelId id,
    required final List<LevelModel> levels,
    required final LevelModelId currentLevelId,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,
  }) = _GameModel;
  const GameModel._();
  factory GameModel.fromJson(final Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
