import 'dart:async' as lib_async;
import 'dart:developer';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:wbw_core/wbw_core.dart';

class WorldTimeMechanics extends Component {
  WorldTimeMechanics();
  late final timer = lib_async.Timer.periodic(
    const Duration(seconds: 1),
    calculateNextDateTime,
  );
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

  int _currentSpeed = _defaultSpeed;

  void speedX2() => _currentSpeed = _defaultSpeed + (_speedStep * 2);
  void speedX3() => _currentSpeed = _defaultSpeed + (_speedStep * 3);

  bool get paused => speedDelta == 0;
  bool get isSpeed => _currentSpeed == _defaultSpeed;
  bool get isSpeed2 => _currentSpeed == _defaultSpeed * 2;
  set paused(final bool isPaused) {
    if (isPaused) {
      _currentSpeed = 0;
    } else {
      _currentSpeed = _defaultSpeed;
    }
  }

  WorldDateTimeModel _datetime = const WorldDateTimeModel();
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
  lib_async.Future<void>? onLoad() {
    log('TIMER: ${timer.isActive} ${timer.tick}');
    return super.onLoad();
  }

  void calculateNextDateTime(final lib_async.Timer timer) {
    if (paused) return;
    final nextDateTime = _datetime.copyWith(
      second: _datetime.second + speedDelta,
    );
    useDateTime(nextDateTime);
  }

  @override
  void onRemove() {
    _listeners.clear();
    timer.cancel();
    super.onRemove();
  }
}
