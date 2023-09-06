import 'dart:async' as lib_async;
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:life_hooks/life_hooks.dart';

import '../../wbw_core.dart';

class WorldTimeMechanics implements Loadable {
  WorldTimeMechanics();

  late final timer = lib_async.Timer.periodic(
    const Duration(seconds: 1),
    calculateNextDateTime,
  );
  void _cancelTimer() => timer.cancel();

  final _listeners = <ValueChanged<WorldTimeMechanics>>{};
  void addListener(final ValueChanged<WorldTimeMechanics> listener) =>
      _listeners.add(listener);
  void removeListener(final ValueChanged<WorldTimeMechanics> listener) =>
      _listeners.remove(listener);
  void notifyListeners() {
    for (final listener in _listeners) {
      listener(this);
    }
  }

  static const int _defaultSpeed = 200;
  static const int _speedStep = 500;

  /// real second to world second
  int get speedDelta => 1 * _currentSpeed;

  /// It should be pause at the beginning of the game
  int _currentSpeed = 0;

  void speedX2() => _currentSpeed = _defaultSpeed + (_speedStep * 2);
  void speedX3() => _currentSpeed = _defaultSpeed + (_speedStep * 3);

  bool get paused => speedDelta == 0;
  bool get isSpeed => _currentSpeed == _defaultSpeed;
  bool get isSpeed2 => _currentSpeed == _defaultSpeed + (_speedStep * 2);
  set paused(final bool isPaused) {
    if (isPaused) {
      _currentSpeed = 0;
    } else {
      _currentSpeed = _defaultSpeed;
    }
  }

  WorldDateTimeModel _datetime = WorldDateTimeModel.zero;
  WorldDateTimeModel get dateTime => _datetime;
  void useDateTime(final WorldDateTimeModel datetime) {
    _datetime = datetime;
    notifyListeners();
  }

  void pause() {
    paused = true;
    notifyListeners();
  }

  void resume() {
    paused = false;
    notifyListeners();
  }

  @override
  lib_async.Future<void> onLoad() async {
    log('TIMER: ${timer.isActive} ${timer.tick}');
  }

  /// Run this method when the player should initialize the
  void onInitLevel({
    required final WorldDateTimeModel worldDateTime,
  }) {
    useDateTime(worldDateTime);
    resume();
  }

  /// Run this method when the player completes or exit the game level
  void onLevelCompleted() {
    pause();
  }

  void calculateNextDateTime(final lib_async.Timer timer) {
    if (paused) return;
    final nextDateTime = _datetime.copyWith(
      second: _datetime.second + speedDelta,
    );
    useDateTime(nextDateTime);
  }

  void dispose() {
    _listeners.clear();
    _cancelTimer();
  }
}
