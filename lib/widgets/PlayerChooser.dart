import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/FirstPlayer.dart';
import 'package:word_by_word_game/models/PlayerColorsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/StorageModel.dart';
import 'package:word_by_word_game/widgets/PlayerWidget.dart';

class PlayerChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var playersModel = Provider.of<PlayersModel>(context);
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            // TODO: add translation
            child: Text('Players: '),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ...playersModel.isOnePlayerPlaying
                  ? [PlayerWidget(isDisabled: true, player: firstPlayer)]
                  : playersModel.playersList.map((player) =>
                      PlayerWidget(player: player, isDisabled: false)),
              _addNewPlayer(context)
            ],
          ),
        ],
      ),
    );
  }

  // Container(
  //     padding: EdgeInsets.all(20.0),
  //     decoration: BoxDecoration(
  //       shape: BoxShape.circle,
  //       color: Colors.green,
  //     ))
  Widget _addNewPlayer(BuildContext context) {
    var playersModel = Provider.of<PlayersModel>(context, listen: false);
    var playerColorsModel =
        Provider.of<PlayerColorsModel>(context, listen: false);
    var storageModel = Provider.of<StorageModel>(context, listen: false);

    return IconButton(
      icon: Icon(Icons.add),
      // TODO: add new player
      onPressed: () async {
        var playerColor = playerColorsModel.getRandomColor();
        playersModel.addPlayerByColor(playerColor: playerColor);
        await storageModel.savePlayersModel();
      },
    );
  }
}
