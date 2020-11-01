import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/widgets/UpperToolbar.dart';

class MenuFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Theme.of(context).dialogBackgroundColor,
        child: Icon(Icons.menu,
            color: Theme.of(context).textTheme.bodyText1.color),
        onPressed: () => openBottomMenu(context));
  }
}
