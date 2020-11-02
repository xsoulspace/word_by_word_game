import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/FirstPlayer.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayerColorsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/StorageModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/screens/InputScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => PlayersModel({firstPlayer.id: firstPlayer},
                currentPlayer: firstPlayer,
                tempPlayers: playerColors
                    .map((color) => Player(id: color.id, playerColor: color))
                    .toList())),
        ChangeNotifierProvider(create: (context) => WordsModel({}, {})),
        ChangeNotifierProvider(create: (context) => PlayerColorsModel()),
        ChangeNotifierProvider(create: (context) => ScoreModel()),
        ChangeNotifierProvider(create: (context) => NotificationsModel()),
        FutureProvider(create: (BuildContext context) async {
          var wordsModel = Provider.of<WordsModel>(context, listen: false);
          var playersModel = Provider.of<PlayersModel>(context, listen: false);
          return await StorageModel.create(
              wordsModel: wordsModel, playersModel: playersModel);
        }),
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
