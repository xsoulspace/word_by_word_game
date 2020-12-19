import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/ExtraMenu.dart';
import 'package:word_by_word_game/widgets/InputWidget.dart';
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
    var isMobile = MediaQuery.of(context).size.width < 700;
    double leftBarWidth = 54;
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
                  child: Theme(
                      data: Theme.of(context)
                          .copyWith(canvasColor: Colors.transparent),
                      child: BottomFabBar()))
              : LeftFabBar(
                  width: leftBarWidth,
                ),
        ],
      ),
    );
  }
}

class FabItem {
  final IconData iconData;
  final String label;
  FabItem({@required this.iconData, @required this.label});
}

final items = [
  FabItem(iconData: Icons.info_outline, label: 'Info'),
  FabItem(iconData: Icons.translate, label: 'Language'),
  FabItem(
    iconData: Icons.add,
    label: 'New',
  ),
  FabItem(iconData: Icons.people, label: 'Players'),
];

class BottomFabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.grey[800],
      unselectedItemColor: Colors.grey[800],
      showUnselectedLabels: true,
      showSelectedLabels: true,
      items: <BottomNavigationBarItem>[
        ...items.map(
          (e) => BottomNavigationBarItem(
            icon: Icon(e.iconData),
            label: e.label,
          ),
        )
      ],
    );
  }
}

class LeftFabBar extends StatelessWidget {
  final double width;
  LeftFabBar({@required this.width});
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      color: Colors.transparent,
      child: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Column(children: [
            SizedBox(height: 10),
            Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, counter) {
                      return Divider(
                        height: counter == 0 ? 50 : 2,
                        color: Colors.transparent,
                      );
                    },
                    itemCount: items.length,
                    itemBuilder: (context, counter) {
                      var item = items[counter];
                      return InkWell(
                        onTap: () {},
                        splashColor: Colors.white.withOpacity(0.45),
                        focusColor: Colors.white.withOpacity(0.55),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 4.0, bottom: 2.0),
                                child: Icon(
                                  item.iconData,
                                  color: Colors.grey[800],
                                ),
                              ),
                              Text(
                                item.label,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey[800]),
                              ),
                            ],
                          ),
                        ),
                      );
                    }))
          ])),
    );
  }
}
