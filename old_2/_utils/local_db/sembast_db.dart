part of utils;

class SembastDb<TDbName extends Enum> implements LocalDbI<TDbName> {
  SembastDb({
    required this.db,
  });

  @factory
  static Future<SembastDb<TDbName>> init<TDbName extends Enum>({
    final Database? database,
  }) async {
    Database? dbFactory = database;
    dbFactory ??= await databaseFactoryIo.openDatabase(
      await getDbPath(),
      version: 0,
    );

    return SembastDb<TDbName>(db: dbFactory);
  }

  static const dbName = 'game.db';

  final Database db;

  static Future<String> getDbPath() async {
    final dir = await getApplicationDocumentsDirectory();

    /// make sure it exists
    await dir.create(recursive: true);

    /// build the database path
    return join(dir.path, dbName);
  }

  LocalDbStore getStore(final TDbName storeName) =>
      LocalDbStore(storeName.name);

  @override
  String getJsonId(final Map<String, dynamic> json) {
    dynamic id = json['id'];
    if (id == null) {
      throw ArgumentError.notNull(
        "json $json doesn't have an id. Please provide it to json.",
      );
    }
    if (id is int) {
      id = '$id';
    }
    if (id is! String || id.isEmpty) {
      throw ArgumentError.value(
        'json $json id has wrong type or empty',
      );
    }
    return id;
  }

  @override
  Future<void> put({
    required final TDbName storeName,
    required final Map<String, dynamic> json,
  }) {
    final id = getJsonId(json);
    return getStore(storeName).record(id).put(db, json);
  }

  @override
  Future<void> putAll({
    required final TDbName storeName,
    required final Iterable<Map<String, dynamic>> jsonList,
  }) async {
    final store = getStore(storeName);

    final keys = jsonList.map(getJsonId);

    await db.transaction((final txn) async {
      await store.records(keys).put(txn, jsonList.toList());
    });
  }

  @override
  Future<Map<String, Object?>?> get({
    required final TDbName storeName,
    required final String id,
  }) {
    return getStore(storeName).record(id).get(db);
  }

  @override
  Future<List<RecordSnapshot<String, Map<String, Object?>>>> find({
    required final TDbName storeName,
    required final Finder? finder,
  }) {
    return getStore(storeName).find(db, finder: finder);
  }

  @override
  Future<RecordSnapshot<String, Map<String, Object?>>?> findFirst({
    required final TDbName storeName,
    required final Finder finder,
  }) {
    return getStore(storeName).findFirst(db, finder: finder);
  }

  @override
  Future<void> remove({
    required final TDbName storeName,
    required final String id,
  }) {
    return getStore(storeName).record(id).delete(db);
  }

  @override
  Future<void> useTransaction({
    required final TransactionBuilder builder,
  }) async =>
      db.transaction(builder);

  @override
  Future<void> close() => db.close();

  @override
  Future<void> removeAll({required final TDbName storeName}) async {
    await getStore(storeName).delete(db);
  }
}
