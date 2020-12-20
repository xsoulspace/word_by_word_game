import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum MenuItemsEnum { Info, New, Players, Language }

class MenuItem {
  final int id;
  final IconData iconData;
  final String label;
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
        label: 'Info',
        code: MenuItemsEnum.Info),
    MenuItem(id: 1, iconData: Icons.add, label: 'New', code: MenuItemsEnum.New),
    MenuItem(
        id: 2,
        iconData: Icons.people,
        label: 'Players',
        code: MenuItemsEnum.Players),
    MenuItem(
        id: 3,
        iconData: Icons.translate,
        label: 'Language',
        code: MenuItemsEnum.Language)
  ];
}
