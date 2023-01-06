import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';

import '../../localization/localization.dart';
import '../../mechanics/mechanics.dart';
import '../../models/models.dart';

part './tutorial_listener.dart';
part 'tutorial_bloc.freezed.dart';
part 'tutorial_bloc.g.dart';
part 'tutorial_data.dart';
part 'tutorial_events.dart';
part 'tutorial_states.dart';

class TutorialBlocDiDto {
  TutorialBlocDiDto.use(final Locator read) : mechanics = read();
  final MechanicsCollection mechanics;
}

class TutorialBloc extends Bloc<TutorialEvent, TutorialBlocState> {
  TutorialBloc({
    required this.diDto,
  }) : super(const EmptyTutorialBlocState()) {
    on<LoadTutorialsProgressEvent>(_onLoadTutorialsProgress);
    on<StartTutorialEvent>(_onStartTutorial);
    on<NextTutorialEvent>(_onNextTutorial);
    on<TutorialUiActionEvent>(_onTutorialUiAction);
    _notifier = TutorialStateNotifier.listen(bloc: this);
  }

  final TutorialBlocDiDto diDto;
  late final TutorialStateNotifier _notifier;
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
    final progress = getLiveProgress();

    // check is played
    final isTutorialPlayed = diDto.mechanics.tutorial.checkIsTutorialPlayed(
      progress: progress,
      tutorial: event.tutorialName,
    );
    if (isTutorialPlayed && !event.shouldStartIfPlayed) return;

    final updatedState = LiveTutorialBlocState.fromProgressModel(
      data: _tutorialData,
      name: event.tutorialName,
      progress: progress,
    );
    if (updatedState != null) {
      emit(updatedState);
    }
  }

  Future<void> _onNextTutorial(
    final NextTutorialEvent event,
    final Emitter<TutorialBlocState> emit,
  ) async {
    final liveState = getLiveState();
    if (liveState.tutorial.isCompleted) {
      emit(PendingTutorialBlocState(progress: liveState.progress));
    } else {
      final tutorial = liveState.tutorial;
      await _notifier.notifyGamePostEffects(tutorial);
      final nextIndex = tutorial.currentIndex + 1;
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

  void _onTutorialUiAction(
    final TutorialUiActionEvent event,
    final Emitter<TutorialBlocState> emit,
  ) {
    final effectiveState = state;
    if (effectiveState is! LiveTutorialBlocState) return;
    final currentEvent = effectiveState.tutorial.currentEvent;
    if (currentEvent == null) return;
    diDto.mechanics.tutorial.verifyCompletion(
      tutorialEvent: currentEvent,
      uiEvent: event,
    );
  }

  TutorialCollectionsProgressModel getLiveProgress() {
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
