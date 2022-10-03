import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/abstract/Player.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/shared_utils_models/storage_model.dart';
import 'package:word_by_word_game/widgets/PlayerWidget.dart';

class PlayerChooser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var playersModel = Provider.of<PlayersModel>(context);
    return Container(
      height: 80,
      child: Column(children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  ...playersModel.tempPlayers.map((player) =>
                      _playerController(context: context, player: player))
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }

  // Container(
  //     padding: EdgeInsets.all(20.0),
  //     decoration: BoxDecoration(
  //       shape: BoxShape.circle,
  //       color: Colors.green,
  //     ))
  Widget _playerController(
      {required BuildContext context, required Player player}) {
    var playersModel = Provider.of<PlayersModel>(context, listen: false);
    var storageModel = Provider.of<StorageModel>(context, listen: false);
    bool isExists = playersModel.hasPLayer(player: player);
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: PlayerWidget(
        fontSize: 15,
        player: player,
        isEnabled: isExists,
        onTap: () async {
          if (isExists) {
            // remove player and all players after
            playersModel.removePlayersAfterPlayer(player: player);
          } else {
            // add players before
            var playersToAdd = playersModel.tempPlayers.where((tempPlayer) =>
                tempPlayer.id <= player.id &&
                !playersModel.hasPLayer(player: tempPlayer));
            playersToAdd.forEach((tempPlayer) {
              playersModel.addPlayerByColor(
                  playerColor: tempPlayer.playerColor);
            });
          }
          await storageModel.savePlayersModel();
        },
      ),
    );
  }
}
