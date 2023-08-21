part of 'tutorial_bloc.dart';

class TutorialStateNotifier implements Disposable {
  TutorialStateNotifier.listen({
    required final TutorialBloc bloc,
  }) {
    _subscription = bloc.stream.distinct().listen(_onStateChange);
  }
  late final StreamSubscription<TutorialBlocState> _subscription;
  final _listeners = <TutorialEventListener>{};
  @override
  Future<void> dispose() async {
    _listeners.clear();
    await _subscription.cancel();
  }

  Future<void> _onStateChange(final TutorialBlocState state) async {
    if (state is! TutorialBlocStateLive) return;
    if (state.tutorial.isCompleted) return;
    final event = state.tutorial.currentEvent;
    if (event == null) return;
    await Future.wait(
      _listeners.map((final listener) async {
        await listener.onEvent(event);
      }),
    );
  }

  Future<void> notifyGamePreEffects(
    final TutorialEventsCollectionModel tutorial,
  ) async {
    final event = tutorial.currentEvent;

    if (event != null && event.gamePreEffects.isNotEmpty == true) {
      await Future.wait(
        _listeners
            .map((final listener) async => listener.onEventPreEffects(event)),
      );
    }
  }

  Future<void> notifyGamePostEffects(
    final TutorialEventsCollectionModel tutorial,
  ) async {
    final event = tutorial.currentEvent;

    if (event != null && event.gamePostEffects.isNotEmpty == true) {
      await Future.wait(
        _listeners
            .map((final listener) async => listener.onEventPostEffects(event)),
      );
    }
  }

  void addListener(final TutorialEventListener listener) {
    _listeners.add(listener);
  }

  void removeListener(final TutorialEventListener listener) {
    _listeners.remove(listener);
  }
}

// ignore: one_member_abstracts
abstract class TutorialEventListener {
  Future<void> onEvent(final TutorialEventModel event) async {}
  Future<void> onEventPreEffects(final TutorialEventModel event) async {}
  Future<void> onEventPostEffects(final TutorialEventModel event) async {}
}
