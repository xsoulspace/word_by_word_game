part of utils;

typedef LocalDbStore = StoreRef<String, Map<String, Object?>>;

typedef TransactionBuilder = Future<void> Function(Transaction transaction);

abstract class LocalDbI<TDbName extends Enum> {
  String getJsonId(final Map<String, dynamic> json);
  Future<void> put({
    required final TDbName storeName,
    required final Map<String, dynamic> json,
  });

  Future<void> remove({
    required final TDbName storeName,
    required final String id,
  });

  Future<void> putAll({
    required final TDbName storeName,
    required final Iterable<Map<String, dynamic>> jsonList,
  });

  Future<Map<String, Object?>?> get({
    required final TDbName storeName,
    required final String id,
  });

  Future<List<RecordSnapshot<String, Map<String, Object?>>>> find({
    required final TDbName storeName,
    required final Finder? finder,
  });
  Future<RecordSnapshot<String, Map<String, Object?>>?> findFirst({
    required final TDbName storeName,
    required final Finder finder,
  });
  Future<void> useTransaction({
    required final TransactionBuilder builder,
  });

  Future<void> close();
  Future<void> removeAll({required final TDbName storeName});
}
