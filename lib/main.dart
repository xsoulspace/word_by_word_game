import 'package:flutter/material.dart';
import 'package:word_by_word_game/_utils/utils.dart';
import 'package:word_by_word_game/pack_game/pack_game.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = await SembastDb.init<DbStore>();
  runApp(
    WordByWordGame(
      db: db,
    ),
  );
}
