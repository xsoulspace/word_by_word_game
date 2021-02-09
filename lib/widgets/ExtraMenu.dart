import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/localizations/main_localizations.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/shared_utils_models/storage_model.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';

class ExtraMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordsModel = Provider.of<WordsModel>(context);
    var playersModel = Provider.of<PlayersModel>(context);
    var isNextActionsEnabled = wordsModel.isAtLeastOneWordRecorded &&
        wordsModel.isPhraseFromLastwordNotEmpty &&
        wordsModel.isPhraseLimitLeftAvailable;
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          Visibility(
            visible: playersModel.isNotOnePlayerPlaying,
            child: ListTile(
                focusColor: Colors.white.withOpacity(0.4),
                hoverColor: Colors.white.withOpacity(0.2),
                leading: Icon(Icons.skip_next),
                enabled:
                    isNextActionsEnabled && playersModel.isPlayerHasHighscore,
                title: Text(MainLocalizations.of(context).nextPlayer),
                onTap: () => _nextPlayer(context: context)),
          ),
          ListTile(
              focusColor: Colors.white.withOpacity(0.4),
              hoverColor: Colors.white.withOpacity(0.2),
              leading: Icon(Icons.add_circle_outline),
              title: Text(MainLocalizations.of(context).finishGame),
              onTap: () => _showFinishGameDialog(context: context)),
        ],
      ),
    );
  }

  void _showFinishGameDialog({required BuildContext context}) {
    showDialog(
      context: context,
      builder: (context) => EndGameDialog(),
    );
  }

  Future<void> _nextPlayer({required BuildContext context}) async {
    var wordsModel = Provider.of<WordsModel>(context, listen: false);
    var playersModel = Provider.of<PlayersModel>(context, listen: false);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    wordsModel.reduceLimitLettersLeft();
    playersModel.addPenaltyToCurrentPlayer();
    playersModel.nextPlayer();
    await storageModel.savePlayersModel();
    await storageModel.saveWordsModel();
  }
  // Future<void> _resetWords({required BuildContext context}) async {
  //   var wordsModel = Provider.of<WordsModel>(context, listen: false);
  //   var storageModel = Provider.of<StorageModel>(context, listen: false);
  // wordsModel.resetPhraseFromLastword();
  // await storageModel.saveWordsModel();
  // }
}
