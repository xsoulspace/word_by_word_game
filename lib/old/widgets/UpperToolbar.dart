import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/abstract/Player.dart';
import 'package:word_by_word_game/localizations/main_localizations.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/CircularSpinner.dart';
import 'package:word_by_word_game/widgets/PlayerWidget.dart';

class UpperToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _playerWidget({required Player player}) {
      return Container(
          height: 30.0,
          width: 30.0,
          child: FittedBox(
              child: PlayerWidget(
            player: player,
            isDisabled: true,
            fontSize: 24,
          )));
    }

    var playersModel = Provider.of<PlayersModel>(context);
    var size = MediaQuery.of(context).size;
    var currentPlayer = playersModel.currentPlayer;
    var playerColor = currentPlayer.playerColor.color;

    return Material(
      color: Colors.transparent,
      elevation: 3,
      shadowColor: Theme.of(context).shadowColor.withOpacity(0.2),
      child: Container(
        height: 105,
        width: size.width,
        color: Theme.of(context).canvasColor.withOpacity(0.4),
        padding: EdgeInsets.only(top: 35, bottom: 20, left: 20, right: 20),
        child: Row(children: [
          SizedBox(
            width: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(MainLocalizations.of(context).highscore),
                    Expanded(
                      child: Divider(
                        endIndent: 10,
                        indent: 10,
                        color: Theme.of(context).primaryColor.withOpacity(0.6),
                        thickness: 0.4,
                        height: 0.4,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Text(MainLocalizations.of(context).player),
                    SizedBox(
                      width: 10,
                    ),
                    _playerWidget(player: currentPlayer),
                    Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        color: playerColor.withOpacity(0.8),
                        thickness: 0.4,
                        height: 0.4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Consumer<ScoreModel>(
                builder: (context, value, child) => FutureBuilder(
                    future: value.highscore,
                    builder:
                        (BuildContext context, AsyncSnapshot<int> snapshot) {
                      var widget = (() {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularSpinner();
                        } else {
                          return Text(
                            '${snapshot.data}',
                            textAlign: TextAlign.start,
                          );
                        }
                      })();
                      return SizedBox(
                        width:
                            snapshot.connectionState == ConnectionState.waiting
                                ? 15
                                : null,
                        height: 15,
                        child: widget,
                      );
                    }),
              ),
              Consumer3<WordsModel, PlayersModel, ScoreModel>(builder:
                  (context, wordsModel, playersModel, scoreModel, child) {
                var wordsList = wordsModel.getWordsListByPlayer(
                    player: playersModel.currentPlayer);
                var highscore = scoreModel.calculateHighscore(
                    player: playersModel.currentPlayer, words: wordsList);

                scoreModel.highscore.then((currentHighscore) {
                  if (highscore > currentHighscore) {
                    scoreModel.saveHighscore(highscore);
                  }
                });
                currentPlayer.highscore = highscore;
                return Text(
                  highscore.toString(),
                  textAlign: TextAlign.start,
                );
              })
            ],
          )
        ]),
      ),
    );
  }
}
