// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

@immutable
@freezed
class LevelPlayersModel with _$LevelPlayersModel {
  @JsonSerializable(explicitToJson: true)
  const factory LevelPlayersModel({
    required final List<PlayerProfileModel> players,
    required final PlayerProfileModelId currentPlayerId,
  }) = _LevelPlayersModel;
  const LevelPlayersModel._();
  factory LevelPlayersModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelPlayersModelFromJson(json);
}
