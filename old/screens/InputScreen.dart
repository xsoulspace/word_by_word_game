import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/abstract/PlayerColor.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/shared_widgets/locale_switcher.dart';
import 'package:word_by_word_game/widgets/BottomBar.dart';
import 'package:word_by_word_game/widgets/ExtraMenu.dart';
import 'package:word_by_word_game/widgets/InputWidget.dart';
import 'package:word_by_word_game/widgets/LeftBar.dart';
import 'package:word_by_word_game/widgets/NotificationsWidget.dart';
import 'package:word_by_word_game/widgets/UpperToolbar.dart';

final double leftBarWidth = 54;

BoxDecoration appGradientBoxDecoration(
        {required PlayerColor playerColor, required Color secondColor}) =>
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
    var isMobile = MediaQuery.of(context).size.width <= 500;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            decoration: appGradientBoxDecoration(
                playerColor: playersModel.currentPlayer.playerColor,
                secondColor: Theme.of(context).primaryColor),
            child: Padding(
              padding: EdgeInsets.only(left: isMobile ? 0 : leftBarWidth),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  UpperToolbar(),
                  NotificationsWidget(
                    gameNotification: notificationsModel.gameNotification,
                  ),
                  Container(
                    color: Colors.white.withOpacity(0.85),
                    padding: EdgeInsets.symmetric(
                        vertical: 30, horizontal: isMobile ? 5 : 20),
                    child: InputWidget(),
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
            ),
          ),
          isMobile
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomBar(
                    minHeight: 60,
                  ))
              : LeftBar(
                  minWidth: leftBarWidth,
                ),
        ],
      ),
    );
  }
}

openLanguagePopup(BuildContext context) {
  Navigator.of(context).push(PageRouteBuilder(
      opaque: false,
      barrierDismissible: true,
      pageBuilder: (BuildContext context, animation, secondaryAnimation) {
        return Material(
            color: Colors.transparent,
            child: Container(
              color: Colors.black.withOpacity(0.40),
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedPositioned(
                      left: animation.value * leftBarWidth,
                      duration: Duration(milliseconds: 200),
                      child: Container(
                        width: 200,
                        height: 110,
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        margin: EdgeInsets.only(left: leftBarWidth),
                        padding: EdgeInsets.all(4),
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_left),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Text('Language')
                              ]),
                          Divider(
                            color: Colors.grey[800],
                            thickness: 0.5,
                            height: 5,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [Expanded(child: LocaleSwitcher())])
                        ]),
                      ),
                    )
                  ]),
            ));
      }));
}
