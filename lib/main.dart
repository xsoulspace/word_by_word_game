import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/screens/InputScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => ScoreModel()),
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
