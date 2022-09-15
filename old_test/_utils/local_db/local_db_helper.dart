import 'package:sembast/sembast_memory.dart';
import 'package:word_by_word_game/_utils/utils.dart';

abstract class LocalDbHelperI<TDbName extends Enum> {
  Future<LocalDbI<TDbName>> setup();

  Future<void> tearDown();
}

class SembastDbHelper<TDbName extends Enum> implements LocalDbHelperI {
  // In memory factory for unit test
  static final dbFactory = newDatabaseFactoryMemory();
  LocalDbI<TDbName>? db;

  static const String _dbName = SembastDb.dbName;

  @override
  Future<LocalDbI<TDbName>> setup() async {
    final database = await dbFactory.openDatabase(_dbName);

    return db = await SembastDb.init<TDbName>(database: database);
  }

  @override
  Future<void> tearDown() async {
    await db?.close();
    await dbFactory.deleteDatabase(_dbName);
  }
}
