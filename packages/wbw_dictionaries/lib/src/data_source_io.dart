import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import 'data_source_i.dart';

final class WbwDictionaryDataSource extends WbwDictionaryDataSourceBase {
  WbwDictionaryDataSource();
  @override
  DatabaseFactory dbFactory = databaseFactoryIo;
}
