import 'package:json_annotation/json_annotation.dart';

part 'Word.g.dart';

@JsonSerializable()
class Word {
  Word({
    required this.id,
    required this.value,
  });
  final int id;
  final String value;

  factory Word.fromJson(final Map<String, dynamic> json) =>
      _$WordFromJson(json);
  Map<String, dynamic> toJson() => _$WordToJson(this);
}
