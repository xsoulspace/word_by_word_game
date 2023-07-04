// ignore_for_file: invalid_annotation_target

part of '../models.dart';

@Freezed(equal: false)
class Gid with _$Gid, EquatableMixin {
  @JsonSerializable()
  const factory Gid({
    required final String value,
  }) = _Gid;
  const Gid._();
  factory Gid.fromJson(final Map<String, dynamic> json) => _$GidFromJson(json);
  static const zero = Gid(value: '');
  @override
  List<Object?> get props => [value];
}
