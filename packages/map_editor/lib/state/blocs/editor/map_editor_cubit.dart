import 'dart:async';

// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/blocs/editor/drawer_cubit.dart';

part 'map_editor_cubit.freezed.dart';

@freezed
class MapEditorBlocState with _$MapEditorBlocState {
  const factory MapEditorBlocState({
    @Default(false) final bool isEditing,
  }) = _MapEditorBlocState;
}

class MapEditorCubitDto {
  MapEditorCubitDto.use(final BuildContext context)
      : drawerCubit = context.read();
  final EditorDrawerCubit drawerCubit;
}

class MapEditorCubit extends Cubit<MapEditorBlocState> {
  MapEditorCubit({
    required this.dto,
  }) : super(const MapEditorBlocState());
  final MapEditorCubitDto dto;
  // ignore: avoid_positional_boolean_parameters
  Future<void> onChangeIsEditing(final bool isEditing) async {
    emit(state.copyWith(isEditing: isEditing));
  }

  Future<void> load() async {}
}
