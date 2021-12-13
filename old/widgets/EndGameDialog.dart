import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/abstract/Player.dart';
import 'package:word_by_word_game/localizations/main_localizations.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/shared_utils_models/storage_model.dart';
import 'package:word_by_word_game/widgets/CircularSpinner.dart';
import 'package:word_by_word_game/widgets/PlayerWidget.dart';

void showEndGameDialog({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) => EndGameDialog(),
  );
}

class EndGameDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scoreModel = Provider.of<ScoreModel>(context);
    var wordsModel = Provider.of<WordsModel>(context);
    var playersModel = Provider.of<PlayersModel>(context);
    var storageModel = Provider.of<StorageModel>(context);

    return CupertinoAlertDialog(
      title: Text(MainLocalizations.of(context).congratulations),
      content: Material(
        color: Colors.transparent,
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          _playersHighscores(context: context),
          SizedBox(
            height: 10,
          ),
          FutureBuilder(
              future: scoreModel.highscore,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return SizedBox(
                    width: 10,
                    child: CircularSpinner(),
                    height: 10,
                  );
                } else {
                  var maxHighscoreText =
                      MainLocalizations.of(context).maxHighscoreIs;
                  return Text('$maxHighscoreText ${snapshot.data}');
                }
              }),
        ]),
      ),
      actions: [
        Material(
          child: ListTile(
            title: Text(
              MainLocalizations.of(context).continueGame,
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        Material(
          child: ListTile(
            title: Text(
              MainLocalizations.of(context).startAgain,
              textAlign: TextAlign.center,
            ),
            onTap: () async {
              wordsModel.resetToNewGame();
              await storageModel.saveWordsModel();
              playersModel.setCurrentPlayer(
                  player: playersModel.playersList.first);
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }

  Widget _playersHighscores({required BuildContext context}) {
    var scoreModel = Provider.of<ScoreModel>(context);
    var wordsModel = Provider.of<WordsModel>(context);
    var playersModel = Provider.of<PlayersModel>(context);
    getPlayerHighscore({required Player player}) {
      var wordsList = wordsModel.getWordsListByPlayer(player: player);
      var highscore =
          scoreModel.calculateHighscore(player: player, words: wordsList);
      scoreModel.highscore.then((currentHighscore) {
        if (highscore > currentHighscore) {
          scoreModel.saveHighscore(highscore);
        }
      });
      return highscore;
    }

    if (playersModel.isOnePlayerPlaying) {
      var playerHighscore =
          getPlayerHighscore(player: playersModel.currentPlayer);
      var yourHighscoreText = MainLocalizations.of(context).yourHighscore;
      return Text('$yourHighscoreText $playerHighscore');
    } else {
      /// setting highscore
      var playersList = playersModel.playersList.map((player) {
        player.highscore = getPlayerHighscore(player: player);
        return player;
      }).toList();

      /// descending order
      playersList.sort(
          (playerA, playerB) => playerB.highscore.compareTo(playerA.highscore));
      return Column(children: [
        ...playersList.map((player) => Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  PlayerWidget(player: player),
                  SizedBox(
                    width: 10,
                  ),
                  Text(player.highscore.toString())
                ],
              ),
            ))
      ]);
    }
  }
}
