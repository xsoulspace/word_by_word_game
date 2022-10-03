// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class LevelCharactersModel with _$LevelCharactersModel {
  @JsonSerializable(explicitToJson: true)
  const factory LevelCharactersModel({
    required final PlayerCharacterModel playerCharacter,
  }) = _LevelCharactersModel;
  const LevelCharactersModel._();
  factory LevelCharactersModel.fromJson(final Map<String, dynamic> json) =>
      _$LevelCharactersModelFromJson(json);
}
