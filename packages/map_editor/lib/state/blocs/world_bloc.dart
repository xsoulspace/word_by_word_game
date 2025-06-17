part of '../state.dart';

class WorldBlocDiDto {
  // ignore: avoid_unused_constructor_parameters
  WorldBlocDiDto.use(final Locator read) : mechanicsCollection = read();
  final EditorMechanicsCollection mechanicsCollection;
}

class WorldBloc extends Cubit<WorldState> {
  WorldBloc({required final Locator read})
    : diDto = WorldBlocDiDto.use(read),
      super(const WorldState()) {
    unawaited(onInitWorld());
  }
  final WorldBlocDiDto diDto;

  Future<void> onInitWorld() async {
    final worldTime = diDto.mechanicsCollection.worldTime;
    // emit(state.copyWith(worldData: event.worldData));
    await worldTime.onLoad();
    worldTime.addListener(onWorldTimeChange);
  }

  @override
  Future<void> close() async {
    diDto.mechanicsCollection.worldTime.removeListener(onWorldTimeChange);
    return super.close();
  }

  void onWorldTimeChange(final WorldTimeMechanics worldTime) =>
      onWorldTick(worldTime);

  void onWorldTick(final WorldTimeMechanics worldTime) {
    final newDateTime = worldTime.dateTime;
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
