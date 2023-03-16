part of '../state.dart';

class MapEditorBloc extends Bloc<MapEditorBlocEvent, MapEditorBlocState> {
  MapEditorBloc() : super(const MapEditorBlocState()) {
    on<LoadMapEditorBlocEvent>(_onLoad);
  }

  void _onLoad(
    final LoadMapEditorBlocEvent event,
    final Emitter<MapEditorBlocState> emit,
  ) {}
}
