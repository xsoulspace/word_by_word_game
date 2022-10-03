import 'package:flutter_test/flutter_test.dart';
import 'package:sembast/sembast.dart' as sembast;
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/_utils/utils.dart';

import 'local_db_helper.dart';

void main() {
  LocalDbI? db;
  final LocalDbHelperI dbHelper = SembastDbHelper();

  setUpAll(() async {
    db = await dbHelper.setup();
  });

  tearDownAll(() async {
    await dbHelper.tearDown();
  });

  group('LocalDb', () {
    test('.getJsonId() can get', () async {
      final id = db?.getJsonId({'id': '1'});
      expect(id, equals('1'));
    });
    test('.put() & .get() can put and get back', () async {
      const level = BookShelfLevelModel.empty;
      final levelJson = level.toJson();
      await db?.put(
        storeName: DbStore.profile,
        json: levelJson,
      );
      final resultJson = await db?.get(
        storeName: DbStore.profile,
        id: level.id,
      );
      expect(resultJson, equals(levelJson));
    });
    test('.put() & .remove() can put and remove', () async {
      const level = BookShelfLevelModel.empty;
      final levelJson = level.toJson();

      await db?.put(
        storeName: DbStore.profile,
        json: levelJson,
      );
      await db?.remove(
        storeName: DbStore.profile,
        id: level.id,
      );
      final resultJson = await db?.get(
        storeName: DbStore.profile,
        id: level.id,
      );
      expect(resultJson, isNull);
    });
    test('.putAll() & .find() can put several levels and retrieve them',
        () async {
      final jsonList = [
        {'id': 1},
        {'id': 2}
      ];
      await db?.putAll(
        storeName: DbStore.profile,
        jsonList: jsonList,
      );
      final messagesSnaps = await db?.find(
        storeName: DbStore.profile,
        finder: null,
      );

      expect(messagesSnaps, isNotNull);
      expect(messagesSnaps, hasLength(2));

      final messages = messagesSnaps?.map((final e) => e.value).toList();
      expect(messages, unorderedMatches(jsonList));
    });
    test('.findFirst() can put several messages and get first one', () async {
      final jsonList = [
        {'id': 1},
        {'id': 2}
      ];
      await db?.putAll(
        storeName: DbStore.profile,
        jsonList: jsonList,
      );
      final finder = sembast.Finder(
        filter: sembast.Filter.equals('id', 1),
      );
      final messageSnap = await db?.findFirst(
        storeName: DbStore.profile,
        finder: finder,
      );

      expect(messageSnap, isNotNull);

      expect(messageSnap!.value, equals(jsonList.first));
    });
  });
}
