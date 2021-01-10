import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/entities/Player.dart';

class PlayerWidget extends StatelessWidget {
  final Player player;
  final bool isDisabled;
  final bool isEnabled;
  final Function() onTap;
  final double fontSize;
  PlayerWidget(
      {@required this.player,
      this.isDisabled = false,
      this.isEnabled = true,
      this.onTap,
      this.fontSize});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 1,
      hoverElevation: 6,
      backgroundColor: isEnabled ? player.playerColor.color : Colors.grey,
      onPressed: isDisabled ? null : onTap,
      child: Text(
        '${player.id}',
        style: TextStyle(
            fontSize: fontSize,
            color: Theme.of(context).primaryTextTheme.subtitle1.color),
      ),
    );
  }
}

class PlayerHighscoreWidget extends StatelessWidget {
  final Player player;
  final double fontSize;
  PlayerHighscoreWidget({@required this.player, this.fontSize});
  @override
  Widget build(BuildContext context) {
    var subtitleColor = Theme.of(context).primaryTextTheme.subtitle1.color;
    return Material(
        type: MaterialType.transparency,
        child: Container(
          decoration: BoxDecoration(
              // border: Border.all(color: subtitleColor, width: 0.4),
              color: player.playerColor.color,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4)),
          child: Row(children: [
            Text(
              '92${player.highscore}',
              style: TextStyle(fontSize: fontSize, color: subtitleColor),
            ),
          ]),
        ));
  }
}
