import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/localizations/MainLocalizations.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';
import 'package:word_by_word_game/widgets/PlayerChooser.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text(MainLocalizations.of(context).newGame),
              onTap: () => showEndGameDialog(context)),
          PlayerChooser(),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(MainLocalizations.of(context).sendFeedback),
              SizedBox(height: 0.01 * size.height),
              Text(MainLocalizations.of(context).thankYou),
              SizedBox(height: 0.01 * size.height),
              Text(MainLocalizations.of(context).copyright),
            ],
          ),
        ],
      ),
    );
  }

  showEndGameDialog(BuildContext context) {
    bool isCanPop = Navigator.canPop(context);
    if (isCanPop) Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => EndGameDialog(),
    );
  }
}
