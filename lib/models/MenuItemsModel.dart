import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum MenuItemsEnum { Info, New, Players, Language }

class MenuItem {
  final IconData iconData;
  final String label;
  final MenuItemsEnum code;
  MenuItem(
      {@required this.iconData, @required this.label, @required this.code});
}

class MenuItemsModel extends ChangeNotifier {
  final menuItems = [
    MenuItem(
        iconData: Icons.info_outline, label: 'Info', code: MenuItemsEnum.Info),
    MenuItem(iconData: Icons.add, label: 'New', code: MenuItemsEnum.New),
    MenuItem(
        iconData: Icons.people, label: 'Players', code: MenuItemsEnum.Players),
    MenuItem(
        iconData: Icons.translate,
        label: 'Language',
        code: MenuItemsEnum.Language)
  ];
}
