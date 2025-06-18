// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

@immutable
@freezed
abstract class LevelCharactersModel with _$LevelCharactersModel {
  @JsonSerializable(explicitToJson: true)
  const factory LevelCharactersModel({
    required final PlayerCharacterModel playerCharacter,

    /// {@template focusedObjectId}
    /// The difference of having focused object id is that it is not tied
    /// to a player and can be used to focus on any object in the level.
    /// In that case the current player is not focused and camera is not
    /// following the player. Instead, the camera is focused on the object
    /// with the given id and moves to it.
    /// {@endtemplate}
    @Default(Gid.empty) final Gid focusedObjectGid,
  }) = _LevelCharactersModel;
  const LevelCharactersModel._();
  factory LevelCharactersModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelCharactersModelFromJson(json);
}
