import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/NamedLocale.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/LocaleModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';
import 'package:word_by_word_game/widgets/PlayerChooser.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FlatButton(
                onPressed: () => showEndGameDialog(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.add_circle_outline),
                    SizedBox(
                      width: 10,
                    ),
                    Text(MainLocalizations.of(context).newGame),
                  ],
                ),
                height: 50,
                minWidth: 200,
              ),
              SizedBox(
                width: 35,
              ),
              Consumer<LocaleModel>(builder: (context, localeModel, child) {
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
              })
            ],
          ),
          PlayerChooser(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(MainLocalizations.of(context).sendFeedback),
              SizedBox(height: 0.01 * size.height),
              Text(MainLocalizations.of(context).thankYou),
              SizedBox(height: 0.01 * size.height),
              Text(MainLocalizations.of(context).copyright),
            ],
          ),
        ],
      ),
    );
  }

  showEndGameDialog(BuildContext context) {
    bool isCanPop = Navigator.canPop(context);
    if (isCanPop) Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => EndGameDialog(),
    );
  }
}
