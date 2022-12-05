import 'package:life_hooks/life_hooks.dart';

export 'firebase_io.dart'
    if (Platform.isLinux) 'firebase_noop.dart'
    if (dart.library.html) 'firebase_web.dart';

abstract class AbstractFirebaseInitializer implements Loadable {
  @override
  Future<void> onLoad();
  Future<void> onDelayedLoad();
}
