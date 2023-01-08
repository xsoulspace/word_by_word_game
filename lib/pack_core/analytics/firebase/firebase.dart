export 'firebase_noop.dart'
    if (Platform.isLinux) 'firebase_io.dart'
    if (dart.library.html) 'firebase_web.dart';
