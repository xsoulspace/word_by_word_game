import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:word_by_word_game/entities/LocalName.dart';

enum MenuItemsEnum { Info, New, Players, Language }

class MenuItem {
  final int id;
  final IconData iconData;
  final LocalName label;
  final MenuItemsEnum code;
  MenuItem(
      {@required this.iconData,
      @required this.label,
      @required this.code,
      @required this.id});
}

class MenuItemsModel extends ChangeNotifier {
  final menuItems = [
    MenuItem(
        id: 0,
        iconData: Icons.info_outline,
        label: LocalName(en: 'Info', ru: 'Об игре'),
        code: MenuItemsEnum.Info),
    MenuItem(
        id: 1,
        iconData: Icons.add,
        label: LocalName(en: 'New', ru: 'Заново'),
        code: MenuItemsEnum.New),
    MenuItem(
        id: 2,
        iconData: Icons.people,
        label: LocalName(en: 'Players', ru: 'Игроки'),
        code: MenuItemsEnum.Players),
    MenuItem(
        id: 3,
        iconData: Icons.translate,
        label: LocalName(en: 'Language', ru: 'Язык'),
        code: MenuItemsEnum.Language)
  ];
}
