part of abstract;

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
  const factory PlayerProfileModel({
    required final PlayerProfileModelId id,
    required final int colorValue,
    required final String name,

    /// The [GameKnowledge] and [GameLetter] will be counted
    /// as highscore based on this [BookModel] list in [GameLevelModel]
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

  /// Use this method to create new instance of [GamePlayerModel]
  @useResult
  GamePlayerModel toNewGameProfile() =>
      GamePlayerModel.fromProfileModel(profile: this);
}
