import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wbw_core/wbw_core.dart';

Future<PrefsDb> _buildFilePrefsDb({
  final bool migrateFromAlternative = false,
}) async {
  final directory = await Directory.systemTemp.createTemp(
    'wbw_core_file_db_test',
  );
  final db = PrefsDb(
    backend: 'file',
    migrateFromAlternative: migrateFromAlternative,
    fileDirectory: directory.path,
    fileNamespace: 'test_suite',
  );
  await db.init();
  return db;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('File-backed PrefsDb', () {
    test('stores and reads all supported primitive types', () async {
      final db = await _buildFilePrefsDb();

      await db.setString(key: 'string_key', value: 'hello');
      await db.setInt(key: 'int_key', value: 123);
      await db.setBool(key: 'bool_key', value: true);
      await db.setMap(
        key: 'map_key',
        value: <String, dynamic>{'a': 1, 'b': 'two'},
      );
      await db.setStringList(key: 'string_list_key', value: <String>['a', 'b']);
      await db.setMapList(
        key: 'map_list_key',
        value: <Map<String, dynamic>>[
          <String, dynamic>{'id': 1},
          <String, dynamic>{'id': 2},
        ],
      );

      expect(await db.getString(key: 'string_key'), 'hello');
      expect(await db.getInt(key: 'int_key'), 123);
      expect(await db.getBool(key: 'bool_key'), true);
      expect(await db.getMap('map_key'), <String, dynamic>{'a': 1, 'b': 'two'});
      expect(await db.getStringsIterable(key: 'string_list_key'), ['a', 'b']);
      expect(await db.getMapIterable(key: 'map_list_key'), [
        <String, dynamic>{'id': 1},
        <String, dynamic>{'id': 2},
      ]);

      await db.clear();
      expect(
        await db.getString(key: 'string_key', defaultValue: 'empty'),
        'empty',
      );
      expect(await db.getInt(key: 'int_key'), 0);
      expect(await db.getBool(key: 'bool_key'), false);
      expect(await db.getMap('map_key'), <String, dynamic>{});
      expect(await db.getStringsIterable(key: 'string_list_key'), <String>[]);
      expect(
        await db.getMapIterable(key: 'map_list_key'),
        const <Map<String, dynamic>>[],
      );
    });

    test('migrates known keys from prefs to file backend', () async {
      SharedPreferences.setMockInitialValues(<String, Object>{});

      final prefsDb = PrefsDb(backend: 'prefs');
      await prefsDb.init();
      await prefsDb.clear();

      await prefsDb.setString(key: 'settings_locale', value: 'en');
      await prefsDb.setString(key: 'settings_brightness', value: 'bright');
      await prefsDb.setStringList(
        key: 'localdictionary',
        value: <String>['one', 'two', 'three'],
      );
      await prefsDb.setMap(
        key: 'template_levels',
        value: <String, dynamic>{'level_1': 'data'},
      );

      final fileDb = await _buildFilePrefsDb(migrateFromAlternative: true);
      expect(await fileDb.getString(key: 'settings_locale'), 'en');
      expect(await fileDb.getString(key: 'settings_brightness'), 'bright');
      expect(await fileDb.getStringsIterable(key: 'localdictionary'), [
        'one',
        'two',
        'three',
      ]);
      expect(await fileDb.getMap('template_levels'), <String, dynamic>{
        'level_1': 'data',
      });
    });
  });
}
