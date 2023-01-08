import 'dart:isolate';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/firebase_options.dart';
import 'package:word_by_word_game/pack_core/analytics/firebase/abstract_firebase.dart';
import 'package:word_by_word_game/pack_core/analytics/notifiers/analytics_notifier.dart';

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
  bool isEnabled = false;
  @override
  Future<void> onLoad() async {
    isEnabled = kTestingAnalytics ||
        (!Platform.isLinux && await analytics.isSupported());
    if (isEnabled) {
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
    if (!isEnabled) return;
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
    if (!isEnabled) return;
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
  Future<void> logAnalyticEvent(final AnalyticEvents event) async {
    if (!isEnabled) return;
    await analytics.logEvent(name: event.name);
  }
}

class FirebaseCrashlyticsPlugin implements AbstractAnalytics {
  FirebaseCrashlytics crashlitics = FirebaseCrashlytics.instance;
  bool isEnabled = false;
  @override
  Future<void> onLoad() async {
    // Force enable crashlytics collection enabled if we're testing it.
    // Else only enable it in non-debug builds.
    isEnabled = kTestingCrashlytics || DeviceRuntimeType.isMobile;

    if (isEnabled) {
      // You could additionally extend this to allow users to opt-in.
      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(isEnabled);
      Isolate.current.addErrorListener(
        RawReceivePort((final pair) async {
          final List<dynamic> errorAndStacktrace = pair;
          await FirebaseCrashlytics.instance.recordError(
            errorAndStacktrace.first,
            errorAndStacktrace.last,
            fatal: true,
          );
        }).sendPort,
      );
      // Pass all uncaught asynchronous errors that aren't handled by the
      // Flutter framework to Crashlytics
      PlatformDispatcher.instance.onError = (final error, final stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    }
  }

  @override
  Future<void> onDelayedLoad() async {}

  @override
  Future<void> recordError(
    final dynamic exception,
    final StackTrace? stack, {
    final dynamic reason,
    final Iterable<DiagnosticsNode> information = const [],
    final bool fatal = false,
    final bool? printDetails,
  }) async {
    if (!isEnabled) return;
    await FirebaseCrashlytics.instance.recordError(
      exception,
      stack,
      fatal: fatal,
      information: information,
      printDetails: printDetails,
      reason: reason,
    );
  }

  @override
  Future<void> recordFlutterError(
    final FlutterErrorDetails flutterErrorDetails, {
    final bool fatal = false,
  }) async {
    if (!isEnabled) return;
    await FirebaseCrashlytics.instance.recordFlutterError(
      flutterErrorDetails,
      fatal: fatal,
    );
  }

  @override
  Future<void> logAnalyticEvent(final AnalyticEvents event) async {}

  static Future<void> testAsyncErrorOnInit() async {
    Future<void>.delayed(const Duration(seconds: 2), () {
      final List<int> list = <int>[];
      // ignore: avoid_print
      print(list[100]);
    });
  }
}
