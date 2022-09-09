part of 'world_location_bloc.dart';

class WorldLocationState extends Equatable {
  const WorldLocationState();
  const WorldLocationState.initial();

  @override
  List<Object?> get props => [];
}

class LiveWorldLocationState extends WorldLocationState {
  LiveWorldLocationState({
    required this.location,
  });
  final WorldLocationModel location;
  late final copyWith = location.copyWith;

  @override
  List<Object?> get props => [location];
}
