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

    /// TODO(arenukvern): maybe should be removed
    required final Set<GameModelId> playedGames,
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
        playedGames: const {},
      );
  static const empty = PlayerProfileModel(
    colorValue: 0xFFFF9000,
    id: '0',
    playedGames: {},
    name: '',
  );
  Color get color => Color(colorValue);
}
