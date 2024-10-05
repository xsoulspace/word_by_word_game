import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'local_db.dart';

class PrefsDb implements LocalDbI {
  SharedPreferences? _prefs;
  SharedPreferences get prefs {
    final instance = _prefs;
    if (instance == null) {
      throw ArgumentError.notNull(
        'Seems you trying to access before initialization. '
        'Please call this later in the code, or call init first. ',
      );
    }
    return instance;
  }

  @override
  Future<void> init() async {
    /// Potentially huge time consumer,
    /// as it loads all shared preferences to cache
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Future<void> setMap({
    required final String key,
    required final Map<String, dynamic> value,
  }) async =>
      setString(key: key, value: jsonEncode(value));

  @override
  Future<Map<String, dynamic>> getMap(
    final String key,
  ) async {
    final str = await getString(key: key);
    if (str.isEmpty) return {};

    return Map.castFrom<dynamic, dynamic, String, dynamic>(
      jsonDecode(str),
    );
  }

  @override
  Future<void> setString({
    required final String key,
    required final String value,
  }) async {
    await prefs.setString(key, value);
  }

  @override
  Future<String> getString({
    required final String key,
    final String defaultValue = '',
  }) async {
    final value = prefs.getString(key);

    return value ?? defaultValue;
  }

  @override
  Future<void> setBool({
    required final String key,
    required final bool value,
  }) async {
    await prefs.setBool(key, value);
  }

  @override
  Future<bool> getBool({
    required final String key,
    final bool defaultValue = false,
  }) async =>
      prefs.getBool(key) ?? defaultValue;

  @override
  Future<void> setInt({
    required final String key,
    final int value = 0,
  }) async {
    await prefs.setInt(key, value);
  }

  @override
  Future<int> getInt({
    required final String key,
    final int defaultValue = 0,
  }) async =>
      prefs.getInt(key) ?? defaultValue;

  @override
  Future<Iterable<Map<String, dynamic>>> getMapIterable({
    required final String key,
    final List<Map<String, dynamic>> defaultValue = const [],
  }) async {
    final strings = await getStringsIterable(key: key);

    return strings.map(
      (final e) =>
          Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(e)),
    );
  }

  @override
  Future<void> setMapList({
    required final String key,
    required final List<Map<String, dynamic>> value,
  }) async {
    final stringList = value.map(jsonEncode).toList();
    await setStringList(key: key, value: stringList);
  }

  @override
  Future<Iterable<String>> getStringsIterable({
    required final String key,
    final List<String> defaultValue = const [],
  }) async =>
      prefs.getStringList(key) ?? [];

  @override
  Future<void> setStringList({
    required final String key,
    required final List<String> value,
  }) async {
    await prefs.setStringList(key, value);
  }

  @override
  Future<void> setItemsList<T>({
    required final String key,
    required final List<T> value,
    required final Map<String, dynamic> Function(T e) convertToJson,
  }) async {
    await setMapList(key: key, value: value.map(convertToJson).toList());
  }

  @override
  Future<Iterable<T>> getItemsIterable<T>({
    required final String key,
    required final T Function(Map<String, dynamic> json) convertFromJson,
    final List<T> defaultValue = const [],
  }) async {
    final jsons = await getMapIterable(key: key);
    if (jsons.isEmpty) return defaultValue;

    return jsons.map(convertFromJson);
  }

  @override
  Future<T?> getItem<T>({
    required final String key,
    required final T Function(Map<String, dynamic> json) convertFromJson,
  }) async {
    final json = await getMap(key);
    if (json.isEmpty) return null;

    return convertFromJson(json);
  }

  @override
  Future<void> setItem<T>({
    required final String key,
    required final T value,
    required final Map<String, dynamic> Function(T e) convertToJson,
  }) async {
    final json = convertToJson(value);
    await setMap(key: key, value: json);
  }
}
