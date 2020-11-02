import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/constants/Locales.dart';
import 'package:word_by_word_game/entities/FirstPlayer.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
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
    return FutureBuilder(
        future: kIsWeb ? Future<String>(() => '') : findSystemLocale(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            String _locale = snapshot.data == '' ? Languages.en : snapshot.data;
            Intl.defaultLocale = _locale;

            MainLocalizationsDelegate _localeOverrideDelegate =
                MainLocalizationsDelegate(Locale(Intl.defaultLocale));

            return MaterialApp(
                debugShowCheckedModeBanner: false,
                localeListResolutionCallback: (locales, supportedLocales) {
                  Locale locale = _localeOverrideDelegate.overridenLocale;
                  bool isFoundLocale =
                      _localeOverrideDelegate.isSupported(locale);
                  if (!isFoundLocale) {
                    return Locales.en;
                  }
                  return locale;
                },
                localizationsDelegates: [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: [
                  Locales.en,
                  Locales.ru,
                ],
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                home: InputScreen());
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
