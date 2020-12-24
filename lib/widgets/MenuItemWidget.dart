import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/LocaleModel.dart';
import 'package:word_by_word_game/models/MenuItemsModel.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';

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
    return Consumer<LocaleModel>(
        builder: (context, localeModel, widget) => Text(
              menuItem.label.getName(localeModel.locale),
              style: TextStyle(
                  fontSize: 10,
                  color: isSelected ? selectedColor : Colors.grey[800]),
            ));
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
