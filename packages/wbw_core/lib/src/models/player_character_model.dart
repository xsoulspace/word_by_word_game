// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef PlayerCharacterModelId = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class PlayerCharacterModel with _$PlayerCharacterModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerCharacterModel({
    required final PlayerCharacterModelId id,
    required final String name,
    required final String description,
  }) = _PlayerCharacterModel;
  const PlayerCharacterModel._();
  factory PlayerCharacterModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerCharacterModelFromJson(json);
}
