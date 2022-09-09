part of 'world_location_bloc.dart';

abstract class WorldLocationEvent extends Equatable {
  const WorldLocationEvent();
  @override
  List<Object?> get props => [];
}

class LoadLocationEvent extends WorldLocationEvent {
  const LoadLocationEvent(this.location);
  final WorldLocationModel location;
}

class ConsumeTickEvent extends WorldLocationEvent {
  const ConsumeTickEvent({
    required this.timeDeltaInSeconds,
  });

  /// How many seconds was from the last tick
  final int timeDeltaInSeconds;
}
