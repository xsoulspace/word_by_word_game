import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/FirstPlayer.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/widgets/PlayerWidget.dart';

class PlayerChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var playersModel = Provider.of<PlayersModel>(context);
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          // TODO: add translation
          child: Text('Players: '),
        ),
        Row(
          children: [
            PlayerWidget(isDisabled: true, player: firstPlayer),
            ...playersModel.playersList.map(
                (player) => PlayerWidget(player: player, isDisabled: false)),
            _addNewPlayer()
          ],
        ),
      ],
    );
  }

  // Container(
  //     padding: EdgeInsets.all(20.0),
  //     decoration: BoxDecoration(
  //       shape: BoxShape.circle,
  //       color: Colors.green,
  //     ))
  Widget _addNewPlayer() {
    return IconButton(
      icon: Icon(Icons.add),
      // TODO: add new player
      onPressed: () => {},
    );
  }
}
