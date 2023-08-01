import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'debug_cubit.freezed.dart';

@freezed
class DebugCubitState with _$DebugCubitState {
  const factory DebugCubitState({
    @Default(true) final bool isCameraFollowingPlayer,
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
}
