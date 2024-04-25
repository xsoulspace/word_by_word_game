export 'local_source_io.dart'
    if (dart.library.html) 'local_source_web.dart'
    if (dart.library.io) 'local_source_io.dart';
