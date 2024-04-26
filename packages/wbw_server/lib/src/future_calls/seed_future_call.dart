import 'dart:io';

import 'package:csv/csv.dart';
import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class SeedCall extends FutureCall {
  @override
  Future<void> invoke(Session session, dynamic _) async {
    final current = Directory.current;
    final langs = ['eng', 'ru'];
    final futures = <Future<dynamic>>[];
    for (final lang in langs) {
      final file = File('${current.path}/assets/${lang}_dic.csv');
      if (file.existsSync()) {
        final csvStr = file.readAsStringSync();
        final csv =
            const CsvToListConverter(fieldDelimiter: ';').convert(csvStr);
        for (final row in csv) {
          if (row case [final String word, final String meaning]) {
            if (word.isEmpty) continue;

            futures.add(WordModel.db.insertRow(
              session,
              WordModel(
                language: lang,
                word: word,
                meaning: meaning,
              ),
            ));
          }
        }
      }
    }

    await Future.wait(futures);
  }
}
