part of abstract;

enum BookKind {
  science,
  prose,
  poem,
}

typedef BookModelId = String;

/// The book is an object that can be taken from the shelf
/// only if [GamePlayerModel] has [GameLetter] equals to
/// [letterCount]
@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class BookModel with _$BookModel {
  const factory BookModel({
    required final BookModelId id,
    required final BookKind kind,
    required final Map<PlayerProfileModelId, GameLetter> playersInvestments,
    required final ScoreModel score,
  }) = _BookModel;
  const BookModel._();
  factory BookModel.fromJson(final Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
  factory BookModel.create({
    required final BookKind kind,
  }) =>
      BookModel(
        kind: kind,
        id: IdCreator.create(),
        playersInvestments: const {},
        score: ScoreModel.zero,
      );
}
