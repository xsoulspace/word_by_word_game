part of 'world_bloc.dart';

abstract class WorldEvent extends Equatable {
  const WorldEvent();
  @override
  List<Object?> get props => [];
}

class WorldTimeTickEvent extends WorldEvent {
  const WorldTimeTickEvent(this.worldTimeManager);
  final WorldTimeMechanics worldTimeManager;
}

class LoadWorldEvent extends WorldEvent {
  const LoadWorldEvent(this.worldData);
  final WorldDataModel worldData;
}
