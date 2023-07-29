import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'debug_cubit.freezed.dart';

@freezed
class DebugCubitState with _$DebugCubitState {
  const factory DebugCubitState() = _DebugCubitState;
}

class DebugCubitDto {
  DebugCubitDto({
    required final BuildContext context,
  }) : gameConstantsCubit = context.read();
  final GameConstantsCubit gameConstantsCubit;
}

class DebugCubit extends Cubit<DebugCubitState> {
  DebugCubit({
    required this.dto,
  }) : super(const DebugCubitState());
  final DebugCubitDto dto;
}
