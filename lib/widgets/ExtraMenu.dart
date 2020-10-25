import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';

class ExtraMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScoreModel scoreModel = Provider.of<ScoreModel>(context);
    return Material(
      child: Column(
        children: [
          ListTile(
              leading: Icon(Icons.skip_next),
              enabled: scoreModel.isLettersReplaceAvailable &&
                  scoreModel.isCurrentLettersNotEmpty,
              title:
                  // TODO: add translation
                  Text('Reset ending'),
              onTap: () {
                scoreModel.resetLetters();
              }),
          ListTile(
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
