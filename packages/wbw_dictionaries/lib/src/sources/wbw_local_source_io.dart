import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import 'wbw_local_source_i.dart';

final class WbwDictionaryLocalSource extends WbwDictionaryLocalSourceBase {
  @override
  DatabaseFactory dbFactory = databaseFactoryIo;
}
