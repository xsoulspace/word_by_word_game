import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';
import 'package:word_by_word_game/widgets/CircularSpinner.dart';

class EndGameDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScoreModel scoreModel = Provider.of<ScoreModel>(context);
    return CupertinoAlertDialog(
      title: Text('Congratulations!'),
      content: Column(children: [
        Text('This time your score is ${scoreModel.counter}'),
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
                return Text('Your highscore is ${snapshot.data}');
              }
            }),
      ]),
      actions: [
        Material(
          child: ListTile(
            title: Text('Continue'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        Material(
          child: ListTile(
            title: Text('Start again.'),
            onTap: () {
              scoreModel.resetParams();
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
