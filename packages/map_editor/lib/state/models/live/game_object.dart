// ignore_for_file: invalid_annotation_target

part of '../models.dart';

@freezed
class Gid with _$Gid {
  @JsonSerializable()
  const factory Gid({
    required final String value,
  }) = _Gid;
  factory Gid.fromJson(final Map<String, dynamic> json) => _$GidFromJson(json);
  static const zero = Gid(value: '');
}
