import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/entities/PlayerColor.dart';
import 'package:word_by_word_game/models/MenuItemsModel.dart';
import 'package:word_by_word_game/models/NotificationsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/WordsModel.dart';
import 'package:word_by_word_game/widgets/ExtraMenu.dart';
import 'package:word_by_word_game/widgets/InputWidget.dart';
import 'package:word_by_word_game/widgets/MenuWidget.dart';
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
                  child: Theme(
                      data: Theme.of(context)
                          .copyWith(canvasColor: Colors.transparent),
                      child: BottomFabBar()))
              : LeftBar(
                  minWidth: leftBarWidth,
                ),
        ],
      ),
    );
  }
}

class LeftBar extends StatefulWidget {
  final double minWidth;
  LeftBar({@required this.minWidth});
  @override
  _LeftBarState createState() => _LeftBarState();
}

class _LeftBarState extends State<LeftBar> {
  bool isClosed = true;

  final double widthExpanded = 300;
  double get currentWidth {
    return isClosed ? widget.minWidth : widthExpanded;
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
    return GestureDetector(
      onHorizontalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
        if (dragUpdateDetails.delta.dx < -10) {
          if (!isClosed) closeBar();
        }
        if (dragUpdateDetails.delta.dx > 10) {
          if (isClosed) {
            setState(() {
              isClosed = false;
              selectedItemIndex = 0;
            });
          }
        }
      },
      child: Material(
        elevation: 4,
        color: Colors.transparent,
        child: AnimatedContainer(
            width: currentWidth,
            curve: Curves.easeOut,
            duration: duration,
            color: isClosed ? Colors.white.withOpacity(0.4) : Colors.white,
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
                      itemCount: menuItems.length,
                      itemBuilder: (context, counter) {
                        var menuItem = menuItems[counter];
                        var isSelected = counter == selectedItemIndex;
                        return MenuItemWidget(
                            duration: duration,
                            menuItem: menuItem,
                            onTap: () {
                              switch (menuItem.code) {
                                case MenuItemsEnum.New:
                                  showEndGameDialog(context: context);
                                  break;
                                default:
                                  setState(() {
                                    selectedItemIndex = counter;
                                    isClosed = false;
                                  });
                              }
                            },
                            children: (() {
                              switch (menuItem.code) {
                                case MenuItemsEnum.Info:
                                  return [InfoWidget()];
                                case MenuItemsEnum.Players:
                                  return [PlayerChooser()];
                                case MenuItemsEnum.Language:
                                  return [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(child: LanguageToogle())
                                        ])
                                  ];
                                default:
                              }
                            })(),
                            isSelected: isSelected);
                      })),
              AnimatedOpacity(
                duration: duration,
                opacity: isClosed ? 0 : 1,
                child: Material(
                  child: InkWell(
                    splashColor: selectedColor.withOpacity(0.4),
                    focusColor: selectedColor.withOpacity(0.2),
                    hoverColor: selectedColor.withOpacity(0.1),
                    onTap: () {
                      closeBar();
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_left,
                        size: 50.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ),
              )
            ])),
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

class BottomFabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.grey[800],
      unselectedItemColor: Colors.grey[800],
      showUnselectedLabels: true,
      showSelectedLabels: true,
      items: <BottomNavigationBarItem>[],
      onTap: (index) {},
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
                              children: [Expanded(child: LanguageToogle())])
                        ]),
                      ),
                    )
                  ]),
            ));
      }));
}
