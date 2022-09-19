part of 'models.dart';

typedef FullWordString = String;

@immutable
@Freezed(
  fromJson: true,
  toJson: true,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class CurrentWordModel with _$CurrentWordModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory CurrentWordModel({
    @Default('') final String leftPart,
    @Default('') final String middlePart,
    @Default('') final String rightPart,
    @Default('') final FullWordString fullWord,
  }) = _CurrentWordModel;

  const CurrentWordModel._();

  factory CurrentWordModel.fromJson(final Map<String, dynamic> json) =>
      _$CurrentWordModelFromJson(json);

  String get cleanWord => fullWord.toLowerCase().replaceAll(' ', '');
}
