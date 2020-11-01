import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/entities/Player.dart';

class PlayerWidget extends StatelessWidget {
  final Player player;
  final bool isDisabled;
  final bool isEnabled;
  final Function() onTap;
  PlayerWidget(
      {@required this.player,
      this.isDisabled = false,
      this.isEnabled = true,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisabled ? null : onTap,
      child: (CircleAvatar(
        backgroundColor: isEnabled ? player.playerColor.color : Colors.grey,
        child: Text(
          '${player.id}',
          style:
              TextStyle(color: Theme.of(context).primaryTextTheme.button.color),
        ),
      )),
    );
  }
}
