import 'package:flutter/material.dart';
import 'package:word_by_word_game/analytics/firebase/firebase.dart';
import 'package:word_by_word_game/analytics/notifiers/analytics_notifier.dart';

class FirebaseInitializer implements AbstractFirebaseInitializer {
  @override
  Future<void> onLoad() async {}

  @override
  Future<void> onDelayedLoad() async {
    return;
  }
}

class FirebaseAnalyticsPlugin implements AbstractAnalytics {
  bool isSupported = false;
  @override
  Future<void> onLoad() async {}

  @override
  Future<void> recordError(
    final dynamic exception,
    final StackTrace? stack, {
    final dynamic reason,
    final Iterable<DiagnosticsNode> information = const [],
    final bool fatal = false,
    final bool? printDetails,
  }) async {}

  @override
  Future<void> recordFlutterError(
    final FlutterErrorDetails flutterErrorDetails, {
    final bool fatal = false,
  }) async {}

  @override
  Future<void> onDelayedLoad() async {
    return;
  }

  @override
  Future<void> logEvent(final AnalyticEvents event) async {}
}
