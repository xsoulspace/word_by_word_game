import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/StorageModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';

class ExtraMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordsModel = Provider.of<WordsModel>(context);
    var storageModel = Provider.of<StorageModel>(context);
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          ListTile(
              focusColor: Colors.white.withOpacity(0.4),
              hoverColor: Colors.white.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              leading: Icon(Icons.skip_next),
              enabled: wordsModel.isAtLeastOneWordRecorded &&
                  wordsModel.isPhraseFromLastwordNotEmpty &&
                  wordsModel.isPhraseLimitLeftAvailable,
              title:
                  // TODO: add translation
                  Text('Reset ending'),
              onTap: () async {
                wordsModel.resetPhraseFromLastword();
                await storageModel.saveWordsModel();
              }),
          ListTile(
              focusColor: Colors.white.withOpacity(0.4),
              hoverColor: Colors.white.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              leading: Icon(Icons.add_circle_outline),
              title:
                  // TODO: add translation
                  Text('End Game'),
              onTap: () {
                _showEndGameDialog(context);
              }),
        ],
      ),
    );
  }

  _showEndGameDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => EndGameDialog(),
    );
  }
}
