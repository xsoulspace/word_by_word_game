export 'prefs_db.dart';

abstract interface class LocalDbI {
  Future<void> init();
  Future<void> setMap({
    required final String key,
    required final Map<String, dynamic> value,
  });
  Future<Map<String, dynamic>> getMap(
    final String key,
  );
  Future<void> setString({
    required final String key,
    required final String value,
  });
  Future<String> getString({
    required final String key,
    final String defaultValue = '',
  });
  Future<void> setBool({required final String key, required final bool value});
  Future<bool> getBool({
    required final String key,
    final bool defaultValue = false,
  });
  Future<void> setInt({
    required final String key,
    final int value = 0,
  });
  Future<int> getInt({
    required final String key,
    final int defaultValue = 0,
  });

  Future<void> setItem<T>({
    required final String key,
    required final T value,
    required final Map<String, dynamic> Function(T) convertToJson,
  });

  Future<T?> getItem<T>({
    required final String key,
    required final T Function(Map<String, dynamic>) convertFromJson,
  });

  Future<void> setItemsList<T>({
    required final String key,
    required final List<T> value,
    required final Map<String, dynamic> Function(T) convertToJson,
  });
  Future<Iterable<T>> getItemsIterable<T>({
    required final String key,
    required final T Function(Map<String, dynamic>) convertFromJson,
    final List<T> defaultValue = const [],
  });

  Future<void> setMapList({
    required final String key,
    required final List<Map<String, dynamic>> value,
  });
  Future<Iterable<Map<String, dynamic>>> getMapIterable({
    required final String key,
    final List<Map<String, dynamic>> defaultValue = const [],
  });
  Future<void> setStringList({
    required final String key,
    required final List<String> value,
  });
  Future<Iterable<String>> getStringsIterable({
    required final String key,
    final List<String> defaultValue = const [],
  });
}
