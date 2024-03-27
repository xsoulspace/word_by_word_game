import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';

import '../../data_models/data_models.dart';
import '../../localization/localization.dart';
import '../../mechanics/mechanics.dart';

part './tutorial_listener.dart';
part 'tutorial_bloc.freezed.dart';
part 'tutorial_bloc.g.dart';
part 'tutorial_data.dart';
part 'tutorial_events.dart';
part 'tutorial_states.dart';

class TutorialBlocDiDto {
  TutorialBlocDiDto.use(final BuildContext context)
      : mechanics = context.read();
  final MechanicsCollection mechanics;
}

class TutorialBloc extends Cubit<TutorialBlocState> {
  TutorialBloc({
    required this.diDto,
  }) : super(const TutorialBlocStateEmpty()) {
    notifier = TutorialStateNotifier.listen(bloc: this);
  }
  @override
  Future<void> close() {
    notifier.dispose();
    return super.close();
  }

  final TutorialBlocDiDto diDto;
  late final TutorialStateNotifier notifier;

  void onLoadTutorialsProgress(
    final LoadTutorialsProgressEvent event,
  ) {
    final newState = TutorialBlocStatePending(progress: event.progress);
    emit(newState);
  }

  Future<void> onStartTutorial(
    final StartTutorialEvent event,
  ) async {
    TutorialCollectionsProgressModel progress = getLiveProgress();
    if (event.shouldStartFromBeginning) {
      progress = diDto.mechanics.tutorial.resetProgress(
        progress: progress,
        tutorial: event.tutorialName,
      );
    } else {
      // check is played
      final isTutorialPlayed = diDto.mechanics.tutorial.checkIsTutorialPlayed(
        progress: progress,
        tutorial: event.tutorialName,
      );
      if (isTutorialPlayed && !event.shouldContinueIfPlayed) {
        emit(TutorialBlocStatePending(progress: progress));
        return;
      }
    }

    final updatedState = TutorialBlocState.fromProgressModel(
      data: _tutorialData,
      name: event.tutorialName,
      progress: progress,
    );
    if (updatedState != null) {
      await notifier.notifyGamePreEffects(updatedState.tutorial);
      emit(updatedState);
    }
  }

  void onCompleteTutorial(
    final CompleteTutorialEvent event,
  ) {
    final effectiveState = state;
    if (effectiveState is! TutorialBlocStateLive) return;
    unawaited(
      onNextTutorial(
        const NextTutorialEvent(action: NextTutorialEventType.complete),
      ),
    );
  }

  Future<void> onNextTutorial(
    final NextTutorialEvent event,
  ) async {
    TutorialBlocStateLive liveState = getLiveState();
    TutorialEventsCollectionModel tutorial = liveState.tutorial;
    TutorialEventModel? tutorialEvent = tutorial.currentEvent;
    if (liveState.tutorial.isCompleted) {
      emit(TutorialBlocStatePending(progress: liveState.progress));
      return;
    }
    if (event.action == NextTutorialEventType.complete) {
      final updatedTutorial = tutorial.copyWith(
        currentIndex: tutorial.events.length,
      );
      final newLiveState = TutorialBlocStateLive(
        tutorial: updatedTutorial,
        progress: liveState.progress,
      );
      final updatedLiveState = newLiveState.applyTutorialProgress();
      emit(TutorialBlocStatePending(progress: updatedLiveState.progress));
    } else {
      if (tutorialEvent == null) return;
      if (!tutorialEvent.isCompleted &&
          event.action != NextTutorialEventType.complete) return;

      await notifier.notifyGamePostEffects(tutorial);
      if (state is TutorialBlocStatePending) {
        return;
      }
      liveState = getLiveState();

      /// refesh tutorial, since it may be changed
      tutorial = liveState.tutorial;
      tutorialEvent = tutorial.currentEvent;
      if (tutorial.isCompleted) {
        emit(TutorialBlocStatePending(progress: liveState.progress));
        return;
      }

      int nextIndex;
      switch (event.action) {
        case NextTutorialEventType.next:
          nextIndex = tutorial.currentIndex + 1;
        case NextTutorialEventType.previous:
          if (tutorial.currentIndex > 0) {
            nextIndex = tutorial.currentIndex - 1;
          } else {
            nextIndex = 0;
          }
        case NextTutorialEventType.complete:
          nextIndex = tutorial.events.length;
      }

      final updatedTutorial = tutorial.copyWith(
        currentIndex: nextIndex,
      );
      final newLiveState = TutorialBlocStateLive(
        tutorial: updatedTutorial,
        progress: liveState.progress,
      );
      final updatedLiveState = newLiveState.applyTutorialProgress();

      if (updatedLiveState.tutorial.isCompleted) {
        emit(TutorialBlocStatePending(progress: updatedLiveState.progress));
      } else {
        emit(updatedLiveState);
        await notifier.notifyGamePreEffects(updatedTutorial);
      }
    }
  }

  void onTutorialUiAction(
    final TutorialUiActionEvent event,
  ) {
    final effectiveState = state;
    if (effectiveState is! TutorialBlocStateLive) return;
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
      unawaited(onNextTutorial(const NextTutorialEvent()));
    }
  }

  TutorialCollectionsProgressModel getLiveProgress() {
    final effectiveState = state;
    if (effectiveState is TutorialBlocStateLive) {
      return effectiveState.progress;
    } else if (effectiveState is TutorialBlocStatePending) {
      return effectiveState.progress;
    }
    throw ArgumentError.value(effectiveState);
  }

  TutorialEventModel getTutorialEvent() {
    final tutorial = getTutorial();
    final index = tutorial.currentIndex;
    return tutorial.events[index];
  }

  TutorialEventsCollectionModel getTutorial() => getLiveState().tutorial;

  TutorialBlocStateLive getLiveState() => switch (state) {
        // TODO(arenukvern): as is wrong - fix this
        TutorialBlocStateLive() => state as TutorialBlocStateLive,
        _ => throw ArgumentError.value('$state'),
      };
}
