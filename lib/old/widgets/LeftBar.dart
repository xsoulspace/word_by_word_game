import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/MenuItemsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/shared_widgets/locale_switcher.dart';
import 'package:word_by_word_game/widgets/EndGameDialog.dart';
import 'package:word_by_word_game/widgets/InfoWidget.dart';
import 'package:word_by_word_game/widgets/MenuItemWidget.dart';
import 'package:word_by_word_game/widgets/PlayerChooser.dart';

class LeftBar extends StatefulWidget {
  final double minWidth;
  LeftBar({required this.minWidth});
  @override
  _LeftBarState createState() => _LeftBarState();
}

class _LeftBarState extends State<LeftBar> {
  bool isClosed = true;

  final double widthExpanded = 330;
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
        shadowColor: Theme.of(context).shadowColor.withOpacity(0.2),
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
                        var selectedMenuItems = menuItems
                            .where((item) => item.id == counter)
                            .toList();
                        if (selectedMenuItems.length == 0) return Container();
                        var menuItem = selectedMenuItems.first;

                        var isSelected = counter == selectedItemIndex;
                        return MenuItemWidget(
                            duration: duration,
                            menuItem: menuItem,
                            onTap: () {
                              switch (menuItem.code) {
                                case MenuItemsEnum.New:
                                  closeBar();
                                  showEndGameDialog(context: context);
                                  break;
                                default:
                                  if (selectedItemIndex == counter) {
                                    closeBar();
                                  } else {
                                    setState(() {
                                      selectedItemIndex = counter;
                                      isClosed = false;
                                    });
                                  }
                                  break;
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
                                          Expanded(child: LocaleSwitcher())
                                        ])
                                  ];
                                default:
                                  break;
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
                        size: widget.minWidth,
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
