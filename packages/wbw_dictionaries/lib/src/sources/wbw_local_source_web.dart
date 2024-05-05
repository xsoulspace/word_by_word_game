import 'package:sembast/sembast.dart';
import 'package:sembast_web/sembast_web.dart';

import 'wbw_local_source_i.dart';

final class WbwDictionaryLocalSource extends WbwDictionaryLocalSourceBase {
  @override
  DatabaseFactory dbFactory = databaseFactoryWeb;
}
