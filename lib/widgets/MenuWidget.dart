import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/NamedLocale.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/LocaleModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';
import 'package:word_by_word_game/widgets/PlayerChooser.dart';

class MenuWidget extends StatelessWidget {
  Widget _newGameButton(BuildContext context) {
    return FlatButton(
      onPressed: () => showEndGameDialog(context: context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add),
          SizedBox(
            width: 10,
          ),
          Text(
            MainLocalizations.of(context).newGame,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          ),
        ],
      ),
      height: 50,
      minWidth: 200,
    );
  }

  Widget _languageToogle() {
    return Consumer<LocaleModel>(builder: (context, localeModel, child) {
      return DropdownButton<NamedLocale>(
          value: localeModel.currentNamedLocale,
          items: LocaleModelConsts.namedLocales
              .map<DropdownMenuItem<NamedLocale>>((namedLocale) {
            return DropdownMenuItem<NamedLocale>(
              key: Key(namedLocale.name),
              value: namedLocale,
              child: Text(
                namedLocale.name,
              ),
            );
          }).toList(),
          onChanged: (NamedLocale namedLocale) async {
            await localeModel.switchLang(namedLocale.locale);
          });
    });
  }

  Widget _mainWidget({@required BuildContext context}) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(24), bottom: Radius.zero),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 400) {
                return Row(
                  children: [
                    _newGameButton(context),
                    SizedBox(
                      width: 35,
                    ),
                    _languageToogle()
                  ],
                );
              } else {
                return Container(
                    height: size.height * 0.18,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _newGameButton(context),
                        SizedBox(
                          height: 7,
                        ),
                        _languageToogle(),
                      ],
                    ));
              }
            },
          ),
          PlayerChooser(),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.black,
            indent: 5,
            endIndent: 5,
            thickness: 1.0,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(MainLocalizations.of(context).sendFeedback),
              SizedBox(height: 10),
              Text(MainLocalizations.of(context).thankYou),
              SizedBox(height: 10),
              Text(MainLocalizations.of(context).copyright),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _mainWidget(context: context);
  }
}

void showEndGameDialog({@required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) => EndGameDialog(),
  );
}
