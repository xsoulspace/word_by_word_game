import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';

import '../../../wbw_core.dart';

part 'tutorial_bloc.freezed.dart';
part 'tutorial_bloc.g.dart';
part 'tutorial_data.dart';
part 'tutorial_events.dart';
part 'tutorial_states.dart';

class TutorialBlocDiDto {
  TutorialBlocDiDto.use(final Locator read) : _read = read;
  final Locator _read;
}

class TutorialBloc extends Bloc<TutorialEvent, TutorialBlocState> {
  TutorialBloc({
    required this.diDto,
  }) : super(const EmptyTutorialBlocState()) {
    on<LoadTutorialsProgressEvent>(_onLoadTutorialsProgress);
    on<StartTutorialEvent>(_onStartTutorial);
    on<NextTutorialEvent>(_onNextTutorial);
  }

  final TutorialBlocDiDto diDto;

  void _onLoadTutorialsProgress(
    final LoadTutorialsProgressEvent event,
    final Emitter<TutorialBlocState> emit,
  ) {
    final newState = PendingTutorialBlocState(progress: event.progress);
    emit(newState);
  }

  void _onStartTutorial(
    final StartTutorialEvent event,
    final Emitter<TutorialBlocState> emit,
  ) {
    final progress = _getProgress();
    final updatedState = LiveTutorialBlocState.fromProgressModel(
      data: _tutorialData,
      name: event.name,
      progress: progress,
    );
    if (updatedState != null) {
      emit(updatedState);
    }
  }

  void _onNextTutorial(
    final NextTutorialEvent event,
    final Emitter<TutorialBlocState> emit,
  ) {
    final liveState = getLiveState();
    if (liveState.tutorial.isCompleted) {
      emit(PendingTutorialBlocState(progress: liveState.progress));
    } else {
      final nextIndex = liveState.tutorial.currentIndex + 1;
      final updatedTutorial = getTutorial().copyWith(
        currentIndex: nextIndex,
      );
      final newLiveState = LiveTutorialBlocState(
        tutorial: updatedTutorial,
        progress: liveState.progress,
      );
      final updatedLiveState = newLiveState.applyTutorialProgress();
      emit(updatedLiveState);
    }
  }

  TutorialCollectionsProgressModel _getProgress() {
    final effectiveState = state;
    if (effectiveState is LiveTutorialBlocState) {
      return effectiveState.progress;
    } else if (effectiveState is PendingTutorialBlocState) {
      return effectiveState.progress;
    }
    throw ArgumentError.value(effectiveState);
  }

  TutorialEventModel getTutorialEvent() {
    final tutorial = getTutorial();
    final index = tutorial.currentIndex;
    return tutorial.events[index];
  }

  TutorialEventsCollectionModel getTutorial() {
    return getLiveState().tutorial;
  }

  LiveTutorialBlocState getLiveState() {
    final effectiveState = state;
    if (effectiveState is! LiveTutorialBlocState) {
      throw ArgumentError.value(effectiveState);
    }
    return effectiveState;
  }
}
