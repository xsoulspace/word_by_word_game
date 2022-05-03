part of abstract;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class WordWriterStateModel with _$WordWriterStateModel {
  @JsonSerializable(explicitToJson: true)
  const factory WordWriterStateModel({
    required final String lastWord,
    required final String leftPartOfWord,
    required final String middlePartOfWord,
    required final String rightPartOfWord,
    required final Map<GameWordModel, PlayerProfileModelId> writtenWords,
  }) = _WordWriterContextModel;
  const WordWriterStateModel._();
  factory WordWriterStateModel.fromJson(final Map<String, dynamic> json) =>
      _$WordWriterStateModelFromJson(json);

  factory WordWriterStateModel.empty() => const WordWriterStateModel(
        lastWord: '',
        leftPartOfWord: '',
        middlePartOfWord: '',
        rightPartOfWord: '',
        writtenWords: {},
      );
}
