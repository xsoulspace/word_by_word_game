// ignore_for_file: invalid_annotation_target

part of 'saveable_models.dart';

@freezed
abstract class PlayerModel with _$PlayerModel {
  const factory PlayerModel({
    /// to get access to [RenderObjectModel]
    /// just use [CanvasDataModel.player] with gid verification
    required final Gid id,
  }) = _PlayerModel;
  const PlayerModel._();
  factory PlayerModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerModelFromJson(json);
  static const empty = PlayerModel(id: Gid.empty);
}
