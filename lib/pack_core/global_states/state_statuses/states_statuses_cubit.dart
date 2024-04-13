import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states_statuses_cubit.freezed.dart';

enum LevelStateStatus {
  loading,
  paused,
  levelReady,
  playing;
}

enum LevelPartName {
  level,
  players;

  const LevelPartName();
  static bool containsAll(final Set<LevelPartName> states) {
    final diff = values.toSet().difference(states);
    final isEqual = diff.isEmpty;
    return isEqual;
  }
}

@freezed
class StatesStatusesCubitState with _$StatesStatusesCubitState {
  const factory StatesStatusesCubitState({
    /// global statuses
    /// - loading
    /// -- level
    /// -- players
    /// -- resources
    /// - playing
    /// - paused
    @Default({}) final Set<LevelPartName> loadedLevelParts,
    @Default(LevelStateStatus.loading) final LevelStateStatus levelStateStatus,
  }) = _StatesStatusesCubitState;
}

class StatesStatusesCubitDto {
  StatesStatusesCubitDto({
    // ignore: avoid_unused_constructor_parameters
    required final BuildContext context,
  });
}

class StatesStatusesCubit extends Cubit<StatesStatusesCubitState> {
  StatesStatusesCubit(final BuildContext context)
      : dto = StatesStatusesCubitDto(context: context),
        super(const StatesStatusesCubitState());
  final StatesStatusesCubitDto dto;
  // ignore: avoid_setters_without_getters
  set _state(final StatesStatusesCubitState value) => emit(value);
  bool get isLoading => switch (state.levelStateStatus) {
        LevelStateStatus.levelReady || LevelStateStatus.paused => false,
        LevelStateStatus.playing || LevelStateStatus.loading => true,
      };
  void onLevelPartLoaded({
    required final LevelPartName levelPartName,
  }) {
    final loadedLevelParts = {...state.loadedLevelParts, levelPartName};
    _state = state.copyWith(loadedLevelParts: loadedLevelParts);
    if (LevelPartName.containsAll(loadedLevelParts)) {
      _state = state.copyWith(levelStateStatus: LevelStateStatus.levelReady);
    }
  }

  void resume() => onChangeLevelStateStatus(status: LevelStateStatus.playing);
  void pause() => onChangeLevelStateStatus(status: LevelStateStatus.paused);

  void onChangeLevelStateStatus({
    required final LevelStateStatus status,
  }) {
    switch (status) {
      case LevelStateStatus.loading:
        _state = state.copyWith(loadedLevelParts: {});
      case LevelStateStatus.paused ||
            LevelStateStatus.levelReady ||
            LevelStateStatus.playing:
    }
    _state = state.copyWith(levelStateStatus: status);
  }
}
