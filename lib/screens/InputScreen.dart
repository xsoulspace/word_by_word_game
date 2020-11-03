import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/ExtraMenu.dart';
import 'package:word_by_word_game/widgets/InputWidget.dart';
import 'package:word_by_word_game/widgets/MenuFAB.dart';
import 'package:word_by_word_game/widgets/NotificationsWidget.dart';
import 'package:word_by_word_game/widgets/UpperToolbar.dart';

BoxDecoration appGradientBoxDecoration(
        {@required PlayerColor playerColor, MaterialColor secondColor}) =>
    BoxDecoration(
        gradient: LinearGradient(
            stops: [
              0.1,
              1,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              playerColor.color.withOpacity(0.4),
              secondColor.withOpacity(0.4)
            ]));

class InputScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wordsModel = Provider.of<WordsModel>(context);
    var notificationsModel = Provider.of<NotificationsModel>(context);
    var playersModel = Provider.of<PlayersModel>(context);

    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: constraints.maxHeight,
          decoration: appGradientBoxDecoration(
              playerColor: playersModel.currentPlayer.playerColor,
              secondColor: Theme.of(context).primaryColor),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              UpperToolbar(),
              NotificationsWidget(
                gameNotification: notificationsModel.gameNotification,
              ),
              Container(
                color: Colors.white.withOpacity(0.85),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 5),
                  child: InputWidget(),
                ),
              ),
              Container(
                color: Colors.white.withOpacity(0.85),
                child: Visibility(
                  visible: wordsModel.isAtLeastOneWordRecorded,
                  maintainState: true,
                  maintainAnimation: true,
                  child: ExtraMenu(),
                ),
              ),
            ]),
          ),
        );
      }),
      floatingActionButton: MenuFAB(),
    );
  }
}
