import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_cubit.freezed.dart';

@freezed
class DebugCubitState with _$DebugCubitState {
  const factory DebugCubitState({
    @Default(true) final bool isCameraFollowingPlayer,
    @Default(kDebugMode) final bool isDebugPaneVisible,
    @Default(false) final bool isDebugLinesVisible,
    @Default(kDebugMode) final bool isFpsEnabled,
  }) = _DebugCubitState;
}

class DebugCubitDto {
  DebugCubitDto();
}

class DebugCubit extends Cubit<DebugCubitState> {
  DebugCubit({
    required this.dto,
  }) : super(const DebugCubitState());
  final DebugCubitDto dto;
  // ignore: avoid_positional_boolean_parameters
  void switchIsCameraFollowingPlayerChange([final bool? value]) {
    final isFollowing = value ?? !state.isCameraFollowingPlayer;
    emit(state.copyWith(isCameraFollowingPlayer: isFollowing));
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
}
