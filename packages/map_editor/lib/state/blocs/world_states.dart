part of '../state.dart';

@immutable
@freezed
class WorldState with _$WorldState {
  const factory WorldState({
    @Default(WorldDateTimeModel()) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel()) final WorldDateTimeModel lastDateTime,
    @Default(0) final int dateTimeDelta,
  }) = _WorldState;
  const WorldState._();
}
