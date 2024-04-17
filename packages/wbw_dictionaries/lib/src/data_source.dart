export 'data_source_io.dart'
    if (dart.library.html) 'data_source_web.dart'
    if (dart.library.io) 'data_source_io.dart';
