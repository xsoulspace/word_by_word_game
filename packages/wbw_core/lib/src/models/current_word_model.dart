// ignore_for_file: invalid_annotation_target

part of 'models.dart';

typedef FullWordString = String;

@immutable
@freezed
class CurrentWordModel with _$CurrentWordModel {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory CurrentWordModel({
    @Default([]) final List<int> inactiveIndexes,
    @Default('') final FullWordString fullWord,
  }) = _CurrentWordModel;

  const CurrentWordModel._();

  factory CurrentWordModel.fromJson(final Map<String, dynamic> json) =>
      _$CurrentWordModelFromJson(json);

  @useResult
  String get middlePart => List.generate(inactiveIndexes.length, (final i) {
        final index = inactiveIndexes[i];
        return fullWord[index];
      }).join();
}
