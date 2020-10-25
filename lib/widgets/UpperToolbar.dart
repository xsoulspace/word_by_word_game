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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // TODO: add international

              Text('words count'),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Consumer<ScoreModel>(
                builder: (context, value, child) =>
                    // TODO: add international
                    Text('current: ${value.counter}'),
              ),
              Consumer<ScoreModel>(
                builder: (context, value, child) =>
                    // TODO: add international
                    Text('highscore: ${value.highscore}'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
