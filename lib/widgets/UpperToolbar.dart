import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/CircularSpinner.dart';

class UpperToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      elevation: 3,
      shadowColor: Theme.of(context).shadowColor.withOpacity(0.2),
      child: Container(
        height: 72,
        width: size.width,
        color: Colors.white.withOpacity(0.4),
        padding: EdgeInsets.only(top: 35, bottom: 20, left: 20, right: 20),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
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
              var currentHighscoreText =
                  MainLocalizations.of(context).currentScore;
              return Text('$currentHighscoreText $highscore');
            }),
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
