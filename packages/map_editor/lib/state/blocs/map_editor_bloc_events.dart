part of '../state.dart';

@freezed
class MapEditorBlocEvent with _$MapEditorBlocEvent {
  const factory MapEditorBlocEvent.load() = LoadMapEditorBlocEvent;
}
