import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/widgets/UpperToolbar.dart';

class MenuFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        splashColor: Theme.of(context).primaryColor.withOpacity(0.6),
        elevation: 2,
        backgroundColor: Colors.white.withOpacity(0.9),
        hoverColor: Colors.white.withOpacity(0.7),
        focusColor: Colors.white.withOpacity(0.7),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 0.4),
            borderRadius: BorderRadius.all(Radius.circular(26.0))),
        child: Icon(Icons.menu,
            color: Theme.of(context).textTheme.bodyText1.color),
        onPressed: () => openBottomMenu(context));
  }
}
