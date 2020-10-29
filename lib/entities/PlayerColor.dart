import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'PlayerColor.g.dart';

@JsonSerializable()
class PlayerColor {
  final int id;
  final int colorPrimary;
  PlayerColor({@required this.id, @required this.colorPrimary});

  Color get color => Color(colorPrimary);

  factory PlayerColor.fromJson(Map<String, dynamic> json) =>
      _$PlayerColorFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerColorToJson(this);
}
