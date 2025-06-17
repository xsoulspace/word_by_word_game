import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_by_word_game/common_imports.dart';

part 'debug_cubit.freezed.dart';

@freezed
class DebugCubitState with _$DebugCubitState {
  const factory DebugCubitState({
    @Default(true) final bool isCameraFollowingFocusedObject,
    @Default(kDebugMode) final bool isDebugPaneVisible,
    @Default(false) final bool isDebugLinesVisible,
    @Default(false) final bool isFpsEnabled,
  }) = _DebugCubitState;
}

class DebugCubitDto {
  DebugCubitDto(final BuildContext context)
    : technologiesCubit = context.read<TechnologiesCubit>(),
      statesStatusesCubit = context.read();

  final TechnologiesCubit technologiesCubit;
  final StatesStatusesCubit statesStatusesCubit;
}

class DebugCubit extends Cubit<DebugCubitState> {
  // ignore: avoid_unused_constructor_parameters
  DebugCubit(final BuildContext context)
    : dto = DebugCubitDto(context),
      super(const DebugCubitState(isDebugPaneVisible: false));
  final DebugCubitDto dto;
  // ignore: avoid_positional_boolean_parameters
  void switchIsCameraFollowingPlayerChange([final bool? value]) {
    final isFollowing = value ?? !state.isCameraFollowingFocusedObject;
    emit(state.copyWith(isCameraFollowingFocusedObject: isFollowing));
  }

  // ignore: avoid_positional_boolean_parameters
  void switchIsFpsEnabledChange([final bool? value]) {
    final isFpsEnabled = value ?? !state.isFpsEnabled;
    emit(state.copyWith(isFpsEnabled: isFpsEnabled));
  }

  int _countdown = 5;
  void tryOpenDebugPane() {
    _countdown--;
    if (_countdown <= 0) {
      emit(state.copyWith(isDebugPaneVisible: true));
    }
  }

  void closeDebugPane() {
    emit(state.copyWith(isDebugPaneVisible: false));
  }

  void addInvestedResearchScore() {
    dto.technologiesCubit.updateProgress(
      (final oldProgress) => oldProgress.copyWith(
        investedResearchScore: oldProgress.investedResearchScore.copyWith(
          value: oldProgress.investedResearchScore.value + 200,
        ),
      ),
    );
  }
}
