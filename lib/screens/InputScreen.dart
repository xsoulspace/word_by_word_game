import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/widgets/InputWidget.dart';
import 'package:word_by_word_game/widgets/UpperToolbar.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration:
          BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
      padding: EdgeInsets.all(30),
      child: Column(children: [
        UpperToolbar(),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: InputWidget(),
        )
      ]),
    ));
  }
}
