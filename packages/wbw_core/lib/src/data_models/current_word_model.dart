// ignore_for_file: invalid_annotation_target

part of 'data_models.dart';

// extension type FullWordString(String value) {}
typedef FullWordString = String;

@immutable
@freezed
abstract class CurrentWordModel with _$CurrentWordModel {
  @JsonSerializable(explicitToJson: true)
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
