import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/entities/Player.dart';

class PlayerWidget extends StatelessWidget {
  final Player player;
  final bool isDisabled;
  PlayerWidget({@required this.player, this.isDisabled});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // remove player
      // TODO: add new player
      onTap: isDisabled ? null : () => {},
      child: (CircleAvatar(
        backgroundColor: player.playerColor.color,
        child: Text('${player.id}'),
      )),
    );
  }
}
