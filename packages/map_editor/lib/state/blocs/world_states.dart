part of '../state.dart';

@immutable
@freezed
abstract class WorldState with _$WorldState {
  const factory WorldState({
    @Default(WorldDateTimeModel.zero) final WorldDateTimeModel dateTime,
    @Default(WorldDateTimeModel.zero) final WorldDateTimeModel lastDateTime,
    @Default(0) final int dateTimeDelta,
  }) = _WorldState;
  const WorldState._();
}
