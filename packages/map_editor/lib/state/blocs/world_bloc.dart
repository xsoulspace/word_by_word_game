part of '../state.dart';

class WorldBlocDiDto {
  // ignore: avoid_unused_constructor_parameters
  WorldBlocDiDto.use(final Locator read) : mechanicsCollection = read();
  final EditorMechanicsCollection mechanicsCollection;
}

class WorldBloc extends Bloc<WorldEvent, WorldState> {
  WorldBloc({
    required final Locator read,
  })  : diDto = WorldBlocDiDto.use(read),
        super(WorldState.initial()) {
    on<WorldTimeTickEvent>(_onWorldTick);
    on<InitWorldEvent>(_onInitWorld);
    add(const InitWorldEvent());
  }
  final WorldBlocDiDto diDto;

  Future<void> _onInitWorld(
    final InitWorldEvent event,
    final Emitter<WorldState> emit,
  ) async {
    final worldTime = diDto.mechanicsCollection.worldTime;
    // emit(state.copyWith(worldData: event.worldData));
    await worldTime.onLoad();
    worldTime.addListener(_onWorldTimeChange);
    _initLoadedWorld(event);
  }

  @override
  Future<void> close() async {
    diDto.mechanicsCollection.worldTime.removeListener(_onWorldTimeChange);
    return super.close();
  }

  void _onWorldTimeChange(final WorldTimeMechanics worldTime) =>
      add(WorldTimeTickEvent(worldTimeManager: worldTime));

  void _initLoadedWorld(final InitWorldEvent event) {}

  void _onWorldTick(
    final WorldTimeTickEvent event,
    final Emitter<WorldState> emit,
  ) {
    final newDateTime = event.worldTimeManager.dateTime;
    final lastDateTime = state.dateTime;
    final dateTimeDelta = newDateTime.second - lastDateTime.second;
    final newState = state.copyWith(
      lastDateTime: lastDateTime,
      dateTime: newDateTime,
      dateTimeDelta: dateTimeDelta,
    );
    emit(newState);
  }
}
