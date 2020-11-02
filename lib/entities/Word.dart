import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Word.g.dart';

@JsonSerializable(nullable: true)
class Word {
  final int id;
  final String value;
  Word({@required this.id, @required this.value});

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
  Map<String, dynamic> toJson() => _$WordToJson(this);
}
