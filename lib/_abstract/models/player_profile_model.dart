part of abstract;

typedef PlayerProfileModelId = String;

@immutable
@Freezed()
class PlayerProfileModel with _$PlayerProfileModel {
  const factory PlayerProfileModel({
    required final PlayerProfileModelId id,
    required final int colorValue,
    required final String name,

    /// The [GameKnowledge] and [GameLetter] will be counted
    /// as highscore based on this [BookModel] list in [GameLevelModel]
    required final GameLevelModel levelsHighscore,
  }) = _PlayerProfileModel;
  const PlayerProfileModel._();

  Color get color => Color(colorValue);
}

Color intToColor(final int color) => Color(color);
int intFromColor(final Color color) => color.value;
