import 'package:sembast/sembast.dart';
import 'package:sembast_web/sembast_web.dart';

import 'data_source_i.dart';

final class WbwDictionaryDataSource extends WbwDictionaryDataSourceBase {
  WbwDictionaryDataSource();
  @override
  DatabaseFactory dbFactory = databaseFactoryWeb;
}
