import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/abstract/FirstPlayer.dart';
import 'package:word_by_word_game/abstract/Player.dart';
import 'package:word_by_word_game/constants/Locales.dart';
import 'package:word_by_word_game/models/LocalDictionaryModel.dart';
import 'package:word_by_word_game/models/MenuItemsModel.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayerColorsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/screens/InputScreen.dart';
import 'package:word_by_word_game/shared_utils_models/locale_model.dart';
import 'package:word_by_word_game/shared_utils_models/storage_model.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: LocaleModel.loadSavedLocale(),
        builder: (BuildContext context, AsyncSnapshot<Locale> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return providerLoader(context);
          } else {
            return Container(
                decoration: appGradientBoxDecoration(
                    playerColor: playerColors.first,
                    secondColor: Theme.of(context).primaryColor),
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }

  providerLoader(BuildContext context) {
    return FutureBuilder<LocaleModel>(
        future: LocaleModel.create(),
        builder: (BuildContext context, AsyncSnapshot<LocaleModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MultiProvider(providers: [
              ChangeNotifierProvider(create: (context) => snapshot.data),
              ChangeNotifierProvider(
                  create: (context) => LocalDictionaryModel()),
              ChangeNotifierProvider(
                  create: (context) => PlayersModel(
                      {firstPlayer.id: firstPlayer},
                      currentPlayer: firstPlayer,
                      tempPlayers: playerColors
                          .map((color) =>
                              Player(id: color.id, playerColor: color))
                          .toList())),
              ChangeNotifierProvider(create: (context) {
                var localDictionaryModel =
                    Provider.of<LocalDictionaryModel>(context, listen: false);
                return WordsModel({}, {},
                    localDictionaryModel: localDictionaryModel);
              }),
              ChangeNotifierProvider(create: (context) => PlayerColorsModel()),
              ChangeNotifierProvider(create: (context) => MenuItemsModel()),
              ChangeNotifierProvider(create: (context) => ScoreModel()),
              ChangeNotifierProvider(create: (context) => NotificationsModel()),
              FutureProvider(
                create: (BuildContext context) async {
                  var wordsModel =
                      Provider.of<WordsModel>(context, listen: false);
                  var playersModel =
                      Provider.of<PlayersModel>(context, listen: false);
                  var localDictionaryModel =
                      Provider.of<LocalDictionaryModel>(context, listen: false);
                  return await StorageModel.create(
                      wordsModel: wordsModel,
                      playersModel: playersModel,
                      localDictionaryModel: localDictionaryModel);
                },
                initialData: null,
              ),
            ], child: ScaffoldApp());
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}

class ScaffoldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localeModel = Provider.of<LocaleModel>(context);
    var _localeOverrideDelegate = localeModel.localeOverrideDelegate;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localeListResolutionCallback: (locales, supportedLocales) {
          Locale locale = _localeOverrideDelegate.overridenLocale;
          bool isFoundLocale = _localeOverrideDelegate.isSupported(locale);
          if (!isFoundLocale) {
            return Locales.ru;
          }

          return locale;
        },
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          _localeOverrideDelegate
        ],
        supportedLocales: [
          Locales.en,
          Locales.ru,
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: InputScreen());
  }
}
