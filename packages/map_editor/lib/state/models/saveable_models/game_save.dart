part of 'saveable_models.dart';

@freezed
class LevelSaveModel with _$LevelSaveModel {
  const factory LevelSaveModel({
    @Default(CanvasDataModel.empty) final CanvasDataModel canvasData,
    @Default(PlayerModel.empty) final PlayerModel player,
  }) = _LevelSaveModel;
  factory LevelSaveModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelSaveModelFromJson(json);
}
