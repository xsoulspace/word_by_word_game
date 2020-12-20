import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';
import 'package:word_by_word_game/models/MenuItemsModel.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';
import 'package:word_by_word_game/widgets/ExtraMenu.dart';
import 'package:word_by_word_game/widgets/InfoWidget.dart';
import 'package:word_by_word_game/widgets/InputWidget.dart';
import 'package:word_by_word_game/widgets/LanguageToggle.dart';
import 'package:word_by_word_game/widgets/LeftBar.dart';
import 'package:word_by_word_game/widgets/NotificationsWidget.dart';
import 'package:word_by_word_game/widgets/PlayerChooser.dart';
import 'package:word_by_word_game/widgets/UpperToolbar.dart';

final double leftBarWidth = 54;

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
                  child: BottonBar(
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

class MenuItemWidget extends StatelessWidget {
  final MenuItem menuItem;
  final Function onTap;
  final bool isSelected;
  final List<Widget> children;
  final Duration duration;
  MenuItemWidget(
      {@required this.menuItem,
      this.onTap,
      @required this.isSelected,
      this.children,
      @required this.duration});
  Widget iconWidget({@required selectedColor}) {
    return Padding(
      padding: EdgeInsets.only(top: 4.0, bottom: 2.0),
      child: Icon(
        menuItem.iconData,
        color: isSelected ? selectedColor : Colors.grey[800],
      ),
    );
  }

  Widget textWidget({@required selectedColor}) {
    return Text(
      menuItem.label,
      style: TextStyle(
          fontSize: 10, color: isSelected ? selectedColor : Colors.grey[800]),
    );
  }

  @override
  Widget build(BuildContext context) {
    var playersModel = Provider.of<PlayersModel>(context);
    var selectedColor =
        playersModel.currentPlayer.playerColor.color.withOpacity(0.6);
    var isChildrenVisible = this.children != null && isSelected;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        hoverColor: selectedColor.withOpacity(0.1),
        onTap: onTap,
        splashColor: selectedColor.withOpacity(0.45),
        focusColor: selectedColor.withOpacity(0.55),
        child: AnimatedContainer(
          color:
              isSelected ? selectedColor.withOpacity(0.05) : Colors.transparent,
          duration: duration,
          padding: EdgeInsets.only(
              top: isChildrenVisible ? 10 : 6.0,
              left: 4,
              right: 4,
              bottom: isChildrenVisible ? 40 : 4),
          child: Column(children: [
            iconWidget(selectedColor: selectedColor),
            textWidget(selectedColor: selectedColor),
            if (isChildrenVisible)
              Divider(
                color: Colors.grey[400],
                thickness: 0.5,
                height: 30,
              ),
            if (isChildrenVisible)
              ...children.map((child) => AnimatedOpacity(
                  duration: duration,
                  opacity: isSelected ? 1 : 0,
                  child: child))
          ]),
        ),
      ),
    );
  }
}

class BottonBar extends StatefulWidget {
  final double minHeight;
  BottonBar({@required this.minHeight});
  @override
  _BottonBarState createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  bool isClosed = true;

  final double heightExpanded = 200;
  double get currentHeight {
    return isClosed ? widget.minHeight : heightExpanded;
  }

  closeBar() {
    setState(() {
      isClosed = true;
      selectedItemIndex = -1;
    });
  }

  int selectedItemIndex = -1;
  final duration = Duration(milliseconds: 150);
  @override
  Widget build(BuildContext context) {
    var menuItemsModel = Provider.of<MenuItemsModel>(context);
    var menuItems = menuItemsModel.menuItems;
    var playersModel = Provider.of<PlayersModel>(context);
    var selectedColor =
        playersModel.currentPlayer.playerColor.color.withOpacity(0.6);

    return Material(
        elevation: 4,
        color: Colors.transparent,
        child: AnimatedContainer(
            duration: duration,
            height: currentHeight,
            color: isClosed
                ? Colors.white.withOpacity(0.4)
                : Colors.white.withOpacity(0.95),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ...menuItems.map((menuItem) {
                              var isSelected = menuItem.id == selectedItemIndex;
                              return SizedBox(
                                width: widget.minHeight,
                                child: MenuItemWidget(
                                    duration: duration,
                                    menuItem: menuItem,
                                    onTap: () {
                                      switch (menuItem.code) {
                                        case MenuItemsEnum.New:
                                          closeBar();
                                          showEndGameDialog(context: context);
                                          break;
                                        default:
                                          setState(() {
                                            selectedItemIndex = menuItem.id;
                                            isClosed = false;
                                          });
                                          break;
                                      }
                                    },
                                    isSelected: isSelected),
                              );
                            }),
                            AnimatedSwitcher(
                                duration: duration,
                                child: !isClosed
                                    ? Material(
                                        child: InkWell(
                                          splashColor:
                                              selectedColor.withOpacity(0.4),
                                          focusColor:
                                              selectedColor.withOpacity(0.2),
                                          hoverColor:
                                              selectedColor.withOpacity(0.1),
                                          onTap: () {
                                            closeBar();
                                          },
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.arrow_drop_down,
                                              size: widget.minHeight,
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container())
                          ]),
                    ),
                  ),
                  Expanded(
                    child: AnimatedOpacity(
                        duration: duration,
                        opacity: isClosed ? 0 : 1,
                        child: (() {
                          var selectedMenuItems = menuItems
                              .where((item) => item.id == selectedItemIndex)
                              .toList();
                          if (selectedMenuItems.length == 0) return Container();
                          var selectedMenuItem = selectedMenuItems.first;
                          switch (selectedMenuItem.code) {
                            case MenuItemsEnum.Info:
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: InfoWidget(),
                              );
                            case MenuItemsEnum.Players:
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: PlayerChooser(),
                              );
                            case MenuItemsEnum.Language:
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: LanguageToggle(),
                              );
                            default:
                              return Container();
                          }
                        })()),
                  )
                ])));
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
                              children: [Expanded(child: LanguageToggle())])
                        ]),
                      ),
                    )
                  ]),
            ));
      }));
}
