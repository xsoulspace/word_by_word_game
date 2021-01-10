import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/Player.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/CircularSpinner.dart';
import 'package:word_by_word_game/widgets/PlayerWidget.dart';

class UpperToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _playerWidget({@required Player player}) {
      return Container(
          height: 40.0,
          width: 40.0,
          child: FittedBox(
              child: PlayerWidget(
            player: player,
            isDisabled: true,
            fontSize: 24,
          )));
    }

    Widget _playerHighscoreWidget({@required Player player}) {
      return Container(
          height: 24.0,
          width: 24.0,
          child: FittedBox(
              child: PlayerHighscoreWidget(
            player: player,
            fontSize: 24,
          )));
    }

    var playersModel = Provider.of<PlayersModel>(context);
    var size = MediaQuery.of(context).size;
    var currentPlayer = playersModel.currentPlayer;
    return Material(
      color: Colors.transparent,
      elevation: 3,
      shadowColor: Theme.of(context).shadowColor.withOpacity(0.2),
      child: Container(
        height: 120,
        width: size.width,
        color: Colors.white.withOpacity(0.4),
        padding: EdgeInsets.only(top: 35, bottom: 20, left: 20, right: 20),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(MainLocalizations.of(context).player),
                    SizedBox(
                      height: 5,
                    ),
                    _playerWidget(player: currentPlayer)
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(MainLocalizations.of(context).currentScore),
                    Consumer3<WordsModel, PlayersModel, ScoreModel>(builder:
                        (context, wordsModel, playersModel, scoreModel, child) {
                      var wordsList = wordsModel.getWordsListByPlayer(
                          player: playersModel.currentPlayer);
                      var highscore = scoreModel.calculateHighscore(wordsList);
                      scoreModel.highscore.then((currentHighscore) {
                        if (highscore > currentHighscore) {
                          scoreModel.saveHighscore(highscore);
                        }
                      });
                      currentPlayer.highscore = highscore;
                      return _playerHighscoreWidget(player: currentPlayer);
                    }),
                  ],
                )
              ],
            ),
            SizedBox(
              width: 12,
            ),
            SizedBox(
              width: 90,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(MainLocalizations.of(context).highscore),
                  Consumer<ScoreModel>(
                    builder: (context, value, child) => FutureBuilder(
                        future: value.highscore,
                        builder: (BuildContext context,
                            AsyncSnapshot<int> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return SizedBox(
                              width: 8,
                              child: CircularSpinner(),
                              height: 8,
                            );
                          } else {
                            return Text('${snapshot.data}');
                          }
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Consumer<WordsModel>(builder: (context, wordsModel, child) {
              var lettersToRemoveText =
                  MainLocalizations.of(context).lettersToRemove;
              return Text(
                  '$lettersToRemoveText ${wordsModel.phraseLimitLettersLeft}');
            }),
          ],
        ),
      ),
    );
  }
}
