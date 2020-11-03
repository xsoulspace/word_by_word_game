import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/constants/AppConstraints.dart';
import 'package:word_by_word_game/entities/NamedLocale.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/LocaleModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';
import 'package:word_by_word_game/widgets/PlayerChooser.dart';

class MenuWidget extends StatelessWidget {
  Widget _newGameButton(BuildContext context) {
    return FlatButton(
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

  Widget _mainWidget({@required BuildContext context, @required bool extend}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
            top: extend ? Radius.zero : Radius.circular(24),
            bottom: Radius.zero),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: extend ? 0 : 5),
      padding: EdgeInsets.only(
          top: extend ? 10 : 20,
          bottom: 20,
          right: extend ? 4 : 20,
          left: extend ? 4 : 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > AppConstraints.mobileWidth) {
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
                    height: 100,
                    child: Column(
                      children: [
                        _newGameButton(context),
                        SizedBox(
                          height: 10,
                        ),
                        _languageToogle()
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
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight > 350) {
        return _mainWidget(context: context, extend: false);
      } else {
        return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: _mainWidget(
              extend: true,
              context: context,
            ));
      }
    });
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
