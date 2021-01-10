import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/StorageModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';

class ExtraMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordsModel = Provider.of<WordsModel>(context);
    var playersModel = Provider.of<PlayersModel>(context);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    var isNextActionsEnabled = wordsModel.isAtLeastOneWordRecorded &&
        wordsModel.isPhraseFromLastwordNotEmpty &&
        wordsModel.isPhraseLimitLeftAvailable;
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          ListTile(
              focusColor: Colors.white.withOpacity(0.4),
              hoverColor: Colors.white.withOpacity(0.2),
              leading: Icon(Icons.cached),
              enabled: isNextActionsEnabled,
              title: Text(MainLocalizations.of(context).resetEnding),
              onTap: () async => await _resetWords(context: context)),
          Visibility(
            visible: playersModel.isNotOnePlayerPlaying,
            child: ListTile(
                focusColor: Colors.white.withOpacity(0.4),
                hoverColor: Colors.white.withOpacity(0.2),
                leading: Icon(Icons.skip_next),
                enabled: isNextActionsEnabled,
                title: Text(MainLocalizations.of(context).nextPlayer),
                onTap: () async {
                  await _resetWords(context: context);
                  playersModel.nextPlayer();
                  await storageModel.savePlayersModel();
                }),
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

  void _showFinishGameDialog({@required BuildContext context}) {
    showDialog(
      context: context,
      builder: (context) => EndGameDialog(),
    );
  }

  Future<void> _resetWords({@required BuildContext context}) async {
    var wordsModel = Provider.of<WordsModel>(context, listen: false);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    wordsModel.resetPhraseFromLastword();
    await storageModel.saveWordsModel();
  }
}
