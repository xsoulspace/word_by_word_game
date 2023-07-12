part of 'saveable_models.dart';

@freezed
class GameSaveModel with _$GameSaveModel {
  const factory GameSaveModel({
    @Default(CanvasDataModel.empty) final CanvasDataModel canvasData,
    @Default(PlayerModel.empty) final PlayerModel player,
  }) = _GameSaveModel;
  factory GameSaveModel.fromJson(final Map<String, dynamic> json) =>
      _$GameSaveModelFromJson(json);
}
