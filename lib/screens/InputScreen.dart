import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/ExtraMenu.dart';
import 'package:word_by_word_game/widgets/InputWidget.dart';
import 'package:word_by_word_game/widgets/NotificationsWidget.dart';
import 'package:word_by_word_game/widgets/UpperToolbar.dart';

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordsModel = Provider.of<WordsModel>(context);
    var notificationsModel = Provider.of<NotificationsModel>(context);

    return Scaffold(
        body: Container(
      decoration:
          BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          UpperToolbar(),
          NotificationsWidget(
            gameNotification: notificationsModel.gameNotification,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
            child: InputWidget(),
          ),
          Visibility(
            visible: wordsModel.isAtLeastOneWordRecorded,
            maintainState: true,
            maintainAnimation: true,
            child: ExtraMenu(),
          ),
        ]),
      ),
    ));
  }
}
