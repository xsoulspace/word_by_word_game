import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/MenuItemsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';
import 'package:word_by_word_game/widgets/InfoWidget.dart';
import 'package:word_by_word_game/widgets/LanguageToggle.dart';
import 'package:word_by_word_game/widgets/MenuItemWidget.dart';
import 'package:word_by_word_game/widgets/PlayerChooser.dart';

class BottomBar extends StatefulWidget {
  final double minHeight;
  BottomBar({@required this.minHeight});
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
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

  openBar() {
    setState(() {
      isClosed = false;
      selectedItemIndex = MenuItemsEnum.Info.index;
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
    var sizeHeight = MediaQuery.of(context).size.height;
    var isKeyboardOpened =
        WidgetsBinding.instance.window.viewInsets.bottom > 0.0;

    return AnimatedSwitcher(
      duration: duration,
      child: isKeyboardOpened && isClosed
          ? Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: openBar,
                child: Icon(Icons.menu),
                backgroundColor: selectedColor,
              ),
            )
          : Material(
              elevation: 4,
              color: Colors.transparent,
              shadowColor: Theme.of(context).shadowColor.withOpacity(0.2),
              child: AnimatedContainer(
                  duration: duration,
                  height: currentHeight,
                  color: isClosed && sizeHeight > 490
                      ? Colors.white.withOpacity(0.4)
                      : Colors.white.withOpacity(0.95),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ...menuItems.map((menuItem) {
                                    var isSelected =
                                        menuItem.id == selectedItemIndex;
                                    return SizedBox(
                                      width: widget.minHeight,
                                      child: MenuItemWidget(
                                          duration: duration,
                                          menuItem: menuItem,
                                          onTap: () {
                                            switch (menuItem.code) {
                                              case MenuItemsEnum.New:
                                                closeBar();
                                                showEndGameDialog(
                                                    context: context);
                                                break;
                                              default:
                                                if (selectedItemIndex ==
                                                    menuItem.id) {
                                                  closeBar();
                                                } else {
                                                  setState(() {
                                                    selectedItemIndex =
                                                        menuItem.id;
                                                    isClosed = false;
                                                  });
                                                }

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
                                                splashColor: selectedColor
                                                    .withOpacity(0.4),
                                                focusColor: selectedColor
                                                    .withOpacity(0.2),
                                                hoverColor: selectedColor
                                                    .withOpacity(0.1),
                                                onTap: () {
                                                  closeBar();
                                                },
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
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
                                    .where(
                                        (item) => item.id == selectedItemIndex)
                                    .toList();
                                if (selectedMenuItems.length == 0)
                                  return Container();
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
                      ]))),
    );
  }
}
