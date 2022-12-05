import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:word_by_word_game/analytics/firebase/firebase.dart';
import 'package:word_by_word_game/analytics/notifiers/analytics_notifier.dart';
import 'package:word_by_word_game/firebase_options.dart';

class FirebaseInitializer implements AbstractFirebaseInitializer {
  @override
  Future<void> onLoad() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  @override
  Future<void> onDelayedLoad() async {
    return;
  }
}

class FirebaseAnalyticsPlugin implements AbstractAnalytics {
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  bool isSupported = false;
  @override
  Future<void> onLoad() async {
    isSupported = await analytics.isSupported();
    if (isSupported) {
      await analytics.logAppOpen();
    }
  }

  @override
  Future<void> recordError(
    final dynamic exception,
    final StackTrace? stack, {
    final dynamic reason,
    final Iterable<DiagnosticsNode> information = const [],
    final bool fatal = false,
    final bool? printDetails,
  }) async {
    if (!isSupported) return;
    final errorDetailsStr = convertErrorDetailsToString(
      exception,
      stack,
      reason: reason,
      information: information,
      fatal: fatal,
      printDetails: printDetails,
    );
    await analytics.logEvent(
      name: 'error',
      parameters: {'details': errorDetailsStr},
    );
  }

  @override
  Future<void> recordFlutterError(
    final FlutterErrorDetails flutterErrorDetails, {
    final bool fatal = false,
  }) async {
    if (!isSupported) return;
    await recordError(
      flutterErrorDetails.exceptionAsString(),
      flutterErrorDetails.stack,
      reason: flutterErrorDetails.context,
      information: flutterErrorDetails.informationCollector == null
          ? []
          : flutterErrorDetails.informationCollector!(),
      printDetails: false,
      fatal: fatal,
    );
  }

  @override
  Future<void> onDelayedLoad() async {
    return;
  }

  @override
  Future<void> logEvent(final AnalyticEvents event) async {
    if (!isSupported) return;
    await analytics.logEvent(name: event.name);
  }
}
