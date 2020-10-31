import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/FirstPlayer.dart';
import 'package:word_by_word_game/models/PlayerColorsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/StorageModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/screens/InputScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => PlayersModel(
                playerIdMax: 1,
                playersByPlayerIdMap: {firstPlayer.id: firstPlayer},
                currentPlayer: firstPlayer)),
        ChangeNotifierProvider(create: (context) => WordsModel()),
        ChangeNotifierProvider(create: (context) => PlayerColorsModel()),
        ChangeNotifierProvider(
            create: (context) => StorageModel(context: context)),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: InputScreen());
  }
}
