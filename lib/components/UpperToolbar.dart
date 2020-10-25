import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/ScoreModel.dart';

class UpperToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              // TODO: add international
              Text('Words count'),
              Consumer<ScoreModel>(
                builder: (context, value, child) =>
                    Text('current: ${value.counter}'),
              ),
              Consumer<ScoreModel>(
                builder: (context, value, child) =>
                    Text('highscore: ${value.highscore}'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
