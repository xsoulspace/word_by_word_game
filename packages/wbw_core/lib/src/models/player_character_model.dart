// ignore_for_file: invalid_annotation_target

part of 'models.dart';

@immutable
@freezed
class PlayerCharacterModel with _$PlayerCharacterModel {
  @JsonSerializable(explicitToJson: true)
  const factory PlayerCharacterModel({
    /// unique id which used to identify unqiue set of following params:
    /// [balloonPowers] [balloonParams] [color] [localizedName] etc
    @Default(Gid.empty) final Gid id,

    /// is assigning during game start to pick required tileId's
    /// reference from the canvasCubit
    @Default(Gid.empty) final Gid gid,
    @Default('') final String description,
    @Default(0) final int color,
    @Default(LocalizedMap.empty) final LocalizedMap localizedName,
    @Default('') final String characterIcon,
    @Default(SerializedVector2.zero) final SerializedVector2 position,
    @Default(BalloonLiftPowersModel.initial)
    final BalloonLiftPowersModel balloonPowers,
    @Default(BalloonLiftParamsModel.initial)
    final BalloonLiftParamsModel balloonParams,
  }) = _PlayerCharacterModel;
  const PlayerCharacterModel._();
  factory PlayerCharacterModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerCharacterModelFromJson(json);
  static const empty = PlayerCharacterModel();
}

@immutable
@Freezed(toJson: false)
class SerializedVector2 with _$SerializedVector2 {
  @JsonSerializable(explicitToJson: true)
  const factory SerializedVector2({
    @Default(0) final double x,
    @Default(0) final double y,
  }) = _SerializedVector2;
  const SerializedVector2._();
  factory SerializedVector2.fromJson(final Map<String, dynamic> json) =>
      _$SerializedVector2FromJson(json);
  static const zero = SerializedVector2();
  bool get isZero => x == 0 && y == 0;
  Vector2 toVector2() => Vector2(x, y);
  Map<String, dynamic> toJson() => {'x': x, 'y': y};
  Offset toOffset() => Offset(x, y);
}

extension OffsetExtension on Offset {
  SerializedVector2 toSerializedVector2() => SerializedVector2(x: dx, y: dy);
}

extension Vector2Extension on Vector2 {
  SerializedVector2 toSerializedVector2() => SerializedVector2(x: x, y: y);
}
