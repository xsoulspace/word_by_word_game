part of '../state.dart';

@freezed
class WorldEvent with _$WorldEvent {
  const factory WorldEvent.timeTick({
    required final WorldTimeMechanics worldTimeManager,
  }) = WorldTimeTickEvent;
  const factory WorldEvent.init() = InitWorldEvent;
}
