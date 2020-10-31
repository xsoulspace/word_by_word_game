import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/CircularSpinner.dart';
import 'package:word_by_word_game/widgets/MenuWidget.dart';

class UpperToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TODO: add translation
                  Text('words count'),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                  ),
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
                    // TODO: add translation
                    return Text('current: $highscore');
                  }),
                  Row(
                    children: [
                      // TODO: add translation
                      Text('highscore: '),

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
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Consumer<WordsModel>(
                  builder: (context, wordsModel, child) =>
                      // TODO: add translation
                      Text(
                          'common letters to remove: ${wordsModel.phraseLimitLettersLeft}'),
                ),
              ],
            ),
            Expanded(
                child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => _openBottomSheet(context),
                iconSize: 36,
                icon: Icon(Icons.menu),
              ),
            ))
          ],
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        enableDrag: true,
        context: context,
        builder: (BuildContext buildContext) {
          return FractionallySizedBox(heightFactor: 1, child: MenuWidget());
        });
  }
}
