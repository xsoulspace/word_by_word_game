import 'package:life_hooks/life_hooks.dart';

export 'firebase_io.dart'
    if (Platform.isLinux) 'firebase_noop.dart'
    if (dart.library.html) 'firebase_web.dart';

/// Toggle this for testing Crashlytics in your app locally.
const kTestingCrashlytics = false;

/// Toggle this for testing Analytics in your app locally.
const kTestingAnalytics = false;

abstract class AbstractFirebaseInitializer implements Loadable {
  @override
  Future<void> onLoad();
  Future<void> onDelayedLoad();
}
