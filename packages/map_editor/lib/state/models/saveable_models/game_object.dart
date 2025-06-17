// ignore_for_file: invalid_annotation_target

part of 'saveable_models.dart';

@Freezed(equal: false, fromJson: false, toJson: false)
class Gid with _$Gid, EquatableMixin {
  @JsonSerializable()
  const factory Gid({required final String value}) = _Gid;
  const Gid._();
  factory Gid.fromJson(final String json) => Gid(value: json);
  factory Gid.create() => Gid(value: IdCreator.create());
  static const empty = Gid(value: '');
  bool get isEmpty => value.isEmpty;
  String toJson() => value;
  @override
  List<Object?> get props => [value];
}
