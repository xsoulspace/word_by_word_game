import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../interfaces/interfaces.dart';

/// This service purpose to manage shared preferences only
class SharedPreferencesDbDataSourceImpl implements LocalDbDataSource {
  // ignore: avoid_unused_constructor_parameters
  SharedPreferencesDbDataSourceImpl(final BuildContext context);
  // cached SharedPreferences instance
  SharedPreferences? _sharedPreferences;
  Future<SharedPreferences> get sharedPreferences async =>
      _sharedPreferences ??= await SharedPreferences.getInstance();

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
    final prefs = await sharedPreferences;
    await prefs.setString(key, value);
  }

  @override
  Future<String> getString({
    required final String key,
    final String defaultValue = '',
  }) async {
    final prefs = await sharedPreferences;
    final value = prefs.getString(key);

    return value ?? defaultValue;
  }

  @override
  Future<void> setBool({
    required final String key,
    required final bool value,
  }) async {
    final prefs = await sharedPreferences;
    await prefs.setBool(key, value);
  }

  @override
  Future<bool> getBool({
    required final String key,
    final bool defaultValue = false,
  }) async {
    final prefs = await sharedPreferences;

    return prefs.getBool(key) ?? defaultValue;
  }

  @override
  Future<void> setInt({
    required final String key,
    final int value = 0,
  }) async {
    final prefs = await sharedPreferences;
    await prefs.setInt(key, value);
  }

  @override
  Future<int> getInt({
    required final String key,
    final int defaultValue = 0,
  }) async {
    final prefs = await sharedPreferences;

    return prefs.getInt(key) ?? defaultValue;
  }

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
  }) async {
    final prefs = await sharedPreferences;

    return prefs.getStringList(key) ?? [];
  }

  @override
  Future<void> setStringList({
    required final String key,
    required final List<String> value,
  }) async {
    final prefs = await sharedPreferences;

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
