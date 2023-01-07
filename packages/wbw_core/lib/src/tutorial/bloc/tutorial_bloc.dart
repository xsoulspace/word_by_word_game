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
    on<CompleteTutorialEvent>(_onCompleteTutorial);
    notifier = TutorialStateNotifier.listen(bloc: this);
  }
  @override
  Future<void> close() {
    notifier.dispose();
    return super.close();
  }

  final TutorialBlocDiDto diDto;
  late final TutorialStateNotifier notifier;

  void _onLoadTutorialsProgress(
    final LoadTutorialsProgressEvent event,
    final Emitter<TutorialBlocState> emit,
  ) {
    final newState = PendingTutorialBlocState(progress: event.progress);
    emit(newState);
  }

  Future<void> _onStartTutorial(
    final StartTutorialEvent event,
    final Emitter<TutorialBlocState> emit,
  ) async {
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
      await notifier.notifyGamePreEffects(updatedState.tutorial);
      emit(updatedState);
    }
  }

  void _onCompleteTutorial(
    final CompleteTutorialEvent event,
    final Emitter<TutorialBlocState> emit,
  ) {
    final effectiveState = state;
    if (effectiveState is! LiveTutorialBlocState) return;
    add(const NextTutorialEvent(action: NextTutorialEventType.complete));
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
      final tutorialEvent = tutorial.currentEvent;
      if (tutorialEvent == null ||
          (!tutorialEvent.isCompleted &&
              event.action != NextTutorialEventType.complete)) return;

      await notifier.notifyGamePostEffects(tutorial);
      int nextIndex;
      switch (event.action) {
        case NextTutorialEventType.next:
          nextIndex = tutorial.currentIndex + 1;
          break;
        case NextTutorialEventType.previous:
          if (tutorial.currentIndex > 0) {
            nextIndex = tutorial.currentIndex - 1;
          } else {
            nextIndex = 0;
          }
          break;
        case NextTutorialEventType.complete:
          nextIndex = tutorial.events.length;
          break;
      }

      final updatedTutorial = tutorial.copyWith(
        currentIndex: nextIndex,
      );
      final newLiveState = LiveTutorialBlocState(
        tutorial: updatedTutorial,
        progress: liveState.progress,
      );
      final updatedLiveState = newLiveState.applyTutorialProgress();
      emit(updatedLiveState);

      if (updatedLiveState.tutorial.isCompleted) {
        emit(PendingTutorialBlocState(progress: updatedLiveState.progress));
      } else {
        await notifier.notifyGamePreEffects(updatedTutorial);
      }
    }
  }

  void _onTutorialUiAction(
    final TutorialUiActionEvent event,
    final Emitter<TutorialBlocState> emit,
  ) {
    final effectiveState = state;
    if (effectiveState is! LiveTutorialBlocState) return;
    final tutorial = effectiveState.tutorial;
    final currentEvent = tutorial.currentEvent;
    if (currentEvent == null) return;
    final updatedEvent = diDto.mechanics.tutorial.verifyCompletion(
      tutorialEvent: currentEvent,
      uiEvent: event,
    );
    final updatedEvents = [...tutorial.events]..[tutorial.currentIndex] =
        updatedEvent;
    emit(
      effectiveState.copyWith(
        tutorial: tutorial.copyWith(
          events: updatedEvents,
        ),
      ),
    );
    if (updatedEvent.isCompleted) {
      add(const NextTutorialEvent());
    }
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
