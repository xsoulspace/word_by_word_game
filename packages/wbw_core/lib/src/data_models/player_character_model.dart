// ignore_for_file: invalid_annotation_target
part of 'data_models.dart';

// TODO(arenukvern): rename to VehicleModel - or something similar
/// Character - is a game entity, that has its own properties
/// which player can control, for example [HotAirBalloon]
///
/// For User Profile model see [PlayerProfileModel]
@immutable
@freezed
abstract class PlayerCharacterModel with _$PlayerCharacterModel {
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
    @JsonKey(fromJson: LocalizedMap.fromJson)
    @Default(LocalizedMap.empty)
    final LocalizedMap localizedName,
    @Default('') final String characterIcon,
    @Default(SerializedVector2.zero) final SerializedVector2 distanceToOrigin,

    /// use this vector, to restore object position
    /// after object was deleted. For example, if player had
    /// crashed, then we need to restore
    /// his position to the last checkpoint if it is exists.
    @Default(SerializedVector2.zero)
    final SerializedVector2 checkpointDistanceToOrigin,
    @Default(BalloonLiftPowersModel.initial)
    final BalloonLiftPowersModel balloonPowers,
    @Default(BalloonLiftParamsModel.initial)
    final BalloonLiftParamsModel balloonParams,

    /// If is true, then it means that the balloon is on the ground and
    /// cannot be moved.
    @Default(true) final bool isAnchored,
  }) = _PlayerCharacterModel;
  const PlayerCharacterModel._();
  factory PlayerCharacterModel.fromJson(final Map<String, dynamic> json) =>
      _$PlayerCharacterModelFromJson(json);
  static const empty = PlayerCharacterModel();
  SerializedVector2 get restorationDistanceToOrigin =>
      checkpointDistanceToOrigin.isZero
      ? distanceToOrigin
      : checkpointDistanceToOrigin;
  bool get hasCheckpoint => checkpointDistanceToOrigin.isNotZero;
}

@immutable
@Freezed(toJson: false)
abstract class SerializedVector2 with _$SerializedVector2 {
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
  bool get isNotZero => !isZero;
  Vector2 toVector2() => Vector2(x, y);
  Map<String, dynamic> toJson() => {'x': x, 'y': y};
  Offset toOffset() => Offset(x, y);
}

extension OffsetExtension on Offset {
  SerializedVector2 toSerializedVector2() => SerializedVector2(x: dx, y: dy);
  CellPointModel toCellPoint() => CellPointModel(dx.toInt(), dy.toInt());
}

extension Vector2Extension on Vector2 {
  SerializedVector2 toSerializedVector2() => SerializedVector2(x: x, y: y);
}
