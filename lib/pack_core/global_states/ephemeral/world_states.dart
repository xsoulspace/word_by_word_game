part of 'world_bloc.dart';

@immutable
@Freezed(
  fromJson: false,
  toJson: false,
  equal: true,
  addImplicitFinal: true,
  copyWith: true,
)
class WorldState with _$WorldState {
  const factory WorldState({
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,
    @Default(0) final int dateTimeDelta,
    @Default(WorldDataModel()) final WorldDataModel worldData,
  }) = _WorldState;
  const WorldState._();
  factory WorldState.initial() => const WorldState();
}
