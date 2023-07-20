import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states_statuses_cubit.freezed.dart';

enum LevelStateStatus {
  loading,
  playing,
  paused;
}

enum LevelPartName {
  level,
  players,
  resources;

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
  StatesStatusesCubit({
    required this.dto,
  }) : super(const StatesStatusesCubitState());
  final StatesStatusesCubitDto dto;
  // ignore: avoid_setters_without_getters
  set _state(final StatesStatusesCubitState value) => emit(value);

  void onLevelPartLoaded({
    required final LevelPartName levelPartName,
  }) {
    final loadedLevelParts = {...state.loadedLevelParts, levelPartName};
    _state = state.copyWith(loadedLevelParts: loadedLevelParts);
    if (LevelPartName.containsAll(loadedLevelParts)) {
      _state = state.copyWith(levelStateStatus: LevelStateStatus.paused);
    }
  }

  void onChangeLevelStateStatus({
    required final LevelStateStatus status,
  }) {
    switch (status) {
      case LevelStateStatus.loading:
        _state = state.copyWith(loadedLevelParts: {});
      case LevelStateStatus.paused:
      case LevelStateStatus.playing:
    }
    _state = state.copyWith(levelStateStatus: status);
  }
}
