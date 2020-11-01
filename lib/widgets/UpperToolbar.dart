import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/CircularSpinner.dart';
import 'package:word_by_word_game/widgets/MenuWidget.dart';

void openBottomMenu(BuildContext context) {
  showModalBottomSheet(
      enableDrag: true,
      context: context,
      builder: (BuildContext buildContext) {
        return FractionallySizedBox(heightFactor: 1, child: MenuWidget());
      });
}

class UpperToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(children: [
          Wrap(
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
                // TODO: add translation
                return Text('current score: $highscore');
              }),
              SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 90,
                child: Row(
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
              ),
              SizedBox(
                width: 10,
              ),
              Consumer<WordsModel>(
                builder: (context, wordsModel, child) =>
                    // TODO: add translation
                    Text(
                        'letters to remove: ${wordsModel.phraseLimitLettersLeft}'),
              ),
              // Expanded(
              //     child: Align(
              //   alignment: Alignment.topRight,
              //   child: IconButton(
              //     onPressed: () => openBottomMenu(context),
              //     iconSize: 36,
              //     icon: Icon(Icons.menu),
              //   ),
              // ))
            ],
          ),
        ]),
      ),
    );
  }
}
